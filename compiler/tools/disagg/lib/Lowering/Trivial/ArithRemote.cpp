#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Lowering/Common/PatternBase.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "Lowering/Trivial/Trivial.h"

using namespace mlir;
using namespace mlir::rmem;

namespace {

class ArithSelectOpLowering : public RemoteMemOpLoweringPattern<arith::SelectOp> {
  using RemoteMemOpLoweringPattern<arith::SelectOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(arith::SelectOp op, arith::SelectOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Value newSelect = rewriter.create<arith::SelectOp>(op.getLoc(), 
      adaptor.getCondition(), adaptor.getTrueValue(), adaptor.getFalseValue()
    );
    rewriter.replaceOp(op, newSelect);
    return mlir::success();
  }
};

}


void mlir::populateLowerArithRMemPatterns(rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &set) {
  set.add<
    ArithSelectOpLowering
  >(converter, &converter.getContext());
}