#include "Lowering/MemRefRemote/AllocLikeConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"

using namespace mlir;
using namespace mlir::rmem;

Value RMemAllocationOpLLVMLowering::createAligned(
    ConversionPatternRewriter &rewriter, Location loc, Value input,
    Value alignment) {
  Value one = createIndexAttrConstant(rewriter, loc, alignment.getType(), 1);
  Value bump = rewriter.create<LLVM::SubOp>(loc, alignment, one);
  Value bumped = rewriter.create<LLVM::AddOp>(loc, input, bump);
  Value mod = rewriter.create<LLVM::URemOp>(loc, bumped, alignment);
  return rewriter.create<LLVM::SubOp>(loc, bumped, mod);
}

std::tuple<Value, Value> RMemAllocationOpLLVMLowering::allocateBufferManuallyAlign(
    ConversionPatternRewriter &rewriter, Location loc, 
    Value sizeBytes, Value poolId,
    Operation *op, Value alignment) const {
  if (alignment) {
    // Adjust the allocation size to consider alignment.
    sizeBytes = rewriter.create<LLVM::AddOp>(loc, sizeBytes, alignment);
  }

  MemRefType memRefType = getMemRefResultType(op);
  // Allocate the underlying buffer.
  Type elementPtrType = this->getElementPtrType(memRefType);
  LLVM::LLVMFuncOp allocFuncOp = rmem::lookupOrCreateAllocFn(
      op->getParentOfType<ModuleOp>());
  auto results = rmem::createLLVMCall(rewriter, loc, allocFuncOp, 
  {poolId, sizeBytes});
  Value allocatedPtr = rewriter.create<LLVM::BitcastOp>(loc, elementPtrType,
                                                        results);

  Value alignedPtr = allocatedPtr;
  if (alignment) {
    // Compute the aligned pointer.
    Value allocatedInt =
        rewriter.create<LLVM::PtrToIntOp>(loc, getIndexType(), allocatedPtr);
    Value alignmentInt = createAligned(rewriter, loc, allocatedInt, alignment);
    alignedPtr =
        rewriter.create<LLVM::IntToPtrOp>(loc, elementPtrType, alignmentInt);
  }

  return std::make_tuple(allocatedPtr, alignedPtr);
}

LogicalResult RMemAllocLikeOpLLVMLowering::matchAndRewrite(
    Operation *op, ArrayRef<Value> operands,
    ConversionPatternRewriter &rewriter) const {
  MemRefType memRefType = getMemRefResultType(op);
  if (!isConvertibleAndHasIdentityMaps(memRefType))
    return rewriter.notifyMatchFailure(op, "incompatible memref type");
  auto loc = op->getLoc();

  // Get actual sizes of the memref as values: static sizes are constant
  // values and dynamic sizes are passed to 'alloc' as operands.  In case of
  // zero-dimensional memref, assume a scalar (size 1).
  SmallVector<Value, 4> sizes;
  SmallVector<Value, 4> strides;
  Value sizeBytes;
  this->getMemRefDescriptorSizes(loc, memRefType, operands, rewriter, sizes,
                                 strides, sizeBytes);
  // Allocate the underlying buffer.
  auto [allocatedPtr, alignedPtr] =
      this->allocateBuffer(rewriter, loc, sizeBytes, op);

  // Create the MemRef descriptor.
  auto memRefDescriptor = this->createMemRefDescriptor(
      loc, memRefType, allocatedPtr, alignedPtr, sizes, strides, rewriter);

  // Return the final value of the descriptor.
  rewriter.replaceOp(op, {memRefDescriptor});
  return success();
}
