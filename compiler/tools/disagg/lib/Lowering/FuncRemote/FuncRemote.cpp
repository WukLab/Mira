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
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Lowering/Common/PatternBase.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "Lowering/FuncRemote/FuncRemote.h"

namespace mlir {
#define GEN_PASS_DEF_LOWERRMEMINFUNC
#include "Lowering/Passes.h.inc"
using namespace mlir::rmem;

namespace {

static void filterFuncAttributes(ArrayRef<NamedAttribute> attrs,
                                 SmallVectorImpl<NamedAttribute> &result) {
  for (const auto &attr : attrs) {
    if (attr.getName() == SymbolTable::getSymbolAttrName() ||
        attr.getName() == FunctionOpInterface::getTypeAttrName() ||
        attr.getName() == "func.varargs")
      continue;
    result.push_back(attr);
  }
}

/* Patterns */
class RemoteFuncFuncOpLowering : public RemoteMemOpLoweringPattern<func::FuncOp> {
  using RemoteMemOpLoweringPattern<func::FuncOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(func::FuncOp op, func::FuncOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    TypeConverter::SignatureConversion result(op.getFunctionType().getNumInputs());
    mlir::Type funcType = getTypeConverter()->convertFunctionSignature(op.getFunctionType(), result);
    if (!funcType) {
      llvm::errs() << "Failed to convert function signature\n";
      return mlir::failure();
    }
    auto newFuncType = funcType.cast<FunctionType>();

    // propagate attributes
    SmallVector<NamedAttribute, 4> attrs;
    filterFuncAttributes(op->getAttrs(), attrs);

    auto newFuncOp = rewriter.create<func::FuncOp>(
      op.getLoc(), op.getSymName(), newFuncType,
      attrs
    );
    rewriter.inlineRegionBefore(op.getBody(), newFuncOp.getBody(), newFuncOp.getBody().end());
    if (failed(rewriter.convertRegionTypes(&newFuncOp.getBody(), *getTypeConverter(), &result))) {
      llvm::errs() << "Failed to convert Region types\n";
      return mlir::failure();
    }
    rewriter.eraseOp(op);
    return mlir::success();
  }
};

class RemoteFuncCallOpLowering : public RemoteMemOpLoweringPattern<func::CallOp> {
  using RemoteMemOpLoweringPattern<func::CallOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(func::CallOp op, func::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    SmallVector<Type, 1> resultTypes;
    resultTypes.reserve(op.getNumResults());
    for (auto t : op.getResultTypes())
      resultTypes.push_back(getTypeConverter()->convertCallingConventionType(t));
    // if (failed(getTypeConverter()->convertTypes(op.getResultTypes(), resultTypes))) {
    //   llvm::errs() << "Failed to convert result types\n";
    //   return mlir::failure();
    // }
    SmallVector<Value> inputs;
    auto loc = op.getLoc();
    for (auto [ov, nv] : llvm::zip(op.getOperands(), adaptor.getOperands())) {
      Type needType = getTypeConverter()->convertCallingConventionType(ov.getType());
      if (needType != nv.getType()) {
        Value newInput = rewriter.create<UnrealizedConversionCastOp>(loc, 
          needType, nv
        ).getResult(0);
        inputs.push_back(newInput);
      } else {
        inputs.push_back(nv);
      }
    }

    auto newCallOp = rewriter.create<func::CallOp>(
      op.getLoc(), adaptor.getCalleeAttr(), resultTypes, inputs
    );
    rewriter.replaceOp(op, newCallOp.getResults());
    return mlir::success();
  }
};

class RemoteFuncReturnOpLowering : public RemoteMemOpLoweringPattern<func::ReturnOp> {
  using RemoteMemOpLoweringPattern<func::ReturnOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(func::ReturnOp op, func::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (!llvm::any_of(op.getOperandTypes(), rmem::hasRemoteTarget))
      return mlir::failure();

    SmallVector<Value> outputs;
    auto loc = op.getLoc();
    for (auto [ov, nv] : llvm::zip(op.getOperands(), adaptor.getOperands())) {
      Type needType = getTypeConverter()->convertCallingConventionType(ov.getType());
      if (needType != nv.getType()) {
        Value newInput = rewriter.create<UnrealizedConversionCastOp>(loc, 
          needType, nv
        ).getResult(0);
        outputs.push_back(newInput);
      } else {
        outputs.push_back(nv);
      }
    }
 
    rewriter.replaceOpWithNewOp<func::ReturnOp>(op, outputs);
    return mlir::success();
  }
};
}

class LowerRMemInFuncPass : public impl::LowerRMemInFuncBase<LowerRMemInFuncPass> {
public:
  LowerRMemInFuncPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    
    RemoteMemTypeLowerer typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateLowerFuncRMemPatterns(typeConverter, patterns);

    ConversionTarget target(getContext());
    target.addDynamicallyLegalOp<func::FuncOp>([](func::FuncOp op) {
      return (!llvm::any_of(op.getArgumentTypes(), rmem::hasRemoteTarget)) && (!llvm::any_of(op.getResultTypes(), rmem::hasRemoteTarget));
    });
    target.addDynamicallyLegalOp<func::CallOp>([](func::CallOp op) {
      return (!llvm::any_of(op.getOperandTypes(), rmem::hasRemoteTarget)) && (!llvm::any_of(op.getResultTypes(), rmem::hasRemoteTarget));
    });
    target.addDynamicallyLegalOp<func::ReturnOp>([](func::ReturnOp op) {
      return (!llvm::any_of(op.getOperandTypes(), rmem::hasRemoteTarget));
    });
    target.addLegalOp<UnrealizedConversionCastOp>();

    if (failed(applyPartialConversion(op, target, std::move(patterns))))
      signalPassFailure();
  }
};

void populateLowerFuncRMemPatterns (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns) {
  patterns.add<
  RemoteFuncFuncOpLowering,
  RemoteFuncCallOpLowering,
  RemoteFuncReturnOpLowering
  >(converter, &converter.getContext());
}
std::unique_ptr<Pass> createConvertFuncRMemPass() {
  return std::make_unique<LowerRMemInFuncPass>();
}
}