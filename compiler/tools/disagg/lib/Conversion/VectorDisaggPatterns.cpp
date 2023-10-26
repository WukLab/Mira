#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
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
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

using namespace mlir;
using namespace mlir::rmem;

// ============================================================================
// Vector disaggregation
//==============================================================================

class VectorLoadOpDisagg : public OpConversionPattern<vector::LoadOp> {
  using OpConversionPattern<vector::LoadOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(vector::LoadOp op, vector::LoadOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (disagg::detail::trivialRewrite(op, vector::LoadOp::getOperationName(), adaptor.getOperands(), rewriter).succeeded())
      return mlir::success();
    Type relType = op.getResult().getType();
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (!rts.empty() && rts.size() == 1) {
        relType = rts[0].dyn_cast<mlir::TypeAttr>().getValue();
      }
    }
    rewriter.replaceOpWithNewOp<rmem::VectorLoadOp>(op, 
      relType,
      adaptor.getBase(),
      adaptor.getIndices()
    );
    return mlir::success();
  }
};

class VectorStoreOpDisagg : public OpConversionPattern<vector::StoreOp> {
  using OpConversionPattern<vector::StoreOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(vector::StoreOp op, vector::StoreOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (disagg::detail::trivialRewrite(op, vector::StoreOp::getOperationName(), adaptor.getOperands(), rewriter).succeeded())
      return mlir::success();
    rewriter.replaceOpWithNewOp<rmem::VectorStoreOp>(op, 
      adaptor.getValueToStore(),
      adaptor.getBase(),
      adaptor.getIndices()
    );
    return mlir::success();
  }
};

void mlir::disagg::populateVectorDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
  /* Vector patterns */
    VectorLoadOpDisagg,
    VectorStoreOpDisagg
  >(ctx);
}
