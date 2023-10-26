#ifndef REMOTE_MEM_CONVERSION_PATTERN_H
#define REMOTE_MEM_CONVERSION_PATTERN_H

#include "mlir/Transforms/DialectConversion.h"
#include "Conversion/Common/TypeConverter.h"
#include "mlir/IR/OperationSupport.h"
#include "llvm/ADT/SmallSet.h"

namespace mlir {
namespace rmem {
bool isRemotableType(Type t);
bool hasRemotableSignature(Operation *op);

// Strip target attr from the orignal dictionary
// The result should be copied to disaggregated operations
void filterTargetAttributes(ArrayRef<NamedAttribute> attrs, SmallVectorImpl<NamedAttribute> &result, llvm::SmallSet<StringRef, 4> filter = {});

bool hasRemoteTarget(Operation *op);
bool hasRemoteCheckUse(Operation *op);

// if no remote_target = 1 present, filter attr
LogicalResult ifNotRemoteTarget(Operation *op);
}

namespace disagg {
namespace detail {
LogicalResult trivialRewrite(Operation *op, StringRef targetOp,
                             ValueRange operands,
                             ConversionPatternRewriter &rewriter);
}
}
}

using namespace mlir;
using namespace mlir::rmem;
class ConvertToRemoteMemPattern : public ConversionPattern {
public:
  ConvertToRemoteMemPattern(StringRef rootOpName, 
                     MLIRContext *ctx, 
                     RemoteMemTypeConverter &typeConverter,
                     PatternBenefit benefit = 1);
  
protected:
  RemoteMemDialect &getDialect() const;
  RemoteMemTypeConverter *getTypeConverter() const;

};

template<typename SourceOp>
class ConvertOpToRemoteMemPattern : public ConvertToRemoteMemPattern {
public:
  using OpAdaptor = typename SourceOp::Adaptor;

  explicit ConvertOpToRemoteMemPattern(RemoteMemTypeConverter &typeConverter, MLIRContext *context, PatternBenefit benefit = 1) : 
    ConvertToRemoteMemPattern(SourceOp::getOperationName(),
                              context,
                              typeConverter,
                              benefit) {}
  
  void rewrite(Operation *op, ArrayRef<Value> operands, ConversionPatternRewriter &rewriter) const final {
    rewrite(cast<SourceOp>(op), OpAdaptor(operands, op->getAttrDictionary()),
            rewriter);
  }

  LogicalResult match(Operation *op) const final {
    return match(cast<SourceOp>(op));
  }

  LogicalResult
  matchAndRewrite(Operation *op, ArrayRef<Value> operands,
                  ConversionPatternRewriter &rewriter) const final {
    return matchAndRewrite(cast<SourceOp>(op),
                           OpAdaptor(operands, op->getAttrDictionary()),
                           rewriter);
  }

  // match and rewrite on the concrete source op, must be override by the derived class
  virtual void rewrite(SourceOp op, OpAdaptor adaptor, ConversionPatternRewriter &rewriter) const {
    llvm_unreachable("must overwrite rewrite or matchAndRewirte");
  }

  virtual LogicalResult match(SourceOp op) const {
    llvm_unreachable("must overwrite match or matchAndRewrite");
  }

  virtual LogicalResult matchAndRewrite(SourceOp op, OpAdaptor adaptor, ConversionPatternRewriter &rewriter) const {
    if (failed(match(op)))
      return mlir::failure();
    rewrite(op, adaptor, rewriter);
    return success();
  }

private:
  using ConvertToRemoteMemPattern::matchAndRewrite;
};

// Generic implementation of one-2-one conversion from
// source to target (can be same)

// return failure if operand types changed
// the result type will not be changed unless provided with "rel_types"
template <typename SourceOp, typename TargetOp>
class TrivialMappingToRemotePattern : public OpConversionPattern<SourceOp> {
public:
  using OpAdaptor = typename SourceOp::Adaptor;
  using OpConversionPattern<SourceOp>::OpConversionPattern;

  LogicalResult
  matchAndRewrite(SourceOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    return disagg::detail::trivialRewrite(op, TargetOp::getOperationName(),
                                         adaptor.getOperands(), rewriter);
  }
};

#endif
