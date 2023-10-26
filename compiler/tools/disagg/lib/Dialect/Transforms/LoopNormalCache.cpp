#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "Dialect/WorkloadAnalysis.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "llvm/Support/TypeName.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Support/MathExtras.h"
#include <set>
#include <vector>
#include <tuple>

namespace mlir {
#define GEN_PASS_DEF_RMEMLOOPNORMALCACHE
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;
using namespace mlir::scf;

namespace {
class ForLoopPrefetchInternal {
  struct LoopMeta {
  public:
    LoopMeta(): maxDistance(0), perBlock(0) {}

    void inspectPrefetches() {
      for (auto & [target, addr_dfs] : prefetches) {
        llvm::errs() << "load/store: \n";
        target->dump();
        llvm::errs() << "dfs: \n";
        for (const auto &instr : addr_dfs.second) {
          instr->dump();
        }
        llvm::errs() << "distance: " << distances[target] << "\n";
      }
    }

    // prefetches map {load/store: (addr, set{ dfs } )}
    DenseMap<Operation*, std::pair<Value, std::set<Operation*>>> prefetches;
    DenseMap<Operation*, unsigned> distances;
    DenseMap<Operation*, unsigned> _h;
    DenseMap<Operation*, Value> _oh;
    DenseMap<Operation*, Value> innerBase;
    DenseMap<Operation*, RingCache> caches;
    DenseMap<Operation*, Value> offsetIds;
    DenseMap<Operation*, std::tuple<Value, unsigned>> syncMetas;

    unsigned maxDistance;
    unsigned perBlock;
    Value lim; // upper - lower
    Value tlim; // (lim + pb - 1) / pb
  };
  
public:
  ForLoopPrefetchInternal(scf::ForOp loop, OpBuilder &rewriter, WorkloadComplexityAnalyzer &analyzer, RemoteMemTypeLowerer &typeConverter,     std::unordered_map<int, mlir::rmem::Cache*> &caches, unsigned prefDist): 
  loop(loop), rewriter(rewriter), loopInternal(0), analyzer(analyzer), typeConverter(typeConverter), caches(caches), prefDist(prefDist) {}

  static bool is_prefetch_target(Operation& op) {
    auto is_v = rmem::isRemoteAccess(&op);
    return is_v.first;
  }

  // TODO: filter with predicates
  // calculate prefetch distance
  bool preparePrefetches() {
    // estimate loop workload
    // unsigned loopInterval = analyzer.visitBlock(loop.getBody());
    unsigned loopInterval = 100;

    // incase we want to handle call or other complex ops
    // in address computation
    auto dfsComplexity = [&](const std::set<Operation *> &dfs) {
      unsigned c = 0;
      for (auto const &op : dfs) {
        c += analyzer.visitOperation(op);
        if (c >= WorkloadComplexityAnalyzer::uncertain)
          return WorkloadComplexityAnalyzer::uncertain;
      }
      return c;
    };

    auto checkDFS = [&](const std::set<Operation *> &dfs, Operation *t) {
      if (!dfs.size()) 
        return false;
      for (auto op : dfs) {
        if (is_prefetch_target(*op)) 
          return false;
      }
      return true;
    };
    // get addr instructions
    // only dfs that involve induction var and within the current loop
    // will be valid
    for (auto &op : loop.getBody()->getOperations()) {
      auto rp = rmem::isRemoteAccess(&op);
      if (rp.first) {
        auto dfs = newAddrPathDFS(rp.second);
        if (checkDFS(dfs, &op)) {
          // unsigned DC = dfsComplexity(dfs);
          // TODO: if DC > Data movement, cancel prefetch
          // Not likely
          pattern.prefetches[&op] = std::pair(rp.second, dfs);
          // distances[&op] = ceilDiv(2000, DC + loopInterval);
          pattern.distances[&op] = this->prefDist;
          pattern.maxDistance = std::max(pattern.maxDistance, pattern.distances[&op]);
        }
      }
    }

    // set block size
    pattern.perBlock = UINT_MAX;
    for (auto &[op, addr_dfs] : pattern.prefetches) {
      Value disaggAddr = addr_dfs.first;
      // get ele size
      Type eleType = rmem::getEleTypeFromRemoteMemRef(disaggAddr.getType().cast<RemoteMemRefType>());
      Type rawEleType = typeConverter.convertType(eleType);
      size_t eleSize = 0;
      if (rawEleType.isa<IntegerType, FloatType>() || LLVM::isCompatibleType(rawEleType)) {
        DataLayout DLI(op->getParentOfType<ModuleOp>());
        eleSize = DLI.getTypeSize(rawEleType);
      }
      if (eleSize == 0) {
        llvm::errs() << "cannot determine element size statically\n" ;
      }

      // TODO: statical cache id info needed
      unsigned cache_id = disaggAddr.getType().cast<RemoteMemRefType>().getCanRemote();
      if (caches[cache_id]->line_size % eleSize != 0) {
        llvm::errs() << "line size should be divisible by elesize: " << caches[cache_id]->line_size << ", " << eleSize << "\n";
        rawEleType.dump();
        exit(1);
      }
      unsigned num_ele_per_line = caches[cache_id]->line_size / eleSize;
      pattern.perBlock = std::min(pattern.perBlock, num_ele_per_line);
    }

    mlir::Location loc = loop.getLoc();
    rewriter.setInsertionPoint(loop);

    Value limIdx = rewriter.create<arith::SubIOp>(loc, 
      loop.getUpperBound(),
      loop.getLowerBound()
    ); 
    pattern.lim = rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), limIdx);
    pattern.tlim = rewriter.create<arith::DivSIOp>(loc, 
      rewriter.create<arith::AddIOp>(loc, 
        pattern.lim,
        rewriter.create<arith::ConstantIntOp>(loc, pattern.perBlock - 1, 64)
      ),
      rewriter.create<arith::ConstantIntOp>(loc, pattern.perBlock, 64)
    );

    if (pattern.prefetches.empty())
      return false;

    return true;
  }

  // set builder to correct position before calling this
  // prefOfst: index 
  // slotOfst: i32
  // request returns token offset, store to offset[slotofst]
  void emitCacheRequest(Operation *op, unsigned cache_id, Value prefOfst, Value slotOfst, mlir::Location loc) {
    Value vaddr = getAddrByInduction(op, prefOfst);
    Value ofst_id = rewriter.create<rmem::RequestOp>(loc, 
      rewriter.getI32Type(),
      vaddr,
      rewriter.getI32IntegerAttr(cache_id)
    );
    Value offsets = pattern.offsetIds[op];
    Value pref_ofst_slot = rewriter.create<LLVM::GEPOp>(loc, 
      offsets.getType(), offsets.getType(), offsets,
      rewriter.create<arith::ExtSIOp>(loc, rewriter.getI64Type(), slotOfst).getResult()
    );
    rewriter.create<LLVM::StoreOp>(loc, ofst_id, pref_ofst_slot);
  }

  void emitPrologue(Operation *op) {
    rewriter.setInsertionPoint(loop);
    mlir::Location loc = op->getLoc();
    Value disaggAddr = pattern.prefetches[op].first;
    unsigned cache_id = disaggAddr.getType().cast<RemoteMemRefType>().getCanRemote();

    // ring for offset id
    // offset[head + 1]: ptr<i32>
    Value offsets = rewriter.create<LLVM::AllocaOp>(loc, 
      LLVM::LLVMPointerType::get(loop.getContext(), rewriter.getI32Type(), 0),
      rewriter.create<arith::ConstantIntOp>(loc, pattern.distances[op]+1, 32), 0
    ); 
    pattern.offsetIds[op] = offsets;
    // populate prologue prefetches
    auto prologue = rewriter.create<scf::ForOp>(loc, 
      rewriter.create<arith::ConstantIndexOp>(loc, 0),
      rewriter.create<arith::ConstantIndexOp>(loc, pattern.distances[op]), 
      rewriter.create<arith::ConstantIndexOp>(loc, 1)
    );
    rewriter.setInsertionPointToStart(prologue.getBody());
    // offsets[i] = cache.request(dfs(i * num_eles_per_line));
    Value prefOfst = rewriter.create<arith::MulIOp>(loc,
        prologue.getInductionVar(),
        rewriter.create<arith::ConstantIndexOp>(loc, pattern.perBlock));
    Value slotOfst = rewriter.create<arith::IndexCastOp>(loc, rewriter.getI32Type(), prologue.getInductionVar());
    emitCacheRequest(op, cache_id, prefOfst, slotOfst, loc);
  }

  void emitOuterLoop() {
    mlir::Location loc = loop.getLoc();
    rewriter.setInsertionPoint(loop);
    outerLoop = rewriter.create<scf::ForOp>(loc, 
      rewriter.create<arith::ConstantIndexOp>(loc, 0),
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getIndexType(), pattern.tlim),
      rewriter.create<arith::ConstantIndexOp>(loc, 1)
    );
  }

  scf::IfOp emitPrefetches(Operation *op) {
    mlir::Location loc = loop.getLoc();
    // j + n_ahead
    Value tPre = rewriter.create<arith::AddIOp>(loc, 
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()),
      rewriter.create<arith::ConstantIntOp>(loc, pattern.distances[op], 64)
    );
    // if j + nahead < n_blocks
    Value sltTLim = rewriter.create<arith::CmpIOp>(loc, arith::CmpIPredicate::slt, tPre, pattern.tlim);
    auto inBound = rewriter.create<scf::IfOp>(loc, sltTLim, false);
    rewriter.setInsertionPointToStart(inBound.thenBlock()); 
    // pref_slot = (j + ahead) % (ahead + 1)
    Value slotOfst = rewriter.create<arith::TruncIOp>(loc, rewriter.getI32Type(), 
      rewriter.create<arith::RemSIOp>(loc, 
        tPre, rewriter.create<arith::ConstantIntOp>(loc, pattern.distances[op] + 1, 64))
    );
    Value prefOfst = rewriter.create<arith::MulIOp>(loc,
        rewriter.create<arith::IndexCastOp>(loc, rewriter.getIndexType(), tPre),
        rewriter.create<arith::ConstantIndexOp>(loc, pattern.perBlock));
    Value disaggAddr = pattern.prefetches[op].first;
    unsigned cache_id = disaggAddr.getType().cast<RemoteMemRefType>().getCanRemote();
    emitCacheRequest(op, cache_id, prefOfst, slotOfst, loc);
    return inBound;
    // rewriter.setInsertionPointAfter(inBound);
  }

  // set rewriter to the right position before calling this
  // get raw pointer
  // Only sync the last prefetch, so only meta of last sync
  // is needed
  void emitInnerPreLoop(Operation *op) {
    mlir::Location loc = loop.getLoc();
    Value baseOfst = rewriter.create<arith::MulIOp>(loc, 
      outerLoop.getInductionVar(),
      rewriter.create<arith::ConstantIndexOp>(loc, pattern.perBlock));
    Value disaggAddr = getAddrByInduction(op, baseOfst);
    unsigned cache_id = disaggAddr.getType().cast<RemoteMemRefType>().getCanRemote(); 
    unsigned access_type = isa<rmem::LoadOp>(op) ? 0 : 1;

    // int idx = j % (n_ahead + 1);
    Value slotIdx = rewriter.create<arith::RemSIOp>(loc, 
        rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()),
        rewriter.create<arith::ConstantIntOp>(loc, pattern.distances[op] + 1, 64)); 
    Value offsets = pattern.offsetIds[op];
    Value slotOfst = rewriter.create<LLVM::LoadOp>(loc, 
      rewriter.create<LLVM::GEPOp>(loc, offsets.getType(), offsets, slotIdx)
    );

    // get raw base pointer
    Value innerAddr = rewriter.create<rmem::PaddrOp>(loc, 
      disaggAddr.getType().cast<rmem::RemoteMemRefType>().getElementType(),
      slotOfst, disaggAddr, rewriter.getI32IntegerAttr(cache_id)
    );
    pattern.innerBase[op] = innerAddr;

    // if mut, add dirty
    if (access_type) {
      ModuleOp mop = op->getParentOfType<ModuleOp>(); 
      Value pToken = caches[cache_id]->token(rewriter, mop, slotOfst, loc);
      Token::add(rewriter, pToken, Token::Dirty, loc);
    }

    pattern.syncMetas[op] = std::make_tuple(slotOfst, cache_id);
  }

  // for( int i = 0; i < eles; i++ ) {
  //     arc_t *arci = p + i;
  //     node_t *node_head = C1R::get_mut<node_t,3,4>(arci->head);
  //     arci->nextin = node_head->firstin;
  //     node_head->firstin = arc + j * eles + i;
  //     computation(arci, node_head);
  // }

  void emitInnerLoop() {
    // calculate inner limit
    mlir::Location loc = loop.getLoc();
    Value PB = rewriter.create<arith::ConstantIntOp>(loc, pattern.perBlock, 64);
    Value outOfBound = rewriter.create<arith::CmpIOp>(loc, arith::CmpIPredicate::sgt, 
      pattern.lim,
      rewriter.create<arith::MulIOp>(loc, 
        rewriter.create<arith::AddIOp>(loc, 
          rewriter.create<arith::ConstantIntOp>(loc, 1, 64), 
          rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar())), 
        PB)
    );

    scf::IfOp limCond = rewriter.create<scf::IfOp>(loc, rewriter.getI64Type(), outOfBound, true);
    rewriter.setInsertionPointToStart(limCond.thenBlock());
    rewriter.create<scf::YieldOp>(loc, PB);

    rewriter.setInsertionPointToStart(limCond.elseBlock());
    Value within = rewriter.create<arith::SubIOp>(loc, 
      pattern.lim,
      rewriter.create<arith::MulIOp>(loc, 
        rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()), 
        rewriter.create<arith::ConstantIntOp>(loc, pattern.perBlock, 64))
    );
    rewriter.create<scf::YieldOp>(loc, within);

    rewriter.setInsertionPointAfter(limCond);
    Value ofst = rewriter.create<arith::MulIOp>(loc, 
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()),
      PB
    );

    innerLoop = rewriter.create<scf::ForOp>(loc, 
      rewriter.create<arith::ConstantIndexOp>(loc, 0),
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getIndexType(), limCond.getResult(0)),
      rewriter.create<arith::ConstantIndexOp>(loc, 1),
      loop.getIterOperands()
    );

    innerLoop.getBodyRegion().takeBody(loop.getBodyRegion());
    rewriter.setInsertionPointToStart(innerLoop.getBody());
    auto innerInduction = rewriter.create<arith::AddIOp>(loc, 
      innerLoop.getInductionVar(),
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getIndexType(), ofst)
    );
    innerLoop.getInductionVar().replaceAllUsesExcept(innerInduction, innerInduction);

    for (auto &[target, addr_dfs] : pattern.prefetches) {
      // Type ptrTy = LLVM::LLVMPointerType::get(innerLoop.getContext(), pattern.caches[target].eleType, 0);
      Type ptrTy = addr_dfs.first.getType().cast<RemoteMemRefType>().getElementType();
      Value newAddr = rewriter.create<rmem::GEPOp>(loc, 
        ptrTy, pattern.innerBase[target], rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), innerLoop.getInductionVar()).getResult(),
        rewriter.getDenseI32ArrayAttr({}),
        TypeAttr::get(rmem::getEleTypeFromRemoteMemRef(addr_dfs.first.getType().cast<RemoteMemRefType>()))
      );
      // make it a fake rmeref to resolve type conflicts
      Type castTo = RemoteMemRefType::get(ptrTy, 0);
      newAddr = rewriter.create<rmem::FromAddressOp>(loc, castTo, newAddr);
      addr_dfs.first.replaceAllUsesWith(newAddr);
    }
  }

  void emitKernel() {
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      emitPrologue(target);
    }

    emitOuterLoop();
    Operation *lastPref = nullptr;
    rewriter.setInsertionPointToStart(outerLoop.getBody());
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      auto inBound = emitPrefetches(target);
      lastPref = target;
      rewriter.setInsertionPointAfter(inBound);
    }
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      emitInnerPreLoop(target);
    }
    // sync last pref only
    if (lastPref) {
      auto [slotOfst, cache_id] = pattern.syncMetas[lastPref];
      rewriter.create<rmem::PollReqOp>(lastPref->getLoc(), 
        slotOfst, rewriter.getI32IntegerAttr(cache_id)
      );
    }

    emitInnerLoop();
    loop.erase();
  }

  void inspectMeta() {
    this->pattern.inspectPrefetches();
  }

protected:
  unsigned rbufOfst = 4096;
  scf::ForOp loop;
  OpBuilder &rewriter;
  unsigned loopInternal;
  WorkloadComplexityAnalyzer &analyzer;
  RemoteMemTypeLowerer &typeConverter;
  std::unordered_map<int, mlir::rmem::Cache*> &caches;
  unsigned prefDist;

  LoopMeta pattern;
  scf::ForOp outerLoop;
  scf::ForOp innerLoop;
  
  std::set<Operation *> newAddrPathDFS(Value raddr) {
    Operation *def = raddr.getDefiningOp();
    return addrPathDFS(def);
  }

  std::set<Operation *> addrPathDFS(Operation *op) {
    std::set<Operation *> search;
    for (OpOperand &opd : op->getOpOperands()) {
      if (opd.get() == loop.getInductionVar())
        search.insert(op);
      else {
        Operation *def = opd.get().getDefiningOp();
        if (def && def->getBlock() == loop.getBody()) {
          auto dfs = addrPathDFS(def);
          if (dfs.size()) {
            dfs.insert(op);
            search.merge(dfs);
          }
        }
      }
    }
    return search;
  }

  Operation *cloneAndMapOperands(Operation* op, DenseMap<Value, Value> &valueMapping) {
    std::function<void(OpOperand *)> mapping = [&](OpOperand *newOpd) {
      auto it = valueMapping.find(newOpd->get());
      if (it != valueMapping.end()) {
        newOpd->set(it->second);
      }
    };
    Operation *clone = rewriter.clone(*op);
    for (OpOperand &opd : clone->getOpOperands())
      mapping(&opd);

    clone->walk([&](Operation *within) {
      for (OpOperand &opd : within->getOpOperands()) {
        Operation *def = opd.get().getDefiningOp();
        if (def && !clone->isAncestor(def))
          mapping(&opd);
      }
    });
    return clone;
  }

  // set rewriter to the correct position before calling this
  // calculate the access address for "target" given the induction variable "phi"
  Value getAddrByInduction(Operation* target, Value phi) {
    DenseMap<Value, Value> valueMapping;
    // initialize induction variable mapping
    valueMapping[loop.getInductionVar()] = phi;
    const auto &[addr, dfs] = pattern.prefetches[target];
    for (Operation *op : dfs) {
      Operation *newOp = cloneAndMapOperands(op, valueMapping);
      for (unsigned i : llvm::seq(unsigned(0), op->getNumResults())) {
        valueMapping[op->getResult(i)] = newOp->getResult(i);
      }
    }
    return valueMapping[addr];
  }

};

}

namespace {

class RMEMLoopNormalCache : public impl::RMEMLoopNormalCacheBase <RMEMLoopNormalCache> {

  void runOnOperation() override {
    unsigned dist = prefDist;
    if (dist == 0)
      return;

    ModuleOp op = getOperation();
    MLIRContext *ctx = op.getContext();
    RemoteMemTypeLowerer typeConverter(ctx);

    // initialize caches
    std::string cfgPath = cacheCFG;
    std::unordered_map<int, mlir::rmem::Cache*> caches;
    mlir::rmem::readCachesFromFile(caches, cfgPath);

    OpBuilder ob(op);
    WorkloadComplexityAnalyzer internalAnalyzer;

    // Populate worklist
    std::vector<ForLoopPrefetchInternal> workList;
    op.walk([&](scf::ForOp loop) {
      workList.push_back(ForLoopPrefetchInternal(loop, ob, internalAnalyzer, typeConverter, caches, dist));
    });

    for (auto PI : workList) {
      if (PI.preparePrefetches()) {
        PI.inspectMeta();
        PI.emitKernel();
      }
    }
  }
};

}

std::unique_ptr<Pass> mlir::createRemoteMemLoopNormalCachePass() {
  return std::make_unique<RMEMLoopNormalCache>();
}