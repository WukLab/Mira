//===- AllocLikeConversion.h - Convert allocation ops to LLVM ---*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef RMEM_MEMREF_LOWERING_ALLOCLIKECONVERSION_H
#define RMEM_MEMREF_LOWERING_ALLOCLIKECONVERSION_H

#include "Lowering/Common/PatternBase.h"
#include "Dialect/RemoteMem.h"

namespace mlir {
namespace rmem {
/// Lowering for memory allocation ops.
struct RMemAllocationOpLLVMLowering : public RemoteMemLoweringPattern {
  using RemoteMemLoweringPattern::createIndexConstant;
  using RemoteMemLoweringPattern::getIndexType;
  using RemoteMemLoweringPattern::getVoidPtrType;

  explicit RMemAllocationOpLLVMLowering(StringRef opName,
                                    RemoteMemTypeLowerer &converter)
      : RMemAllocationOpLLVMLowering(opName, &converter.getContext(), converter) {}

  explicit RMemAllocationOpLLVMLowering(StringRef opName,
                                  MLIRContext *ctx,
                                  RemoteMemTypeLowerer &converter)
    : RemoteMemLoweringPattern(opName, ctx, converter) {}

protected:
  /// Computes the aligned value for 'input' as follows:
  ///   bumped = input + alignement - 1
  ///   aligned = bumped - bumped % alignment
  static Value createAligned(ConversionPatternRewriter &rewriter, Location loc,
                             Value input, Value alignment);

  static MemRefType getMemRefResultType(Operation *op) {
    return rmem::getRawTypeFromRemotedType(op->getResult(0).getType()).cast<MemRefType>();
  }

  /// Computes the alignment for the given memory allocation op.
  template <typename OpType>
  Value getAlignment(ConversionPatternRewriter &rewriter, Location loc,
                     OpType op) const {
    MemRefType memRefType = rmem::getRawTypeFromRemotedType(op.getType()).template cast<MemRefType>();
    Value alignment;
    if (auto alignmentAttr = op.getAlignment()) {
      alignment = createIndexConstant(rewriter, loc, *alignmentAttr);
    } else if (!memRefType.getElementType().isSignlessIntOrIndexOrFloat()) {
      // In the case where no alignment is specified, we may want to override
      // `malloc's` behavior. `malloc` typically aligns at the size of the
      // biggest scalar on a target HW. For non-scalars, use the natural
      // alignment of the LLVM type given by the LLVM DataLayout.
      alignment = getSizeInBytes(loc, memRefType.getElementType(), rewriter);
    }
    return alignment;
  }

  /// Computes the alignment for aligned_alloc used to allocate the buffer for
  /// the memory allocation op.
  ///
  /// Aligned_alloc requires the allocation size to be a power of two, and the
  /// allocation size to be a multiple of the alignment.
  template <typename OpType>
  int64_t alignedAllocationGetAlignment(ConversionPatternRewriter &rewriter,
                                        Location loc, OpType op,
                                        const DataLayout *defaultLayout) const {
    if (Optional<uint64_t> alignment = op.getAlignment())
      return *alignment;

    // Whenever we don't have alignment set, we will use an alignment
    // consistent with the element type; since the allocation size has to be a
    // power of two, we will bump to the next power of two if it isn't.
    unsigned eltSizeBytes =
        getMemRefEltSizeInBytes(op.getType(), op, defaultLayout);
    return std::max(kMinAlignedAllocAlignment,
                    llvm::PowerOf2Ceil(eltSizeBytes));
  }

  /// Allocates a memory buffer using an allocation method that doesn't
  /// guarantee alignment. Returns the pointer and its aligned value.
  std::tuple<Value, Value>
  allocateBufferManuallyAlign(ConversionPatternRewriter &rewriter, Location loc,
                              Value sizeBytes, Value poolId, Operation *op,
                              Value alignment) const;

  /// Allocates a memory buffer using an aligned allocation method.
  Value allocateBufferAutoAlign(ConversionPatternRewriter &rewriter,
                                Location loc, Value sizeBytes, Operation *op,
                                const DataLayout *defaultLayout,
                                int64_t alignment) const;

private:
  /// Computes the byte size for the MemRef element type.
  unsigned getMemRefEltSizeInBytes(MemRefType memRefType, Operation *op,
                                   const DataLayout *defaultLayout) const;

  /// Returns true if the memref size in bytes is known to be a multiple of
  /// factor.
  bool isMemRefSizeMultipleOf(MemRefType type, uint64_t factor, Operation *op,
                              const DataLayout *defaultLayout) const;

  /// The minimum alignment to use with aligned_alloc (has to be a power of 2).
  static constexpr uint64_t kMinAlignedAllocAlignment = 16UL;
};

/// Lowering for AllocOp and AllocaOp.
struct RMemAllocLikeOpLLVMLowering : public RMemAllocationOpLLVMLowering {
public:
  explicit RMemAllocLikeOpLLVMLowering(StringRef opName,
                                       rmem::RemoteMemTypeLowerer &typeConverter, 
                                       MLIRContext *ctx) :
            RMemAllocationOpLLVMLowering(opName, ctx, typeConverter) {} 
  // using RMemAllocationOpLLVMLowering::RMemAllocationOpLLVMLowering;

protected:
  /// Allocates the underlying buffer. Returns the allocated pointer and the
  /// aligned pointer.
  virtual std::tuple<Value, Value>
  allocateBuffer(ConversionPatternRewriter &rewriter, Location loc,
                 Value sizeBytes, Operation *op) const = 0;

private:
  // An `alloc` is converted into a definition of a memref descriptor value and
  // a call to `malloc` to allocate the underlying data buffer.  The memref
  // descriptor is of the LLVM structure type where:
  //   1. the first element is a pointer to the allocated (typed) data buffer,
  //   2. the second element is a pointer to the (typed) payload, aligned to the
  //      specified alignment,
  //   3. the remaining elements serve to store all the sizes and strides of the
  //      memref using LLVM-converted `index` type.
  //
  // Alignment is performed by allocating `alignment` more bytes than
  // requested and shifting the aligned pointer relative to the allocated
  // memory. Note: `alignment - <minimum malloc alignment>` would actually be
  // sufficient. If alignment is unspecified, the two pointers are equal.

  // An `alloca` is converted into a definition of a memref descriptor value and
  // an llvm.alloca to allocate the underlying data buffer.
  LogicalResult
  matchAndRewrite(Operation *op, ArrayRef<Value> operands,
                  ConversionPatternRewriter &rewriter) const override;
};
} // namespace rmem
} // namespace mlir

#endif // MLIR_CONVERSION_MEMREFTOLLVM_ALLOCLIKECONVERSION_H
