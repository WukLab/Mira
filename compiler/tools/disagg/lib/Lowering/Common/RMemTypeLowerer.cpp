#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Transforms/DialectConversion.h"
#include "Dialect/RemoteMem.h"
#include "Lowering/Common/RMemTypeLowerer.h"
// #include "Lowering/Common/RMemRefBuilder.h"
#include "mlir/Conversion/LLVMCommon/MemRefBuilder.h"

using namespace mlir;
using namespace mlir::rmem;

RemoteMemTypeLowerer::RemoteMemTypeLowerer(MLIRContext *ctx, const DataLayoutAnalysis *analysis) :
  RemoteMemTypeLowerer(ctx, LowerToLLVMOptions(ctx), analysis) {}

RemoteMemTypeLowerer::RemoteMemTypeLowerer(MLIRContext *ctx, const LowerToLLVMOptions &options, const DataLayoutAnalysis *analysis):
  rmemDialect(ctx->getOrLoadDialect<RemoteMemDialect>()) ,
  options(options), dataLayoutAnalysis(analysis) {
  assert(rmemDialect && "Remote Mem Dialect is not loaded");

    // Register conversions for the builtin types.
  addConversion([&](ComplexType type) { return convertComplexType(type); });
  addConversion([&](FloatType type) { return convertFloatType(type); });
  addConversion([&](FunctionType type) { return convertFunctionType(type); });
  addConversion([&](IndexType type) { return convertIndexType(type); });
  addConversion([&](IntegerType type) { return convertIntegerType(type); });
  addConversion([&](VectorType type) { return convertVectorType(type); });
  addConversion([&](MemRefType type) -> llvm::Optional<Type> {
    // Convert raw memref to descriptor as well
    SmallVector<Type, 5> types =
    getMemRefDescriptorFields(type, /*unpackAggregates=*/false);
    if (types.empty())
      return {};
    return LLVM::LLVMStructType::getLiteral(&getContext(), types);
  });
  addConversion([&](UnrankedMemRefType type) -> llvm::Optional<Type> {
    return LLVM::LLVMStructType::getLiteral(&getContext(),
                                          getUnrankedMemRefDescriptorFields());
  });
  addConversion([](Type type) {
    return LLVM::isCompatibleType(type) ? llvm::Optional<Type>(type)
                                        : llvm::None;
  });
  addConversion([&](RemoteMemRefType type) { return convertRemoteMemRefToPtr(type); });
  addConversion([&](RemoteMemRefType type) { return convertRemoteMemRefToMemRefDesc(type); });
  addConversion([&](RemoteMemRefType type) { return convertRemoteMemRefToUnrankedDesc(type); });
  addConversion([&](LLVM::LLVMPointerType type) -> llvm::Optional<Type> {
    if (type.isOpaque())
      return type;
    if (auto pointee = convertType(type.getElementType())) {
      return LLVM::LLVMPointerType::get(pointee, type.getAddressSpace());
    }
    return llvm::None;
  });
  addConversion([&](LLVM::LLVMStructType type, 
                  SmallVectorImpl<Type> &results,
                  ArrayRef<Type> callStack) ->
  llvm::Optional<LogicalResult> {
    return convertStructType(type, results, callStack);
  });
  addConversion([&](LLVM::LLVMArrayType type) -> llvm::Optional<Type> {
    if (auto element = convertType(type.getElementType()))
      return LLVM::LLVMArrayType::get(element, type.getNumElements());
    return llvm::None;
  });
  addConversion([&](FunctionType type) {
    return convertFunctionType(type);
  });

  addArgumentMaterialization(
    [&](OpBuilder &builder, Type type, ValueRange inputs, Location loc) -> llvm::Optional<Value> {
      auto convOp = builder.create<UnrealizedConversionCastOp>(loc, type, inputs);
      convOp->setAttr("lower_arg_mat", builder.getBoolAttr(true));
      return convOp.getResult(0);
    }
  );
  addSourceMaterialization([&](OpBuilder &builder, Type resultType,
                               ValueRange inputs,
                               Location loc) -> Optional<Value> {
    auto convOp = builder.create<UnrealizedConversionCastOp>(loc, resultType, inputs);
    convOp->setAttr("lower_src_mat", builder.getBoolAttr(true));
    return convOp.getResult(0);
  });
  addTargetMaterialization([&](OpBuilder &builder, Type resultType,
                               ValueRange inputs,
                               Location loc) -> Optional<Value> {
  auto convOp = builder.create<UnrealizedConversionCastOp>(loc, resultType, inputs);
  convOp->setAttr("lower_tgt_mat", builder.getBoolAttr(true));
  return convOp.getResult(0);
  });

  // // default rountine 
  // addConversion([&](Type type) {
  //   return rmem::hasRemoteTarget(type) ? llvm::None : llvm::Optional<Type>(type);
  // });
}

MLIRContext &RemoteMemTypeLowerer::getContext() {
  return *getDialect()->getContext();
}

Type RemoteMemTypeLowerer::getIndexType() {
  return IntegerType::get(&getContext(), getIndexTypeBitwidth());
}

unsigned RemoteMemTypeLowerer::getPointerBitwidth(unsigned addressSpace) {
  return options.dataLayout.getPointerSizeInBits(addressSpace);
}

Type RemoteMemTypeLowerer::convertIndexType(IndexType type) {
  // return getIndexType();
  return type;
}

Type RemoteMemTypeLowerer::convertIntegerType(IntegerType type) {
  return IntegerType::get(&getContext(), type.getWidth());
}

Type RemoteMemTypeLowerer::convertFloatType(FloatType type) { return type; }

Type RemoteMemTypeLowerer::convertVectorType(VectorType type) {
  auto elementType = convertType(type.getElementType());
  if (!elementType)
    return {};
  if (type.getShape().empty())
    return VectorType::get({1}, elementType);
  Type vectorType = VectorType::get(type.getShape().back(), elementType,
                                    type.getNumScalableDims());
  assert(LLVM::isCompatibleVectorType(vectorType) &&
         "expected vector type compatible with the LLVM dialect");
  auto shape = type.getShape();
  for (int i = shape.size() - 2; i >= 0; --i)
    vectorType = LLVM::LLVMArrayType::get(vectorType, shape[i]);
  return vectorType;
}

// Convert a `ComplexType` to an LLVM type. The result is a complex number
// struct with entries for the
//   1. real part and for the
//   2. imaginary part.
Type RemoteMemTypeLowerer::convertComplexType(ComplexType type) {
  auto elementType = convertType(type.getElementType());
  return LLVM::LLVMStructType::getLiteral(&getContext(),
                                          {elementType, elementType});
}

llvm::Optional<Type> RemoteMemTypeLowerer::convertRemoteMemRefToPtr(RemoteMemRefType type) {
  // if is not pointer type, try other conversion
  Type eleTy = type.getElementType();
  if (!eleTy.isa<LLVM::LLVMPointerType>()) {
    return llvm::None;
  }

  auto ptrType = eleTy.cast<LLVM::LLVMPointerType>();
  if (ptrType.isOpaque()) {
    return LLVM::LLVMPointerType::get(ptrType.getContext(), 0);
  }
  if (auto pointee = convertType(ptrType.getElementType())) {
    return LLVM::LLVMPointerType::get(pointee, 0);
  }
  return {};
}

llvm::Optional<Type> RemoteMemTypeLowerer::convertRemoteMemRefToMemRefDesc(RemoteMemRefType type) {
  if (!type.getElementType().isa<MemRefType>()) 
    return llvm::None;
  SmallVector<Type, 5> types =
      getMemRefDescriptorFields(type.getElementType().cast<MemRefType>(), /*unpackAggregates=*/false);
  if (types.empty()) return {};
  return LLVM::LLVMStructType::getLiteral(&getContext(), types);
}

/// Convert an unranked memref type into a list of non-aggregate LLVM IR types
/// that will form the unranked memref descriptor. In particular, the fields
/// for an unranked memref descriptor are:
/// 1. index-typed rank, the dynamic rank of this MemRef
/// 2. void* ptr, pointer to the static ranked MemRef descriptor. This will be
///    stack allocated (alloca) copy of a MemRef descriptor that got casted to
///    be unranked.
SmallVector<Type, 2> RemoteMemTypeLowerer::getUnrankedMemRefDescriptorFields() {
  return {getIndexType(),
          LLVM::LLVMPointerType::get(IntegerType::get(&getContext(), 8))};
}

llvm::Optional<Type> RemoteMemTypeLowerer::convertRemoteMemRefToUnrankedDesc(RemoteMemRefType type) {
  if (!type.getElementType().isa<UnrankedMemRefType>()) 
    return llvm::None;
  return LLVM::LLVMStructType::getLiteral(&getContext(),
                                          getUnrankedMemRefDescriptorFields());
}

llvm::Optional<LogicalResult> RemoteMemTypeLowerer::convertStructType(LLVM::LLVMStructType type, SmallVectorImpl<Type> &results, ArrayRef<Type> callStack) {
  if (!hasRemoteTarget(type) && LLVM::isCompatibleType(type)) {
    results.push_back(type);
    return mlir::success();
  }

  if (type.isIdentified()) {
    auto convertedType = LLVM::LLVMStructType::getIdentified(
      type.getContext(), ("_Lowered_" + type.getName()).str());
    unsigned counter = 1;
    while (convertedType.isInitialized()) {
      assert(counter != UINT_MAX && "about to overflow struct naming counter");
      convertedType = LLVM::LLVMStructType::getIdentified(
        type.getContext(), ("_Lowered_" + std::to_string(counter) + type.getName()).str());
    }
    // recursive type, the given type has been converted
    if (llvm::count(callStack, type) > 1) {
      results.push_back(convertedType);
      return mlir::success();
    }

    // first encounter
    SmallVector<Type> convertedElementTypes;
    convertedElementTypes.reserve(type.getBody().size());
    if (failed(convertTypes(type.getBody(), convertedElementTypes)))
      return llvm::None;
    if (failed(convertedType.setBody(convertedElementTypes, type.isPacked())))
      return mlir::failure();
    results.push_back(convertedType);
    return mlir::success();
  } else {
    SmallVector<Type> convertedElementTypes; 
    convertedElementTypes.reserve(type.getBody().size());
    if (failed(convertTypes(type.getBody(), convertedElementTypes))) 
      return llvm::None;
    auto convertedType = LLVM::LLVMStructType::getLiteral(type.getContext(), convertedElementTypes, type.isPacked());
    results.push_back(convertedType);
    return success();
  }
  return llvm::None;
}

/// Callback to convert function argument types. It converts a MemRef function
/// argument to a list of non-aggregate types containing descriptor
/// information, and an UnrankedmemRef function argument to a list containing
/// the rank and a pointer to a descriptor struct.
LogicalResult RemoteMemTypeLowerer::structFuncArgTypeConverter( 
      Type type,
      SmallVector<Type> &result) {
  if (auto memref = type.dyn_cast<MemRefType>()) {
    // In signatures, Memref descriptors are expanded into lists of
    // non-aggregate values.
    auto converted = getMemRefDescriptorFields(memref, /*unpackAggregates=*/true);
    if (converted.empty())
      return failure();
    result.append(converted.begin(), converted.end());
    return success();
  }
  if (type.isa<UnrankedMemRefType>()) {
    auto converted = getUnrankedMemRefDescriptorFields();
    if (converted.empty())
      return failure();
    result.append(converted.begin(), converted.end());
    return success();
  }
  auto converted = convertType(type);
  if (!converted)
    return failure();
  result.push_back(converted);
  return success();
}

Type RemoteMemTypeLowerer::packFunctionResults(TypeRange types) {
  assert(!types.empty() && "expected non-empty list of type");

  if (types.size() == 1)
    return convertCallingConventionType(types.front());

  SmallVector<Type, 8> resultTypes;
  resultTypes.reserve(types.size());
  for (auto t : types) {
    auto converted = convertCallingConventionType(t);
    if (!converted || !LLVM::isCompatibleType(converted))
      return {};
    resultTypes.push_back(converted);
  }

  return LLVM::LLVMStructType::getLiteral(&getContext(), resultTypes);
}

Type RemoteMemTypeLowerer::convertFunctionType(FunctionType functionType) {
  SignatureConversion conversion(functionType.getNumInputs());
  Type converted = convertFunctionSignature(functionType, conversion);
  return converted;
}

Type RemoteMemTypeLowerer::convertFunctionSignature(FunctionType funcTy, SignatureConversion &result) {
  for (auto &en : llvm::enumerate(funcTy.getInputs())) {
    SmallVector<Type> converted;
    converted.push_back(convertCallingConventionType(en.value()));
    result.addInputs(en.index(), converted);
  }

  SmallVector<Type, 4> resultTypes;
  for (Type t : funcTy.getResults()) {
    if (Type tt = convertCallingConventionType(t))
      resultTypes.push_back(tt);
    else
      return {}; 
  }
  return FunctionType::get(&getContext(), result.getConvertedTypes(), resultTypes);
}

Type RemoteMemTypeLowerer::convertCallingConventionType(Type type) {
  if (auto rmRef = type.dyn_cast<RemoteMemRefType>()) {
    Type ET = rmRef.getElementType();
    if (ET.isa<MemRefType, UnrankedMemRefType>())
      return rmem::getRawTypeFromRemotedType(ET);
  }
  if (type.isa<MemRefType, UnrankedMemRefType>()) {
    return rmem::getRawTypeFromRemotedType(type);
  }
  return convertType(type);
}

/// Convert a memref type into a list of LLVM IR types that will form the
/// memref descriptor. The result contains the following types:
///  1. The pointer to the allocated data buffer, followed by
///  2. The pointer to the aligned data buffer, followed by
///  3. A lowered `index`-type integer containing the distance between the
///  beginning of the buffer and the first element to be accessed through the
///  view, followed by
///  4. An array containing as many `index`-type integers as the rank of the
///  MemRef: the array represents the size, in number of elements, of the memref
///  along the given dimension. For constant MemRef dimensions, the
///  corresponding size entry is a constant whose runtime value must match the
///  static value, followed by
///  5. A second array containing as many `index`-type integers as the rank of
///  the MemRef: the second array represents the "stride" (in tensor abstraction
///  sense), i.e. the number of consecutive elements of the underlying buffer.
///  TODO: add assertions for the static cases.
///
///  If `unpackAggregates` is set to true, the arrays described in (4) and (5)
///  are expanded into individual index-type elements.
///
///  template <typename Elem, typename Index, size_t Rank>
///  struct {
///    Elem *allocatedPtr;
///    Elem *alignedPtr;
///    Index offset;
///    Index sizes[Rank]; // omitted when rank == 0
///    Index strides[Rank]; // omitted when rank == 0
///  };
SmallVector<Type, 5>
RemoteMemTypeLowerer::getMemRefDescriptorFields(MemRefType type,
                                             bool unpackAggregates) {
  assert(isStrided(type) &&
         "Non-strided layout maps must have been normalized away");

  Type elementType = convertType(type.getElementType());
  if (!elementType)
    return {};
  auto ptrTy =
      LLVM::LLVMPointerType::get(elementType, type.getMemorySpaceAsInt());
  auto indexTy = getIndexType();

  SmallVector<Type, 5> results = {ptrTy, ptrTy, indexTy};
  auto rank = type.getRank();
  if (rank == 0)
    return results;

  if (unpackAggregates)
    results.insert(results.end(), 2 * rank, indexTy);
  else
    results.insert(results.end(), 2, LLVM::LLVMArrayType::get(indexTy, rank));
  return results;
}