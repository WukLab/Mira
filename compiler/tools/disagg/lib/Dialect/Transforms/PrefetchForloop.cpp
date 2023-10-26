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
#include "llvm/Support/TypeName.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Support/MathExtras.h"
#include <set>

namespace mlir {
#define GEN_PASS_DEF_RMEMFORLOOPPREFETCH
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;
using namespace mlir::scf;

namespace {
class ForLoopPrefetchInternal {

public:
  ForLoopPrefetchInternal(scf::ForOp loop, PatternRewriter &rewriter, WorkloadComplexityAnalyzer &analyzer): 
  loop(loop), rewriter(rewriter), loopInternal(0), analyzer(analyzer) {
  }

  static bool is_prefetch_target(const Operation& op) {
    // add materializeOp
    if (rmem::StoreOp sop = dyn_cast<rmem::StoreOp>(op)) {
      return rmem::isTrueRemoteRef(sop.getAddr().getType());
    }
    if (rmem::LoadOp lop = dyn_cast<rmem::LoadOp>(op)) {
      return rmem::isTrueRemoteRef(lop.getAddr().getType());
    }
    return false;
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
    // get addr instructions
    for (auto &op : loop.getBody()->getOperations()) {
      if (is_prefetch_target(op)) {
        auto dfs = addrPathDFS(&op);
        if (dfs.size()) {
          // leave addr computation only
          dfs.erase(&op);
          unsigned DC = dfsComplexity(dfs);

          Value addr;
          if (auto load = dyn_cast<rmem::LoadOp>(op)) {
            addr = load.getAddr();
          }
          if (auto store = dyn_cast<rmem::StoreOp>(op)) {
            addr = store.getAddr();
          }
          // TODO: if DC > Data movement, cancel prefetch
          // Not likely
          prefetches[&op] = std::pair(addr, dfs);
          // distances[&op] = ceilDiv(2000, DC + loopInterval);
          distances[&op] = 1;
          maxDistance = std::max(maxDistance, distances[&op]);
        }
      }
    }
    if (prefetches.empty())
      return false;
    return true;
  }

  void emitKernel() {
    ModuleOp m = loop->getParentOfType<ModuleOp>();
    auto channelDestroyOp = lookupOrCreateChannelDestroyFn(m);
    mlir::Location loc = loop.getLoc();
    // emit clone
    for (auto &[target, addr_dfs] : prefetches) {
      unsigned ahead = distances[target];
      // get base addr
      rewriter.setInsertionPoint(loop);
      Value baseAddr = getAddrByInduction(target, loop.getLowerBound());
      // channel reservation and prologue
      Type rawType = baseAddr.getType().cast<RemoteMemRefType>().getElementType();
      Type eleType;// can still contain remote memref
      if (auto ptrType = rawType.dyn_cast<LLVM::LLVMPointerType>()) 
        eleType = ptrType.getElementType(); 
      else
        eleType = rawType.cast<MemRefType>().getElementType();
      Value typeSize = rewriter.create<rmem::SizeOfOp>(loc, rewriter.getI32Type(), eleType); // i32
      Value oriSize = rewriter.create<rmem::SizeOfOp>(loc, rewriter.getI64Type(), eleType); // i64
      Value batch = rewriter.create<arith::CeilDivUIOp>(loc, 
        rewriter.create<arith::ConstantIntOp>(loc, 512, 32),
        typeSize
      ); // i32
      Value dist = rewriter.create<arith::ConstantIntOp>(loc, ahead, 32);
      Value numSlots = rewriter.create<arith::AddIOp>(loc, batch, dist);
      Value asmId = rewriter.create<arith::ConstantIntOp>(loc, 0, 16);
      Value kind;
      if (isa<rmem::LoadOp>(target)) {
        kind = rewriter.create<arith::ConstantIntOp>(loc, 0, 32);
      } else {
        kind = rewriter.create<arith::ConstantIntOp>(loc, 1, 32);
      }
      mlir::Value channel = rewriter.create<rmem::ChannelCreateOp>(loc, 
        rewriter.getI32Type(), 
        baseAddr, loop.getUpperBound(), oriSize,
        typeSize, numSlots, batch, dist, 
        asmId, kind
      );

      Type castTo = addr_dfs.first.getType();
      // if is true remote, make it a fake one
      if (auto rmrefType = castTo.dyn_cast<RemoteMemRefType>())
        castTo = RemoteMemRefType::get(rmrefType.getElementType(), 0);
      rewriter.setInsertionPoint(target);
      // replace target with channel access
      Value newAddr = rewriter.create<rmem::ChannelAccessOp>(loc,
        castTo,
        channel, 
        rewriter.create<arith::SubIOp>(loc, loop.getInductionVar(), loop.getLowerBound())
      );

      if (auto LD = dyn_cast<rmem::LoadOp>(target))
        LD.setOperand(newAddr);
      if (auto ST = dyn_cast<rmem::StoreOp>(target))
        ST.setOperand(1, newAddr);

      rewriter.setInsertionPointAfter(loop);
      createLLVMCall(rewriter, loc, channelDestroyOp, {channel});
    }
  }

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

protected:
  scf::ForOp loop;
  PatternRewriter &rewriter;
  unsigned loopInternal;
  WorkloadComplexityAnalyzer &analyzer;

  // prefetches map {load/store: (addr, set{ dfs } )}
  DenseMap<Operation*, std::pair<Value, std::set<Operation*>>> prefetches;
  DenseMap<Operation*, unsigned> distances;

  unsigned maxDistance = 0;

  std::set<Operation *> addrPathDFS(Operation *op) {
    std::set<Operation *> search;
    // rewriter.cloneRegionBefore(loop.getBodyRegion(), loop.getBodyRegion(), loop.getBodyRegion().);
    rewriter.setInsertionPoint(&loop.getBody()->back());
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
    const auto &[addr, dfs] = prefetches[target];
    for (Operation *op : dfs) {
      Operation *newOp = cloneAndMapOperands(op, valueMapping);
      for (unsigned i : llvm::seq(unsigned(0), op->getNumResults())) {
        valueMapping[op->getResult(i)] = newOp->getResult(i);
      }
    }
    return valueMapping[addr];
  }

};

class ForLoopPrefetchPattern : public OpRewritePattern<scf::ForOp> {
public:
  using OpRewritePattern<ForOp>::OpRewritePattern;
  WorkloadComplexityAnalyzer &intervalAnalyzer;
  ForLoopPrefetchPattern(MLIRContext *ctx, WorkloadComplexityAnalyzer &analyzer):
    OpRewritePattern(ctx), intervalAnalyzer(analyzer) {}

  LogicalResult matchAndRewrite(ForOp loop, PatternRewriter &rewriter) const override {
    if (loop->hasAttr("prefetched")) 
      return mlir::failure();
    if (!llvm::any_of(loop.getBody()->getOperations(), ForLoopPrefetchInternal::is_prefetch_target))
      return mlir::failure();

    ForLoopPrefetchInternal prefetcher(loop, rewriter, intervalAnalyzer);

    if(!prefetcher.preparePrefetches())
      return mlir::failure();

    prefetcher.inspectPrefetches();

    prefetcher.emitKernel();


    loop->setAttr("prefetched", rewriter.getBoolAttr(true));
    return mlir::success();
  }

};
}

namespace {

class RMEMPrefetchForloop : public impl::RMEMForloopPrefetchBase<RMEMPrefetchForloop> {

  void runOnOperation() override {
    ModuleOp op = getOperation();
    MLIRContext *ctx = op.getContext();

    WorkloadComplexityAnalyzer internalAnalyzer;

    RewritePatternSet patterns(ctx);
    patterns.add<ForLoopPrefetchPattern>(ctx, internalAnalyzer);
    if(failed(applyPatternsAndFoldGreedily(op, std::move(patterns))))
      signalPassFailure();
  }
};

}

std::unique_ptr<Pass> mlir::createRemoteMemPrefetchForloopPass() {
  return std::make_unique<RMEMPrefetchForloop>();
}