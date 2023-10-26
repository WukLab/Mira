#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Conversion/LLVMCommon/MemRefBuilder.h"
#include "Lowering/Common/PatternBase.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"

#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

using namespace mlir;
using namespace mlir::rmem;

RemoteMemLoweringPattern::RemoteMemLoweringPattern(StringRef rootOpName, MLIRContext* context, RemoteMemTypeLowerer &typeConverter, PatternBenefit benefit): ConversionPattern(typeConverter, rootOpName, benefit, context) {}

RemoteMemDialect &RemoteMemLoweringPattern::getDialect() const {
  return *getTypeConverter()->getDialect();
}

RemoteMemTypeLowerer *RemoteMemLoweringPattern::getTypeConverter() const {
  return static_cast<RemoteMemTypeLowerer *> (
    ConversionPattern::getTypeConverter());
}

//===---------------------------------------------------===//
// Remote Mem common rountines
//===---------------------------------------------------===//

Value RemoteMemLoweringPattern::materializeDisaggVirtualAddress (
  PatternRewriter &rewriter, Operation *op, 
  Value dvaddr, Type relType, unsigned accessType) const {
  Location loc = op->getLoc();
  // call request 
  auto cacheReqOp = rmem::lookupOrCreateCacheRequestFn(op->getParentOfType<ModuleOp>());
  Value tk = rmem::cacheRequestCallWrapper(
    rewriter, loc,
    cacheReqOp,
    dvaddr
  );

  // call _cache_access
  // TODO: add no runtime check routines
  auto chooseAccessFunc = [](unsigned type) {
    switch (type) {
      case ACCESS:
        return rmem::lookupOrCreateCacheAccessFn;
      case ACCESS_MUT:
        return rmem::lookupOrCreateCacheAccessMutFn;
      default:
        return rmem::lookupOrCreateCacheAccessFn;
    }
  };
  auto cacheAccOp = chooseAccessFunc(accessType)(op->getParentOfType<ModuleOp>());
  return rmem::cacheAccessCallWrapper(
    rewriter, loc,
    cacheAccOp,
    tk,
    relType
  );
}

Value RemoteMemLoweringPattern::newMatDisaggVirtualAddress (
  PatternRewriter &rewriter, Operation *op, 
  Value dvaddr, Type relType, rmem::Cache *cache, unsigned accessType) const {
  Location loc = op->getLoc();
  Value laddr;
  ModuleOp mop = op->getParentOfType<ModuleOp>();
  switch (accessType) {
    case ACCESS:
      laddr = cache->get(rewriter, mop, relType, dvaddr, loc);
      break;
    default:
      laddr = cache->get_mut(rewriter, mop, relType, dvaddr, loc);
  }
  return laddr;
}


//===---------------------------------------------------===//
// Original LLVM common rountines
//===---------------------------------------------------===//

Type RemoteMemLoweringPattern::getIndexType() const {
  return getTypeConverter()->getIndexType();
}

Type RemoteMemLoweringPattern::getIntPtrType(unsigned addressSpace) const {
  return IntegerType::get(&getTypeConverter()->getContext(),
                          getTypeConverter()->getPointerBitwidth(addressSpace));
}

Type RemoteMemLoweringPattern::getVoidType() const {
  return LLVM::LLVMVoidType::get(&getTypeConverter()->getContext());
}

Type RemoteMemLoweringPattern::getVoidPtrType() const {
  return LLVM::LLVMPointerType::get(
      IntegerType::get(&getTypeConverter()->getContext(), 8));
}

Value RemoteMemLoweringPattern::createIndexAttrConstant(OpBuilder &builder,
                                                    Location loc,
                                                    Type resultType,
                                                    int64_t value) {
  return builder.create<LLVM::ConstantOp>(loc, resultType,
                                          builder.getIndexAttr(value));
}

Value RemoteMemLoweringPattern::createIndexConstant(
    ConversionPatternRewriter &builder, Location loc, uint64_t value) const {
  return createIndexAttrConstant(builder, loc, getIndexType(), value);
}

Value RemoteMemLoweringPattern::getStridedElementPtr(
    Location loc, MemRefType type, Value memRefDesc, ValueRange indices,
    ConversionPatternRewriter &rewriter) const {

  int64_t offset;
  SmallVector<int64_t, 4> strides;
  auto successStrides = getStridesAndOffset(type, strides, offset);
  assert(succeeded(successStrides) && "unexpected non-strided memref");
  (void)successStrides;

  MemRefDescriptor memRefDescriptor(memRefDesc);
  Value base = memRefDescriptor.alignedPtr(rewriter, loc);

  Value index;
  if (offset != 0) // Skip if offset is zero.
    index = ShapedType::isDynamicStrideOrOffset(offset)
                ? memRefDescriptor.offset(rewriter, loc)
                : createIndexConstant(rewriter, loc, offset);

  for (int i = 0, e = indices.size(); i < e; ++i) {
    Value increment = indices[i];
    if (strides[i] != 1) { // Skip if stride is 1.
      Value stride = ShapedType::isDynamicStrideOrOffset(strides[i])
                         ? memRefDescriptor.stride(rewriter, loc, i)
                         : createIndexConstant(rewriter, loc, strides[i]);
      increment = rewriter.create<LLVM::MulOp>(loc, increment, stride);
    }
    index =
        index ? rewriter.create<LLVM::AddOp>(loc, index, increment) : increment;
  }

  Type elementPtrType = memRefDescriptor.getElementPtrType();
  return index ? rewriter.create<LLVM::GEPOp>(loc, elementPtrType, base, index)
               : base;
}

// Check if the MemRefType `type` is supported by the lowering. We currently
// only support memrefs with identity maps.
bool RemoteMemLoweringPattern::isConvertibleAndHasIdentityMaps(
    MemRefType type) const {
  if (!typeConverter->convertType(type.getElementType()))
    return false;
  return type.getLayout().isIdentity();
}

Type RemoteMemLoweringPattern::getElementPtrType(MemRefType type) const {
  auto elementType = type.getElementType();
  auto structElementType = typeConverter->convertType(elementType);
  return LLVM::LLVMPointerType::get(structElementType,
                                    type.getMemorySpaceAsInt());
}

void RemoteMemLoweringPattern::getMemRefDescriptorSizes(
    Location loc, MemRefType memRefType, ValueRange dynamicSizes,
    ConversionPatternRewriter &rewriter, SmallVectorImpl<Value> &sizes,
    SmallVectorImpl<Value> &strides, Value &sizeBytes) const {
  assert(isConvertibleAndHasIdentityMaps(memRefType) &&
         "layout maps must have been normalized away");
  assert(count(memRefType.getShape(), ShapedType::kDynamicSize) ==
             static_cast<ssize_t>(dynamicSizes.size()) &&
         "dynamicSizes size doesn't match dynamic sizes count in memref shape");

  sizes.reserve(memRefType.getRank());
  unsigned dynamicIndex = 0;
  for (int64_t size : memRefType.getShape()) {
    sizes.push_back(size == ShapedType::kDynamicSize
                        ? dynamicSizes[dynamicIndex++]
                        : createIndexConstant(rewriter, loc, size));
  }

  // Strides: iterate sizes in reverse order and multiply.
  int64_t stride = 1;
  Value runningStride = createIndexConstant(rewriter, loc, 1);
  strides.resize(memRefType.getRank());
  for (auto i = memRefType.getRank(); i-- > 0;) {
    strides[i] = runningStride;

    int64_t size = memRefType.getShape()[i];
    if (size == 0)
      continue;
    bool useSizeAsStride = stride == 1;
    if (size == ShapedType::kDynamicSize)
      stride = ShapedType::kDynamicSize;
    if (stride != ShapedType::kDynamicSize)
      stride *= size;

    if (useSizeAsStride)
      runningStride = sizes[i];
    else if (stride == ShapedType::kDynamicSize)
      runningStride =
          rewriter.create<LLVM::MulOp>(loc, runningStride, sizes[i]);
    else
      runningStride = createIndexConstant(rewriter, loc, stride);
  }

  // Buffer size in bytes.
  Type elementPtrType = getElementPtrType(memRefType);
  Value nullPtr = rewriter.create<LLVM::NullOp>(loc, elementPtrType);
  Value gepPtr =
      rewriter.create<LLVM::GEPOp>(loc, elementPtrType, nullPtr, runningStride);
  sizeBytes = rewriter.create<LLVM::PtrToIntOp>(loc, getIndexType(), gepPtr);
}

Value RemoteMemLoweringPattern::getSizeInBytes(
    Location loc, Type type, ConversionPatternRewriter &rewriter) const {
  // Compute the size of an individual element. This emits the MLIR equivalent
  // of the following sizeof(...) implementation in LLVM IR:
  //   %0 = getelementptr %elementType* null, %indexType 1
  //   %1 = ptrtoint %elementType* %0 to %indexType
  // which is a common pattern of getting the size of a type in bytes.
  auto convertedPtrType =
      LLVM::LLVMPointerType::get(typeConverter->convertType(type));
  auto nullPtr = rewriter.create<LLVM::NullOp>(loc, convertedPtrType);
  auto gep = rewriter.create<LLVM::GEPOp>(loc, convertedPtrType, nullPtr,
                                          ArrayRef<LLVM::GEPArg>{1});
  return rewriter.create<LLVM::PtrToIntOp>(loc, getIndexType(), gep);
}

Value RemoteMemLoweringPattern::getNumElements(
    Location loc, ArrayRef<Value> shape,
    ConversionPatternRewriter &rewriter) const {
  // Compute the total number of memref elements.
  Value numElements =
      shape.empty() ? createIndexConstant(rewriter, loc, 1) : shape.front();
  for (unsigned i = 1, e = shape.size(); i < e; ++i)
    numElements = rewriter.create<LLVM::MulOp>(loc, numElements, shape[i]);
  return numElements;
}

/// Creates and populates the memref descriptor struct given all its fields.
MemRefDescriptor RemoteMemLoweringPattern::createMemRefDescriptor(
    Location loc, MemRefType memRefType, Value allocatedPtr, Value alignedPtr,
    ArrayRef<Value> sizes, ArrayRef<Value> strides,
    ConversionPatternRewriter &rewriter) const {
  auto structType = typeConverter->convertType(memRefType);
  auto memRefDescriptor = MemRefDescriptor::undef(rewriter, loc, structType);

  // Field 1: Allocated pointer, used for malloc/free.
  memRefDescriptor.setAllocatedPtr(rewriter, loc, allocatedPtr);

  // Field 2: Actual aligned pointer to payload.
  memRefDescriptor.setAlignedPtr(rewriter, loc, alignedPtr);

  // Field 3: Offset in aligned pointer.
  memRefDescriptor.setOffset(rewriter, loc,
                             createIndexConstant(rewriter, loc, 0));

  // Fields 4: Sizes.
  for (const auto &en : llvm::enumerate(sizes))
    memRefDescriptor.setSize(rewriter, loc, en.index(), en.value());

  // Field 5: Strides.
  for (const auto &en : llvm::enumerate(strides))
    memRefDescriptor.setStride(rewriter, loc, en.index(), en.value());

  return memRefDescriptor;
}

// block_base = lbase + (index % num_blocks) * block_size
Value RemoteMemLoweringPattern::getBlockAddr(ModuleOp mop, Value curIndex, LocalCache &cache, Location loc, ConversionPatternRewriter &rewriter) const {
  LLVM::GlobalOp rbuf = rmem::getOrCreateRbuf(mop);
  Value addressOf = rewriter.create<LLVM::AddressOfOp>(
    loc, rbuf);
  Value lbase = rewriter.create<LLVM::LoadOp>(loc, addressOf);

  Value blockSizeInBytes = rewriter.create<arith::MulIOp>(loc, 
    rewriter.create<arith::ConstantIntOp>(loc, cache.blockSize, 64),
    rewriter.create<rmem::SizeOfOp>(loc, rewriter.getI64Type(), cache.eleType)
  );

  Value curInd64 = rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), curIndex);

  Value loffset = rewriter.create<arith::MulIOp>(loc,
    blockSizeInBytes,
    rewriter.create<arith::RemSIOp>(loc, 
      curInd64,
      rewriter.create<arith::ConstantIntOp>(loc, cache.nBlocks, 64)
    )
  );
  // get local rdma address with offset 
  auto gep = rewriter.create<LLVM::GEPOp>(
    loc, this->getVoidPtrType(), lbase,
    SmallVector<LLVM::GEPArg>({loffset}));
  return gep;
}