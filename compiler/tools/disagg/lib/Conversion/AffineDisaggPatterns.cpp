#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

using namespace mlir;
using namespace mlir::rmem;

//====================================================================================
// Affine dialect conversion
class AffineStoreDisagg : public OpConversionPattern<AffineStoreOp> {
  using OpConversionPattern<AffineStoreOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(AffineStoreOp op, mlir::AffineStoreOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (disagg::detail::trivialRewrite(op, AffineStoreOp::getOperationName(), adaptor.getOperands(), rewriter).succeeded())
      return mlir::success();
    SmallVector<NamedAttribute, 4> attributes;
    rmem::filterTargetAttributes(op->getAttrs(), attributes);
    auto newStoreOp = rewriter.replaceOpWithNewOp<rmem::RAffineStoreOp>(op,
      mlir::TypeRange(),
      adaptor.getOperands(),
      attributes
    );
    (void) newStoreOp;

    return mlir::success();
  }
};

class AffineLoadDisagg : public OpConversionPattern<AffineLoadOp> {
  using OpConversionPattern<AffineLoadOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(AffineLoadOp op, AffineLoadOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (disagg::detail::trivialRewrite(op, AffineLoadOp::getOperationName(), adaptor.getOperands(), rewriter).succeeded())
      return mlir::success();
    Type relType = op.getResult().getType();
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (!rts.empty() && rts.size() == 1) {
        relType = rts[0].dyn_cast<mlir::TypeAttr>().getValue();
      }
    }
    SmallVector<NamedAttribute, 4> attributes;
    rmem::filterTargetAttributes(op->getAttrs(), attributes);
    Value loadRef = rewriter.create<rmem::RAffineLoadOp>(
      op.getLoc(), 
      relType,
      adaptor.getOperands(),
      attributes
    );
    rewriter.replaceOp(op, loadRef);
    return mlir::success();
  }
};

void mlir::disagg::populateAffineDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
    AffineStoreDisagg,
    AffineLoadDisagg
  >(ctx);
}