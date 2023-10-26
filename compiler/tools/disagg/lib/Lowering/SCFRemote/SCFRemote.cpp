#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Lowering/Common/PatternBase.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "Lowering/SCFRemote/SCFRemote.h"

namespace mlir {
#define GEN_PASS_DEF_LOWERRMEMINSCF
#include "Lowering/Passes.h.inc"
using namespace mlir::rmem;

namespace {
/* Patterns */
class RemoteSCFYieldLowering : public RemoteMemOpLoweringPattern<scf::YieldOp> {
  using RemoteMemOpLoweringPattern<scf::YieldOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(scf::YieldOp op, scf::YieldOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (!op.getResults().size())
      return mlir::failure();
    rewriter.replaceOpWithNewOp<scf::YieldOp>(op, adaptor.getResults());
    return mlir::success();
  }
};

class RemoteSCFWhileLowering : public RemoteMemOpLoweringPattern<scf::WhileOp> {
  using RemoteMemOpLoweringPattern<scf::WhileOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(scf::WhileOp op, scf::WhileOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // Prepare type mapping for before region
    TypeConverter::SignatureConversion bfArgs(op.getBeforeArguments().size());
    for (auto &en : llvm::enumerate(adaptor.getOperands())) {
      bfArgs.addInputs(en.index(), en.value().getType());
    }
    // Prepare type mapping for after region
    // Result types match after block args
    TypeConverter::SignatureConversion afArgs(op.getAfterArguments().size());
    SmallVector<Type, 1> resultTypes;
    resultTypes.reserve(op.getNumResults());
    if (failed(getTypeConverter()->convertTypes(op.getResultTypes(), resultTypes))) {
      llvm::errs() << "Failed to convert after block argument\n";
      return mlir::failure();
    }
    for (auto &en : llvm::enumerate(resultTypes)) {
      afArgs.addInputs(en.index(), en.value());
    }
    auto newWhileOp = rewriter.create<scf::WhileOp>(
      op.getLoc(), resultTypes, adaptor.getOperands()
    );

    rewriter.inlineRegionBefore(op.getBefore(), newWhileOp.getBefore(), newWhileOp.getBefore().end());
    rewriter.applySignatureConversion(&newWhileOp.getBefore(), bfArgs, getTypeConverter());

    rewriter.inlineRegionBefore(op.getAfter(), newWhileOp.getAfter(), newWhileOp.getAfter().end());
    rewriter.applySignatureConversion(&newWhileOp.getAfter(), afArgs, getTypeConverter());

    rewriter.replaceOp(op, newWhileOp.getResults());
    return mlir::success();
  }
};

class RemoteSCFIfLowering : public RemoteMemOpLoweringPattern<scf::IfOp> {
  using RemoteMemOpLoweringPattern<scf::IfOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(scf::IfOp op, scf::IfOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    SmallVector<Type, 4> resultTypes;
    resultTypes.reserve(op.getResults().size());
    if (failed(getTypeConverter()->convertTypes(op.getResultTypes(), resultTypes))) {
      llvm::errs() << "Failed to convert scf.If result types, see\n";
      op.dump();
      return mlir::failure();
    }
    auto newIf = rewriter.create<scf::IfOp>(op.getLoc(), 
      resultTypes,
      adaptor.getCondition(), true
    );
    rewriter.eraseBlock(&newIf.getThenRegion().front());
    rewriter.inlineRegionBefore(op.getThenRegion(), newIf.getThenRegion(), newIf.getThenRegion().end());

    rewriter.eraseBlock(&newIf.getElseRegion().front());
    rewriter.inlineRegionBefore(op.getElseRegion(), newIf.getElseRegion(), newIf.getElseRegion().end());

    rewriter.replaceOp(op, newIf.getResults());
    return mlir::success();
  }
};

// code gen to new ring-cache
class RemoteSCFForLowering : public RemoteMemOpLoweringPattern<scf::ForOp>{
  using RemoteMemOpLoweringPattern<scf::ForOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(scf::ForOp op, scf::ForOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // Prepare for-loop body region signature conversion
    TypeConverter::SignatureConversion result(op.getBody()->getArguments().size());
    // induction variable is always the first
    result.addInputs(0, op.getInductionVar().getType());
    // push remapped operands (loop-carried vars)
    for (auto &en : llvm::enumerate(adaptor.getInitArgs())) {
      result.addInputs(en.index()+1, en.value().getType());
    } 

    auto newForOp = rewriter.create<scf::ForOp>(
      op.getLoc(), adaptor.getLowerBound(), adaptor.getUpperBound(),
      adaptor.getStep(), adaptor.getInitArgs()
    );
    // forop builder will create block while building the region
    // delete it before moving original block into the new loop body
    newForOp.getBody()->erase();
    rewriter.inlineRegionBefore(op.getLoopBody(), newForOp.getLoopBody(), newForOp.getLoopBody().end());
    rewriter.applySignatureConversion(&newForOp.getLoopBody(), result, getTypeConverter());
    rewriter.replaceOp(op, newForOp.getResults());
    return mlir::success();
  }
};

class RemoteSCFCondLowering : public RemoteMemOpLoweringPattern<scf::ConditionOp> {
  using RemoteMemOpLoweringPattern<scf::ConditionOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(scf::ConditionOp op, scf::ConditionOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<scf::ConditionOp>(op,
      adaptor.getCondition(), adaptor.getArgs()
    );
    return mlir::success();
  }
};
}

class LowerRMemInSCFPass : public impl::LowerRMemInSCFBase<LowerRMemInSCFPass> {
public:
  LowerRMemInSCFPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    
    RemoteMemTypeLowerer typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateLowerSCFRMemPatterns(typeConverter, patterns);

    ConversionTarget target(getContext());
    // General target
    target.addDynamicallyLegalDialect<scf::SCFDialect>([](Operation *op) {
      return !(llvm::any_of(op->getOperandTypes(), rmem::hasRemoteTarget) || llvm::any_of(op->getResultTypes(), rmem::hasRemoteTarget));
    });
    target.addLegalOp<UnrealizedConversionCastOp>();

    if (failed(applyPartialConversion(op, target, std::move(patterns))))
      signalPassFailure();
  }
};

void populateLowerSCFRMemPatterns (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns) {
  patterns.add<
  RemoteSCFYieldLowering,
  RemoteSCFWhileLowering,
  RemoteSCFCondLowering,
  RemoteSCFForLowering,
  RemoteSCFIfLowering
  >(converter, &converter.getContext());
}
std::unique_ptr<Pass> createConvertSCFRemotePass() {
  return std::make_unique<LowerRMemInSCFPass>();
}
}