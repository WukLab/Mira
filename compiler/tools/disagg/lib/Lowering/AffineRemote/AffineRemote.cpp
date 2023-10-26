#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/Utils.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Transforms/DialectConversion.h"
#include "Lowering/Common/PatternBase.h"
#include "Lowering/AffineRemote/AffineRemote.h"

namespace mlir {
#define GEN_PASS_DEF_LOWERRMEMINAFFINE
#include "Lowering/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;

namespace {
//===-------------------------------===//
// Patterns
//===-------------------------------===//

/// Apply the affine map from an 'rmem.affine.store' operation to its operands, and
/// feed the results to a newly created 'rmem.memref.store' operation (which replaces
/// the original 'rmem.affine.store').
class RemoteAffineStoreLowering : public OpRewritePattern<rmem::RAffineStoreOp> {
public:
  using OpRewritePattern<rmem::RAffineStoreOp>::OpRewritePattern;
  LogicalResult matchAndRewrite(rmem::RAffineStoreOp op, PatternRewriter &rewriter) const override {
    Value localRef = op.getMemRef();
    auto loc = op.getLoc();
    if (auto rmemRef = op.getMemRef().getType().dyn_cast<rmem::RemoteMemRefType>()) {
      localRef = rewriter.create<rmem::MaterializeOp>(loc, rmem::getRawTypeFromRemotedType(rmemRef), op.getMemRef());
    }
    rewriter.replaceOpWithNewOp<AffineStoreOp>(op, op.getValueToStore(), localRef, op.getIndices());
    // SmallVector<Value, 8> indices(op.getMapOperands());
    // auto maybeExpandedMap =
    //     expandAffineMap(rewriter, op.getLoc(), op.getAffineMap(), indices);
    // if (!maybeExpandedMap)
    //   return failure();

    // Build memref.store valueToStore, memref[expandedMap.results].
    // rewriter.replaceOpWithNewOp<rmem::MemRefStoreOp>(
    //     op, op.getValueToStore(), op.getMemRef(), *maybeExpandedMap);
    return success();
  }
};

/// Apply the affine map from an 'rmem.affine.load' operation to its operands, and
/// feed the results to a newly created 'rmem.memref.load' operation (which replaces
/// the original 'rmem.affine.load').
class RemoteAffineLoadLowering : public OpRewritePattern<rmem::RAffineLoadOp> {
public:
  using OpRewritePattern<rmem::RAffineLoadOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(rmem::RAffineLoadOp op,
                                PatternRewriter &rewriter) const override {
    // Expand affine map from 'affineLoadOp'.
    SmallVector<Value, 8> indices(op.getMapOperands());
    auto resultOperands =
        expandAffineMap(rewriter, op.getLoc(), op.getAffineMap(), indices);
    if (!resultOperands)
      return failure();

    // Build vector.load memref[expandedMap.results].
    rewriter.replaceOpWithNewOp<rmem::MemRefLoadOp>(op, op.getResult().getType(), op.getMemRef(), *resultOperands);
    return success();
  }
};

}

namespace {
class LowerAffineRemotePass : public impl::LowerRMemInAffineBase<LowerAffineRemotePass> {
  void runOnOperation() override {
    RewritePatternSet patterns(&getContext());
    populateLowerAffineRemotePatterns(patterns);
    ConversionTarget target(getContext());
    target.addLegalOp<
      rmem::MemRefStoreOp,
      rmem::MemRefLoadOp
    >();
    target.addLegalDialect<arith::ArithDialect, memref::MemRefDialect,
                        scf::SCFDialect, vector::VectorDialect>();
    target.markUnknownOpDynamicallyLegal(
      [](Operation *op) { return true; }
    );
    target.addIllegalOp<
      rmem::RAffineStoreOp,
      rmem::RAffineLoadOp
    >();
    if (failed(applyPartialConversion(getOperation(), target,
                                      std::move(patterns))))
      signalPassFailure();
  }
};
}

void mlir::populateLowerAffineRemotePatterns(RewritePatternSet &patterns) {
  patterns.add<
    RemoteAffineStoreLowering,
    RemoteAffineLoadLowering
  >(patterns.getContext());
}

std::unique_ptr<Pass> mlir::createConvertAffineRemotePass() {
  return std::make_unique<LowerAffineRemotePass>();
}