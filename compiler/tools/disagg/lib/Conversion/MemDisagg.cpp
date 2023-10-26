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
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

namespace mlir {
#define GEN_PASS_DEF_MEMDISAGGREGATION
#include "Conversion/Passes.h.inc"

// =================================================================================================================


namespace disagg {
class MemDisaggregationPass: public impl::MemDisaggregationBase<MemDisaggregationPass> {
public:
  MemDisaggregationPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    RewritePatternSet patterns(&getContext());

    populateMemDisaggPatterns(&getContext(), patterns);

    RemoteMemConversionTarget target(getContext());

    if (failed(applyPartialConversion(op, target, std::move(patterns)))) {
      signalPassFailure();
    }
  }
};

void populateMemDisaggPatterns (MLIRContext *ctx, RewritePatternSet &patterns) {
  populateLLVMDisaggregationPatterns(ctx, patterns);
  populateSCFDisaggregationPatterns(ctx, patterns);
  populateFuncDisaggregationPatterns(ctx, patterns);
  populateMemRefDisaggregationPatterns(ctx, patterns);
  populateAffineDisaggregationPatterns(ctx, patterns);
  populateArithDisaggregationPatterns(ctx, patterns);
  populateVectorDisaggregationPatterns(ctx, patterns);
  populateTrivialDisaggPatterns(ctx, patterns);
}

std::unique_ptr<Pass> createMemDisaggregationPass() {
  return std::make_unique<MemDisaggregationPass>();
}

}
}