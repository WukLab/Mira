#ifndef LOWER_REMOTE_MEM_LLVMCOMMON_PATTERN_H
#define LOWER_REMOTE_MEM_LLVMCOMMON_PATTERN_H

#include "Lowering/Common/RMemTypeLowerer.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/IR/OperationSupport.h"
#include "mlir/Conversion/LLVMCommon/MemRefBuilder.h"
#include "Dialect/RemoteMem.h"

namespace mlir {
namespace rmem {

enum RMEM_ACCESS_TYPE {
  ACCESS = 0,
  ACCESS_MUT,
  ACCESS_NRTC,
  ACCESS_NRTC_MUT
};

}

class RemoteMemLoweringPattern : public ConversionPattern {
public:
  RemoteMemLoweringPattern(StringRef rootOpName, MLIRContext* context, rmem::RemoteMemTypeLowerer &typeConverter, PatternBenefit benefit = 1);

protected:
  rmem::RemoteMemDialect &getDialect() const;
  rmem::RemoteMemTypeLowerer *getTypeConverter() const;

  //===---------------------------------------------------===//
  // Remote Mem common rountines
  //===---------------------------------------------------===//

  // Materialize a disagg virtual address to local laddress
  Value materializeDisaggVirtualAddress(PatternRewriter &rewriter, Operation *op, Value dvaddr, Type relType, unsigned accessType = rmem::ACCESS) const;

  // Materialize a disagg virtual address to local laddress
  // use new_runtime
  Value newMatDisaggVirtualAddress(PatternRewriter &rewriter, Operation *op, Value dvaddr, Type relType, rmem::Cache *cache, unsigned accessType = rmem::ACCESS) const;

  //===---------------------------------------------------===//
  // Original LLVM common rountines
  //===---------------------------------------------------===//

  /// Gets the MLIR type wrapping the LLVM integer type whose bit width is
  /// defined by the used type converter.
  Type getIndexType() const;

  /// Gets the MLIR type wrapping the LLVM integer type whose bit width
  /// corresponds to that of a LLVM pointer type.
  Type getIntPtrType(unsigned addressSpace = 0) const;

  /// Gets the MLIR type wrapping the LLVM void type.
  Type getVoidType() const;

  /// Get the MLIR type wrapping the LLVM i8* type.
  Type getVoidPtrType() const;

  /// Create a constant Op producing a value of `resultType` from an index-typed
  /// integer attribute.
  static Value createIndexAttrConstant(OpBuilder &builder, Location loc,
                                       Type resultType, int64_t value);

  /// Create an LLVM dialect operation defining the given index constant.
  Value createIndexConstant(ConversionPatternRewriter &builder, Location loc,
                            uint64_t value) const;

  // This is a strided getElementPtr variant that linearizes subscripts as:
  //   `base_offset + index_0 * stride_0 + ... + index_n * stride_n`.
  Value getStridedElementPtr(Location loc, MemRefType type, Value memRefDesc,
                             ValueRange indices,
                             ConversionPatternRewriter &rewriter) const;

  // If is memrefType, 
  /// Returns if the given memref has identity maps and the element type is
  /// convertible to LLVM.
  bool isConvertibleAndHasIdentityMaps(MemRefType type) const;

  /// Returns the type of a pointer to an element of the memref.
  Type getElementPtrType(MemRefType type) const;

  /// Computes sizes, strides and buffer size in bytes of `memRefType` with
  /// identity layout. Emits constant ops for the static sizes of `memRefType`,
  /// and uses `dynamicSizes` for the others. Emits instructions to compute
  /// strides and buffer size from these sizes.
  ///
  /// For example, memref<4x?xf32> emits:
  /// `sizes[0]`   = llvm.mlir.constant(4 : index) : i64
  /// `sizes[1]`   = `dynamicSizes[0]`
  /// `strides[1]` = llvm.mlir.constant(1 : index) : i64
  /// `strides[0]` = `sizes[0]`
  /// %size        = llvm.mul `sizes[0]`, `sizes[1]` : i64
  /// %nullptr     = llvm.mlir.null : !llvm.ptr<f32>
  /// %gep         = llvm.getelementptr %nullptr[%size]
  ///                  : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
  /// `sizeBytes`  = llvm.ptrtoint %gep : !llvm.ptr<f32> to i64
  void getMemRefDescriptorSizes(Location loc, MemRefType memRefType,
                                ValueRange dynamicSizes,
                                ConversionPatternRewriter &rewriter,
                                SmallVectorImpl<Value> &sizes,
                                SmallVectorImpl<Value> &strides,
                                Value &sizeBytes) const;

  /// Computes the size of type in bytes.
  Value getSizeInBytes(Location loc, Type type,
                       ConversionPatternRewriter &rewriter) const;

  /// Computes total number of elements for the given shape.
  Value getNumElements(Location loc, ArrayRef<Value> shape,
                       ConversionPatternRewriter &rewriter) const;

  /// Creates and populates a canonical memref descriptor struct.
  MemRefDescriptor
  createMemRefDescriptor(Location loc, MemRefType memRefType,
                         Value allocatedPtr, Value alignedPtr,
                         ArrayRef<Value> sizes, ArrayRef<Value> strides,
                         ConversionPatternRewriter &rewriter) const;

  // block_base = lbase + (index % num_blocks) * block_size
  Value getBlockAddr(ModuleOp mop, Value curIndex, rmem::LocalCache &cache, Location loc, ConversionPatternRewriter &rewriter) const;
};

template<typename SourceOp>
class RemoteMemOpLoweringPattern : public RemoteMemLoweringPattern {
public:
  using OpAdaptor = typename SourceOp::Adaptor;
  explicit RemoteMemOpLoweringPattern(rmem::RemoteMemTypeLowerer &typeConverter, 
                                      MLIRContext *ctx,
                                      PatternBenefit bft = 1) :
            RemoteMemLoweringPattern(SourceOp::getOperationName(),
                                     ctx,
                                     typeConverter,
                                     bft) {}
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

  Value getTypeSize(Type t, ConversionPatternRewriter &rewriter);
private:
  using RemoteMemLoweringPattern::matchAndRewrite;
};
}


#endif