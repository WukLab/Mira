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
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Lowering/Common/PatternBase.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "Lowering/MemRefRemote/MemRefRemote.h"
#include "Lowering/MemRefRemote/AllocLikeConversion.h"
#include "mlir/Transforms/DialectConversion.h"

namespace mlir {
#define GEN_PASS_DEF_LOWERRMEMINMEMREF
#include "Lowering/Passes.h.inc"
using namespace mlir::rmem;

namespace {

//========================================
// Patterns
//========================================

/// Returns the LLVM type of the global variable given the memref type `type`.
static Type convertGlobalMemrefTypeToLLVM(MemRefType type,
                                          RemoteMemTypeLowerer &typeConverter) {
  // LLVM type for a global memref will be a multi-dimension array. For
  // declarations or uninitialized global memrefs, we can potentially flatten
  // this to a 1D array. However, for memref.global's with an initial value,
  // we do not intend to flatten the ElementsAttribute when going from std ->
  // LLVM dialect, so the LLVM type needs to be a multi-dimension array.
  Type elementType = typeConverter.convertType(type.getElementType());
  Type arrayTy = elementType;
  // Shape has the outermost dim at index 0, so need to walk it backwards
  for (int64_t dim : llvm::reverse(type.getShape()))
    arrayTy = LLVM::LLVMArrayType::get(arrayTy, dim);
  return arrayTy;
}

class RMemRefGlobalOpLowering : public RemoteMemOpLoweringPattern<rmem::MemRefGlobalOp> {
  using RemoteMemOpLoweringPattern<rmem::MemRefGlobalOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::MemRefGlobalOp global, rmem::MemRefGlobalOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    MemRefType type = rmem::getRawTypeFromRemotedType(global.getType()).cast<MemRefType>();
    if (!isConvertibleAndHasIdentityMaps(type))
      return failure();

    Type arrayTy = convertGlobalMemrefTypeToLLVM(type, *getTypeConverter());

    LLVM::Linkage linkage =
        global.isPublic() ? LLVM::Linkage::External : LLVM::Linkage::Private;

    Attribute initialValue = nullptr;
    if (!global.isExternal() && !global.isUninitialized()) {
      auto elementsAttr = global.getInitialValue()->cast<ElementsAttr>();
      initialValue = elementsAttr;

      // For scalar memrefs, the global variable created is of the element type,
      // so unpack the elements attribute to extract the value.
      if (type.getRank() == 0)
        initialValue = elementsAttr.getSplatValue<Attribute>();
    }

    uint64_t alignment = global.getAlignment().value_or(0);

    auto newGlobal = rewriter.replaceOpWithNewOp<LLVM::GlobalOp>(
        global, arrayTy, global.getConstant(), linkage, global.getSymName(),
        initialValue, alignment, type.getMemorySpaceAsInt());
    if (!global.isExternal() && global.isUninitialized()) {
      Block *blk = new Block();
      newGlobal.getInitializerRegion().push_back(blk);
      rewriter.setInsertionPointToStart(blk);
      Value undef[] = {
          rewriter.create<LLVM::UndefOp>(global.getLoc(), arrayTy)};
      rewriter.create<LLVM::ReturnOp>(global.getLoc(), undef);
    }
    return success();
  }
};

class RMemRefGetGlobalOpLowering : public RMemAllocLikeOpLLVMLowering {
public:
  RMemRefGetGlobalOpLowering(RemoteMemTypeLowerer &typeConverter, MLIRContext *ctx) : RMemAllocLikeOpLLVMLowering(rmem::MemRefGetGlobalOp::getOperationName(), typeConverter, ctx) {}

  std::tuple<Value, Value> allocateBuffer(ConversionPatternRewriter &rewriter, Location loc, Value sizeInBytes, Operation *op) const override {
    auto getGlobalOp = dyn_cast<rmem::MemRefGetGlobalOp>(op);
    MemRefType globType = getGlobalOp.getResult().getType().cast<MemRefType>();
    MemRefType rawType = rmem::getRawTypeFromRemotedType(globType).dyn_cast<MemRefType>();
    unsigned memSpace = globType.getMemorySpaceAsInt();

    Type arrayTy = convertGlobalMemrefTypeToLLVM(rawType, *getTypeConverter());
    auto addressOf = rewriter.create<LLVM::AddressOfOp>(
        loc, LLVM::LLVMPointerType::get(arrayTy, memSpace),
        getGlobalOp.getName());

    // Get the address of the first element in the array by creating a GEP with
    // the address of the GV as the base, and (rank + 1) number of 0 indices.
    Type elementType = typeConverter->convertType(globType.getElementType());
    Type elementPtrType = LLVM::LLVMPointerType::get(elementType, memSpace);

    auto gep = rewriter.create<LLVM::GEPOp>(
        loc, elementPtrType, addressOf,
        SmallVector<LLVM::GEPArg>(rawType.getRank() + 1, 0));

    // We do not expect the memref obtained using `memref.get_global` to be
    // ever deallocated. Set the allocated pointer to be known bad value to
    // help debug if that ever happens.
    auto intPtrType = getIntPtrType(memSpace);
    Value deadBeefConst =
        createIndexAttrConstant(rewriter, loc, intPtrType, 0xdeadbeef);
    auto deadBeefPtr =
        rewriter.create<LLVM::IntToPtrOp>(loc, elementPtrType, deadBeefConst);

    // Both allocated and aligned pointers are same. We could potentially stash
    // a nullptr for the allocated pointer since we do not expect any dealloc.
    return std::make_tuple(deadBeefPtr, gep); 
  }
};



class RMemRefAllocOpLowering : public RMemAllocLikeOpLLVMLowering {
public:
  RMemRefAllocOpLowering(RemoteMemTypeLowerer &typeConverter, MLIRContext *ctx) : RMemAllocLikeOpLLVMLowering(rmem::MemRefAllocOp::getOperationName(), typeConverter, ctx) {}

  std::tuple<Value, Value> allocateBuffer(ConversionPatternRewriter &rewriter, Location loc, Value sizeBytes, Operation *op) const override {
    rmem::MemRefAllocOp allocOp = cast<rmem::MemRefAllocOp>(op);
    return allocateBufferManuallyAlign(
        rewriter, loc, 
        sizeBytes, rmem::createIntConstant(rewriter, allocOp.getLoc(), allocOp.getPoolId(), rmem::getIntBitType(allocOp.getContext(), 32)),
        op, getAlignment(rewriter, loc, cast<rmem::MemRefAllocOp>(op)));
  }
};


/// Common base for load and store operations on MemRefs. Restricts the match
/// to supported MemRef types. Provides functionality to emit code accessing a
/// specific element of the underlying data buffer.
template <typename Derived>
struct LoadStoreOpLowering : public RemoteMemOpLoweringPattern<Derived> {
  using RemoteMemOpLoweringPattern<Derived>::RemoteMemOpLoweringPattern;
  using RemoteMemOpLoweringPattern<Derived>::isConvertibleAndHasIdentityMaps;
  using Base = LoadStoreOpLowering<Derived>;

  LogicalResult match(Derived op) const override {
    MemRefType type = rmem::getRawTypeFromRemotedType(op.getMemRefType()).template cast<MemRefType>();
    return isConvertibleAndHasIdentityMaps(type) ? success() : failure();
  }
};

// Load operation is lowered to obtaining a pointer to the indexed element
// and loading it.
struct RMemRefLoadOpLowering : public LoadStoreOpLowering<rmem::MemRefLoadOp> {
  using Base::Base;

  LogicalResult
  matchAndRewrite(rmem::MemRefLoadOp loadOp, rmem::MemRefLoadOpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    auto type = rmem::getRawTypeFromRemotedType(loadOp.getMemRefType()).template cast<MemRefType>();

    Value dataPtr =
        getStridedElementPtr(loadOp.getLoc(), type, adaptor.getMemref(),
                             adaptor.getIndices(), rewriter);
    if (auto rmrefType = loadOp.getMemRefType().dyn_cast<rmem::RemoteMemRefType>()) {
      if (rmrefType.getCanRemote()) {
        dataPtr = materializeDisaggVirtualAddress(rewriter, loadOp, dataPtr, dataPtr.getType(), ACCESS);
      }
    } 
    rewriter.replaceOpWithNewOp<LLVM::LoadOp>(loadOp, dataPtr);
    return success();
  }
};

// Store operation is lowered to obtaining a pointer to the indexed element,
// and storing the given value to it.
struct RMemRefStoreOpLowering : public LoadStoreOpLowering<rmem::MemRefStoreOp> {
  using Base::Base;

  LogicalResult
  matchAndRewrite(rmem::MemRefStoreOp op, rmem::MemRefStoreOpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    auto type = rmem::getRawTypeFromRemotedType(op.getMemRefType()).template cast<MemRefType>();
    Value dataPtr = getStridedElementPtr(op.getLoc(), type, adaptor.getMemref(),
                                         adaptor.getIndices(), rewriter);
    if (auto rmrefType = op.getMemRefType().dyn_cast<rmem::RemoteMemRefType>()) {
      if (rmrefType.getCanRemote()) {
        dataPtr = materializeDisaggVirtualAddress(rewriter, op, dataPtr, dataPtr.getType(), ACCESS_MUT);
      }
    }
    rewriter.replaceOpWithNewOp<LLVM::StoreOp>(op, adaptor.getValue(), dataPtr);
    return success();
  }
};

class RMemRefCastOpLowering : public RemoteMemOpLoweringPattern<rmem::MemRefCastOp> {
public:
  using RemoteMemOpLoweringPattern<rmem::MemRefCastOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::MemRefCastOp op, rmem::MemRefCastOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Location loc = op.getLoc();
    // use other pattern to lower memref
    Value srcMemRef = rewriter.create<UnrealizedConversionCastOp>(loc, 
      rmem::getRawTypeFromRemotedType(op.getSource().getType()),
      adaptor.getSource()
    ).getResult(0);
    Value destMemRef = rewriter.create<memref::CastOp>(loc,
      rmem::getRawTypeFromRemotedType(op.getDest().getType()),
      srcMemRef
    );
    rewriter.replaceOp(op, destMemRef);
    return mlir::success();
  }
};

class RMemRefReinterpretCastOpLowering : public RemoteMemOpLoweringPattern<rmem::MemRefReinterpretCastOp> {
public:
  using RemoteMemOpLoweringPattern<rmem::MemRefReinterpretCastOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::MemRefReinterpretCastOp op, rmem::MemRefReinterpretCastOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Location loc = op.getLoc();
    // use other pattern to lower memref
    Value srcMemRef = rewriter.create<UnrealizedConversionCastOp>(loc, 
      rmem::getRawTypeFromRemotedType(op.getSource().getType()),
      adaptor.getSource()
    ).getResult(0);
    Value destMemRef = rewriter.create<memref::ReinterpretCastOp>(loc,
      rmem::getRawTypeFromRemotedType(op.getResult().getType()),
      srcMemRef,
      adaptor.getOffsets(),
      adaptor.getSizes(),
      adaptor.getStrides(),
      adaptor.getStaticOffsetsAttr(),
      adaptor.getStaticSizesAttr(),
      adaptor.getStaticStridesAttr()
    );
    rewriter.replaceOp(op, destMemRef);
    return mlir::success();
  }
};


class RemoteMemAsyncRDMALowering : public RemoteMemOpLoweringPattern<rmem::AsyncRDMAOp> {
public:
  RemoteMemAsyncRDMALowering(
    DenseMap<StringRef, LocalCache> &pools,
    rmem::RemoteMemTypeLowerer &typeConverter, 
    MLIRContext *ctx)
    : RemoteMemOpLoweringPattern<rmem::AsyncRDMAOp>::RemoteMemOpLoweringPattern(typeConverter, ctx), pools(pools) {}

  LogicalResult matchAndRewrite(rmem::AsyncRDMAOp op, rmem::AsyncRDMAOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    ModuleOp mop = op->getParentOfType<ModuleOp>();
    Location loc = op.getLoc();
    Type relType = op.getLocalRef().getType();
    if (!relType.isa<MemRefType>())
      return mlir::failure();

    // memref = rmem.slot %index, %mem_from
    Value localMemRef = rewriter.create<rmem::GetSlotOp>(loc, relType, op.getMemAttr(), op.getIndex());
    Value lbaseAddr = rewriter.create<arith::IndexCastOp>(loc, 
      rewriter.getI64Type(),
      rewriter.create<memref::ExtractAlignedPointerAsIndexOp>(loc, 
        rewriter.getIndexType(), localMemRef
      )
    );

    /* make rdma request */
    LLVM::LLVMFuncOp rdmaFn = lookupOrCreateRDMAFn(mop);
    // prepare transfer size
    Value transferInBytes;
    MemRefType localMemRefType = relType.cast<MemRefType>();
    SmallVector<Value, 2> sizes;
    SmallVector<Value, 2> strides;
    SmallVector<Value, 0> dynSizeOpds;
    this->getMemRefDescriptorSizes(loc, localMemRefType, dynSizeOpds, rewriter, sizes,
                                  strides, transferInBytes);

    // get remote base addr
    MemRefDescriptor rmemrefDesc(adaptor.getRbase());
    Value rbase = rmemrefDesc.alignedPtr(rewriter, loc);
    Value mapOffset = rewriter.create<arith::IndexCastOp>(loc, 
      rewriter.getI64Type(),
      rewriter.create<AffineApplyOp>(loc, op.getMap(), op.getMapInput())
    );
    Value totalOffset = rewriter.create<arith::AddIOp>(loc, 
      rewriter.getI64Type(),
      mapOffset, rmemrefDesc.offset(rewriter, loc)
    );

    Value rAddr = rewriter.create<LLVM::PtrToIntOp>(loc, 
      rewriter.getI64Type(),
      rewriter.create<LLVM::GEPOp>(loc,
        rbase.getType(),
        rbase,
        SmallVector<LLVM::GEPArg>({totalOffset})
      )
    );

    rmem::createLLVMCall(rewriter, loc, rdmaFn, {
      lbaseAddr, // rdma rbuf local addr
      transferInBytes, // i64
      rAddr, // target remote address
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), adaptor.getReqID()), // wrid
      rewriter.create<arith::ConstantIntOp>(loc, op.getWrType(), 32) // wr code
    });

    rewriter.replaceOp(op, {localMemRef});
    return mlir::success();
  }

  DenseMap<StringRef, LocalCache> &pools;
};

class RemoteMemAffineReqLoering : public RemoteMemOpLoweringPattern<rmem::AffineReqOp> {
public:
  RemoteMemAffineReqLoering(
  rmem::RemoteMemTypeLowerer &typeConverter,
  MLIRContext *ctx)
  : RemoteMemOpLoweringPattern<rmem::AffineReqOp>::RemoteMemOpLoweringPattern(typeConverter, ctx) {} 

  LogicalResult matchAndRewrite(rmem::AffineReqOp op, rmem::AffineReqOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Location loc = op.getLoc();

    // get remote base addr
    MemRefDescriptor rmemrefDesc(adaptor.getRbase());
    Value rbase = rmemrefDesc.alignedPtr(rewriter, loc);
    Value mapOffset = rewriter.create<arith::IndexCastOp>(loc, 
      rewriter.getI64Type(),
      rewriter.create<AffineApplyOp>(loc, op.getMap(), op.getMapInput())
    );
    Value totalOffset = rewriter.create<arith::AddIOp>(loc, 
      rewriter.getI64Type(),
      mapOffset, rmemrefDesc.offset(rewriter, loc)
    );
    Value rAddr = rewriter.create<LLVM::GEPOp>(loc,
        rbase.getType(),
        rbase,
        SmallVector<LLVM::GEPArg>({totalOffset}));
    Value slot = rewriter.create<rmem::RequestOp>(loc,
      rewriter.getI32Type(),
      rAddr,
      adaptor.getCacheIdAttr()
    );
    rewriter.replaceOp(op, slot);
    return mlir::success();
  }
};

class RemoteMemAffinePaddrLowering : public RemoteMemOpLoweringPattern<rmem::AffinePaddrOp> {
public:
  using RemoteMemOpLoweringPattern<rmem::AffinePaddrOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::AffinePaddrOp op, rmem::AffinePaddrOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Location loc = op.getLoc();
    Type relType = op.getLocalRef().getType();
    if (!relType.isa<MemRefType>())
      return mlir::failure();
    MemRefType memRefType = relType.cast<MemRefType>();

    // get remote base addr
    MemRefDescriptor rmemrefDesc(adaptor.getRbase());
    Value rbase = rmemrefDesc.alignedPtr(rewriter, loc);
    Value mapOffset = rewriter.create<arith::IndexCastOp>(loc, 
      rewriter.getI64Type(),
      rewriter.create<AffineApplyOp>(loc, op.getMap(), op.getMapInput())
    );
    Value totalOffset = rewriter.create<arith::AddIOp>(loc, 
      rewriter.getI64Type(),
      mapOffset, rmemrefDesc.offset(rewriter, loc)
    );
    Value rAddr = rewriter.create<LLVM::GEPOp>(loc,
        rbase.getType(),
        rbase,
        SmallVector<LLVM::GEPArg>({totalOffset}));

    // get raw pointer
    unsigned cache_id = op.getRbase().getType().cast<RemoteMemRefType>().getCanRemote();  
    Value laddr = rewriter.create<rmem::PaddrOp>(loc, 
      rbase.getType(),
      adaptor.getOffset(), rAddr, rewriter.getI32IntegerAttr(cache_id)
    );

    SmallVector<Value, 2> sizes;
    SmallVector<Value, 2> strides;
    SmallVector<Value, 0> dynSizeOpds;
    Value sizeBytes;
    this->getMemRefDescriptorSizes(loc, memRefType, dynSizeOpds, rewriter, sizes,
                                  strides, sizeBytes);

    // The allocated address is pinned by rdma, we do not expect it to be ever freed
    // Set to known bad value to help debugging
    auto intPtrType = getIntPtrType(memRefType.getMemorySpaceAsInt());
    Value deadBeefConst =
      createIndexAttrConstant(rewriter, loc, intPtrType, 0xdeadbeef);
    auto deadBeefPtr =
      rewriter.create<LLVM::IntToPtrOp>(loc, rbase.getType(), deadBeefConst); 

    // Create the MemRef descriptor.
    auto memRefDescriptor = this->createMemRefDescriptor(
        loc, memRefType, deadBeefPtr, laddr, sizes, strides, rewriter);

    // Return the final value of the descriptor.
    rewriter.replaceOp(op, {memRefDescriptor});
    return mlir::success();
  }
};

class RemoteMemGetSlotLowering : public RemoteMemOpLoweringPattern<rmem::GetSlotOp> {
public:
  RemoteMemGetSlotLowering(
    DenseMap<StringRef, LocalCache> &pools,
    rmem::RemoteMemTypeLowerer &typeConverter, 
    MLIRContext *ctx)
    : RemoteMemOpLoweringPattern<rmem::GetSlotOp>::RemoteMemOpLoweringPattern(typeConverter, ctx), pools(pools) {}

  std::tuple<Value, Value>
  pinBuffer(ConversionPatternRewriter &rewriter, Location loc, rmem::GetSlotOp op, rmem::GetSlotOpAdaptor adaptor, MemRefType memRefType) const {
    unsigned memSpace = memRefType.getMemorySpaceAsInt(); 
    Type elementType = typeConverter->convertType(memRefType.getElementType());
    Type elementPtrType = LLVM::LLVMPointerType::get(elementType, memSpace);

    // The allocated address is pinned by rdma, we do not expect it to be ever freed
    // Set to known bad value to help debugging
    auto intPtrType = getIntPtrType(memSpace);
    Value deadBeefConst =
      createIndexAttrConstant(rewriter, loc, intPtrType, 0xdeadbeef);
    auto deadBeefPtr =
      rewriter.create<LLVM::IntToPtrOp>(loc, elementPtrType, deadBeefConst); 

    LocalCache &cache = pools[op.getMem()];
    Value blockAddr = this->getBlockAddr(op->getParentOfType<ModuleOp>(), adaptor.getIndex(), cache, loc, rewriter);
    blockAddr = rewriter.create<LLVM::BitcastOp>(loc, elementPtrType, blockAddr);
    return std::make_tuple(deadBeefPtr, blockAddr);
  }

  LogicalResult matchAndRewrite(rmem::GetSlotOp op, rmem::GetSlotOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rmem::GetSlotOp getSlot = cast<rmem::GetSlotOp>(op);

    // if not memref type, hook on another conversion pass
    Type relType = getSlot.getSlot().getType();
    if (!relType.isa<MemRefType>())
      return mlir::failure();

    MemRefType memRefType = relType.cast<MemRefType>();

    auto loc = op->getLoc();
    SmallVector<Value, 2> sizes;
    SmallVector<Value, 2> strides;
    SmallVector<Value, 0> dynSizeOpds;
    Value sizeBytes;
    this->getMemRefDescriptorSizes(loc, memRefType, dynSizeOpds, rewriter, sizes,
                                  strides, sizeBytes);

    auto [allocatedPtr, alignedPtr] =
        this->pinBuffer(rewriter, loc, getSlot, adaptor, memRefType);

    // Create the MemRef descriptor.
    auto memRefDescriptor = this->createMemRefDescriptor(
        loc, memRefType, allocatedPtr, alignedPtr, sizes, strides, rewriter);

    // Return the final value of the descriptor.
    rewriter.replaceOp(op, {memRefDescriptor});
    return mlir::success();
  }

  DenseMap<StringRef, LocalCache> &pools;
};

}

class LowerRMemInMemRefPass : public impl::LowerRMemInMemRefBase<LowerRMemInMemRefPass> {
public:
  LowerRMemInMemRefPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    const auto &dataLayoutAnalysis = getAnalysis<DataLayoutAnalysis>();
    LowerToLLVMOptions options(&getContext(),
                               dataLayoutAnalysis.getAtOrAbove(op));
    options.allocLowering =
        (useAlignedAlloc ? LowerToLLVMOptions::AllocLowering::AlignedAlloc
                         : LowerToLLVMOptions::AllocLowering::Malloc); 
    options.useGenericFunctions = useGenericFunctions;

    if (indexBitwidth != kDeriveIndexBitwidthFromDataLayout)
      options.overrideIndexBitwidth(indexBitwidth);

    // get local caches
    DenseMap<StringRef, LocalCache> pools;
    if (auto ts = op->getAttrOfType<DictionaryAttr>("rmem.templates")) {
      for (auto p : ts) {
        pools[p.getName().getValue()] = LocalCache(p.getValue().cast<ArrayAttr>());
      }
    }

    RemoteMemTypeLowerer typeConverter(&getContext(), options, &dataLayoutAnalysis);
    RewritePatternSet patterns(&getContext());
    populateLowerMemRefRMemPatterns(typeConverter, patterns, pools);

    ConversionTarget target(getContext());
    target.addLegalDialect<LLVM::LLVMDialect>();
    // target.addIllegalDialect<rmem::RemoteMemDialect>();
    target.addIllegalOp<
      rmem::MemRefGlobalOp, 
      rmem::MemRefGetGlobalOp,
      rmem::MemRefAllocOp
    >();
    target.addDynamicallyLegalOp<rmem::GetSlotOp>([](rmem::GetSlotOp op) {
      return !op.getSlot().getType().isa<MemRefType>();
    });
    target.addDynamicallyLegalOp<rmem::AsyncRDMAOp>([](rmem::AsyncRDMAOp op) {
      return !op.getLocalRef().getType().isa<MemRefType>();
    });

    target.addLegalOp<UnrealizedConversionCastOp>();
    target.markUnknownOpDynamicallyLegal([](Operation *op) {
      return true;
    });

    if (failed(applyPartialConversion(op, target, std::move(patterns))))
      signalPassFailure();
  }
};


void populateLowerMemRefRMemPatterns (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns, DenseMap<StringRef, LocalCache> &pools) {
  patterns.add<
    RMemRefGlobalOpLowering,
    RMemRefGetGlobalOpLowering,
    RMemRefAllocOpLowering,
    RMemRefLoadOpLowering,
    RMemRefStoreOpLowering,
    RMemRefCastOpLowering,
    RMemRefReinterpretCastOpLowering,
    RemoteMemAffinePaddrLowering,
    RemoteMemAffineReqLoering
  >(converter, &converter.getContext());

  patterns.add<
    RemoteMemGetSlotLowering,
    RemoteMemAsyncRDMALowering
  >(pools, converter, &converter.getContext());
}

std::unique_ptr<Pass> createConvertMemRefRemotePass() {
  return std::make_unique<LowerRMemInMemRefPass>();
}

}//namespace mlir