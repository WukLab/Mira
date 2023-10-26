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
#define GEN_PASS_DEF_RMEMLOOPRINGCACHE
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
    DenseMap<Operation*, Value> innerBase;
    DenseMap<Operation*, RingCache> caches;
    unsigned maxDistance;
    unsigned perBlock;
    Value lim; // upper - lower
    Value tlim; // (lim + pb - 1) / pb
  };
  
public:
  ForLoopPrefetchInternal(scf::ForOp loop, OpBuilder &rewriter, WorkloadComplexityAnalyzer &analyzer, RemoteMemTypeLowerer &typeConverter, std::unordered_map<int, mlir::rmem::Cache*> &caches, unsigned prefDist): 
  loop(loop), rewriter(rewriter), loopInternal(0), analyzer(analyzer), typeConverter(typeConverter), caches(caches), prefDist(prefDist) {}

  static bool is_prefetch_target(const Operation& op) {
    return isa<rmem::StoreOp, rmem::LoadOp>(op);
  }

  // TODO: filter with predicates
  bool preparePrefetches() {
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
      if (pattern.perBlock == UINT_MAX)
        pattern.perBlock = num_ele_per_line;
      else
        assert(pattern.perBlock == num_ele_per_line && "num eles in each block should be the same");
    }

    mlir::Location loc = loop.getLoc();
    rewriter.setInsertionPoint(loop);

    Value limIdx = rewriter.create<arith::SubIOp>(loc, 
      loop.getUpperBound(),
      loop.getLowerBound()
    );
    // lim = for.high - for.low
    pattern.lim = rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), limIdx);
    // tlim = (lim + bn - 1) / bn
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

  void emitRingInit(Operation *op) {
    ModuleOp mop = op->getParentOfType<ModuleOp>(); 
    rewriter.setInsertionPoint(loop);

    Value disaggAddr = getAddrByInduction(op, loop.getLowerBound());
    auto vaddrType = disaggAddr.getType().cast<RemoteMemRefType>();
    unsigned cache_id = vaddrType.getCanRemote();
    auto cache = this->caches[cache_id];

    mlir::Location loc = loop.getLoc();

    // set remote offset
    mlir::Value rbase = rewriter.create<arith::ConstantIntOp>(loc, cache->raddr_off, 64);
    // laddr_base = _rbuf + lofst
    // get _rbuf
    mlir::Value _rbuf_base = rewriter.create<LLVM::PtrToIntOp>(loc, rewriter.getI64Type(),
      rewriter.create<LLVM::LoadOp>(loc, 
        rewriter.create<LLVM::AddressOfOp>(loc, rmem::getOrCreateRbuf(mop))));
    // get laddr_base
    mlir::Value lbase = rewriter.create<arith::AddIOp>(loc, 
      _rbuf_base,
      rewriter.create<arith::ConstantIntOp>(loc, cache->laddr_off, rewriter.getI64Type())
    );

    RingCache ring(
      cache->line_size, /*block size in bytes*/
      cache->slots, /* num_blocks */
      vaddrType, /* remote memref type */
      pattern.perBlock, /* eles in block */
      lbase, rbase);

    // initialize r & s
    Value r = rewriter.create<LLVM::AllocaOp>(loc, 
      LLVM::LLVMPointerType::get(loop.getContext(), rewriter.getI64Type(), 0 /*addr space*/),
      rewriter.create<arith::ConstantIntOp>(loc, 1, 64), 0 /* alignment */
    );
    Value s = rewriter.create<LLVM::AllocaOp>(loc, 
      LLVM::LLVMPointerType::get(loop.getContext(), rewriter.getI64Type(), 0),
      rewriter.create<arith::ConstantIntOp>(loc, 1, 64), 0
    );
    ring.readID = r;
    ring.writeID = s;
    pattern.caches[op] = ring;
  }

  // Only consider load for now
  void emitPrologue(Operation *op, bool last) {
    rewriter.setInsertionPoint(loop);
    mlir::Location loc = op->getLoc();

    // populate prologue prefetches
    auto prologue = rewriter.create<scf::ForOp>(loc, 
      rewriter.create<arith::ConstantIndexOp>(loc, 0),
      rewriter.create<arith::ConstantIndexOp>(loc, pattern.distances[op]), 
      rewriter.create<arith::ConstantIndexOp>(loc, 1)
    );
    rewriter.setInsertionPointToStart(prologue.getBody());
    // rdma(_lbase_rvec + (i % _nblocks_rvec) * _bsize_rvec,
    //      _bsize_rvec, 
    //      _rbase_rvec + i * _bsize_rvec, 0, IBV_WR_RDMA_READ);
    Value i_i64 = rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), prologue.getInductionVar());
    Value localIdx = rewriter.create<arith::RemSIOp>(loc, 
      i_i64,
      rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].nBlocks, 64)
    );
    Value blockSize = rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].blockSize, 64);
    Value laddr = rewriter.create<arith::AddIOp>(loc, 
      pattern.caches[op].lbase,
      rewriter.create<arith::MulIOp>(loc, localIdx, blockSize)
    );
    Value raddr = rewriter.create<arith::AddIOp>(loc,
      pattern.caches[op].rbase,
      rewriter.create<arith::MulIOp>(loc, i_i64, blockSize)
    );
    Value opCode = rewriter.create<arith::ConstantIntOp>(loc, IBV_WR_RDMA_READ, 32);
    // call rdma post work request
    ModuleOp m = loop->getParentOfType<ModuleOp>();
    LLVM::LLVMFuncOp rdma = rmem::lookupOrCreateRDMAFn(m);
    Value syncId = rewriter.create<arith::ConstantIntOp>(loc, 0, 64);
    if (last) {
      syncId = rewriter.create<arith::AddIOp>(loc, i_i64, rewriter.create<arith::ConstantIntOp>(loc, 1, 64));
    } 
    rmem::createLLVMCall(rewriter, loc, rdma, {laddr, blockSize, raddr, syncId, opCode});
  }

  void emitOuterLoop() {
    mlir::Location loc = loop.getLoc();
    rewriter.setInsertionPoint(loop);

    // set read/write id to 0
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      rewriter.create<LLVM::StoreOp>(loc, rewriter.create<arith::ConstantIntOp>(loc, 0, 64), pattern.caches[target].readID);
      rewriter.create<LLVM::StoreOp>(loc, rewriter.create<arith::ConstantIntOp>(loc, 0, 64), pattern.caches[target].writeID);
    }

    outerLoop = rewriter.create<scf::ForOp>(loc, 
      rewriter.create<arith::ConstantOp>(loc, rewriter.getIndexType(), rewriter.getIndexAttr(0)),
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getIndexType(), pattern.tlim),
      rewriter.create<arith::ConstantOp>(loc, rewriter.getIndexType(), rewriter.getIndexAttr(1))
    );

    rewriter.setInsertionPointToStart(outerLoop.getBody());
  }

  // prefetch instrs
  // if (_t_rids + n_ahead < _tlim_rids) {
  //   size_t _ip = (_t_rids + n_ahead);
  //   rdma(_lbase_rvec + (_ip % _nblocks_rvec) * _bsize_rvec,
  //       _bsize_rvec, 
  //       _rbase_rvec + _ip * _bsize_rvec, 0, IBV_WR_RDMA_READ);
  //   rdma(_lbase_rids + (_ip % _nblocks_rids) * _bsize_rids,
  //       _bsize_rids, 
  //       _rbase_rids + _ip * _bsize_rids, _ip + 1, IBV_WR_RDMA_READ);
  // }
  void emitPrefetches(Operation *op) {
    mlir::Location loc = loop.getLoc();
    // _t_rids + n_ahead
    Value tPre = rewriter.create<arith::AddIOp>(loc, 
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()),
      rewriter.create<arith::ConstantIntOp>(loc, pattern.distances[op], 64)
    );
    
    // if _t_rids + nahead < _tlim_rids
    Value sltTLim = rewriter.create<arith::CmpIOp>(loc, arith::CmpIPredicate::slt, tPre, pattern.tlim);
    auto inBound = rewriter.create<scf::IfOp>(loc, sltTLim, false);
    rewriter.setInsertionPointToStart(inBound.thenBlock());

    Value blockSize = rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].blockSize, 64);
    // local_slot = (_t_rids + ahead) % _nblocks
    Value slotOfst = rewriter.create<arith::RemSIOp>(loc, 
        tPre, rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].nBlocks, 64));
    Value laddr = rewriter.create<arith::AddIOp>(loc, 
      pattern.caches[op].lbase, rewriter.create<arith::MulIOp>(loc, slotOfst, blockSize));
    // remote_addr = rbase + (_t_rids + ahead) * bsize
    Value raddr = rewriter.create<arith::AddIOp>(loc,
      pattern.caches[op].rbase,
      rewriter.create<arith::MulIOp>(loc, tPre, blockSize)
    );

    Value opCode = rewriter.create<arith::ConstantIntOp>(loc, IBV_WR_RDMA_READ, 32);

    // call rdma post work request
    ModuleOp m = loop->getParentOfType<ModuleOp>();
    LLVM::LLVMFuncOp rdma = rmem::lookupOrCreateRDMAFn(m);
    // syncId = (_t_rids + n_ahead + 1)
    Value syncId = rewriter.create<arith::AddIOp>(loc, rewriter.create<arith::ConstantIntOp>(loc, 1, 64), tPre);
    rmem::createLLVMCall(rewriter, loc, rdma, {laddr, blockSize, raddr, syncId, opCode});
    rewriter.setInsertionPointAfter(inBound);
  }

  // set rewriter to the right position before calling this
  // T * _inner_##rn = (T *)(_lbase_##rn + (_t_##rn % _nblocks_##rn) * _bsize_##rn)
  void emitInnerPreLoop(Operation *op) {
    mlir::Location loc = loop.getLoc();
    Value innerAddr = rewriter.create<rmem::IntToPtrOp>(loc, 
      pattern.caches[op].vaddrType.getElementType(),
      rewriter.create<arith::AddIOp>(loc, 
        pattern.caches[op].lbase,
        rewriter.create<arith::MulIOp>(loc, 
          rewriter.create<arith::RemSIOp>(loc, 
            rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()),
            rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].nBlocks, 64)
          ),
          rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].blockSize, 64)
        )
      )
    );
    pattern.innerBase[op] = innerAddr;
  }

  void emitInnerLoop() {
    // calculate inner limit
    // size_t _ilim_##rn = _lim_##rn > (_t_##rn + 1) * _bn_##rn ? \
    //                     _bn_##rn : _lim_##rn - _t_##rn * _bn_##rn;
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

    // forward iter args to inner loop
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
      Type ptrTy = addr_dfs.first.getType().cast<RemoteMemRefType>().getElementType();
      Value newAddr = rewriter.create<rmem::GEPOp>(loc, 
        ptrTy, pattern.innerBase[target], 
        rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), innerLoop.getInductionVar()).getResult(),
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
    ModuleOp m = loop->getParentOfType<ModuleOp>();
    mlir::Location loc = loop.getLoc();
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      emitRingInit(target);
    }
    for (auto it = pattern.prefetches.begin(); it != pattern.prefetches.end();) {
      emitPrologue(it->first, ++it == pattern.prefetches.end());
    }
    emitOuterLoop();
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      emitPrefetches(target);
    }
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      emitInnerPreLoop(target);
    }

    // add ring sync
    auto rrSync = rmem::lookupOrCreateRRingSync(m);
    Value syncId = rewriter.create<arith::AddIOp>(loc, 
      rewriter.create<arith::ConstantIntOp>(loc, 1, 64),
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar())
    );
    rmem::createLLVMCall(rewriter, loc, rrSync, 
      {pattern.caches[std::prev(pattern.prefetches.end())->first].readID, syncId});

    // Inner loop
    emitInnerLoop();

    loop.erase();
    // m.dump();
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

class RMEMLoopRingCache : public impl::RMEMLoopRingCacheBase <RMEMLoopRingCache> {

  void runOnOperation() override {
    ModuleOp op = getOperation();
    MLIRContext *ctx = op.getContext();
    RemoteMemTypeLowerer typeConverter(ctx);

    OpBuilder ob(op);
    WorkloadComplexityAnalyzer internalAnalyzer;
    unsigned dist = prefDist;

    // initialize caches
    std::string cfgPath = cacheCFG;
    std::unordered_map<int, mlir::rmem::Cache*> caches;
    mlir::rmem::readCachesFromFile(caches, cfgPath);

    // Populate worklist
    std::vector<ForLoopPrefetchInternal> workList;
    op.walk([&](scf::ForOp loop) {
      workList.push_back(ForLoopPrefetchInternal(loop, ob, internalAnalyzer, typeConverter, caches, dist));
    });

    for (auto PI : workList) {
      if (PI.preparePrefetches()) {
        PI.emitKernel();
        PI.inspectMeta();
      }
    }
  }
};

}

std::unique_ptr<Pass> mlir::createRemoteMemLoopRingCachePass() {
  return std::make_unique<RMEMLoopRingCache>();
}