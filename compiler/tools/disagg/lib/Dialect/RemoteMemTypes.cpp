#include "Dialect/RemoteMemTypes.h"
#include "TypeDetail.h"
#include "Dialect/RemoteMem.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

using namespace mlir;
using namespace mlir::rmem;

#define GET_TYPEDEF_CLASSES
#include "Dialect/RemoteMemOpsTypes.cpp.inc"

//====--------------------------------------====
// Determine if a type contains remote mem type
//====--------------------------------------====
bool RemoteMemRefType::isValidElementType(Type elementType) {
  if (!elementType) return false;
  if (!elementType.isa<mlir::MemRefType, mlir::LLVM::LLVMPointerType, mlir::UnrankedMemRefType>()) return false;
  return true;
}

LogicalResult RemoteMemRefType::verify(function_ref<InFlightDiagnostic()> emitError, Type elementType, unsigned canRemote) { 
  if (!RemoteMemRefType::isValidElementType(elementType)) 
    return emitError() << "invalid pointer elementType: " << elementType;
  return success();
}

// Recursively find if a type contains remote memref
static inline bool hasRemoteTargetImpl(Type type, SetVector<Type> &callStack) {
  if (callStack.contains(type)) return false;
  callStack.insert(type);
  auto stackGurard = llvm::make_scope_exit([&] { callStack.pop_back(); });
  auto hasRemoteTargetHandler = [&](Type type) {
    return hasRemoteTargetImpl(type, callStack);
  };

  return llvm::TypeSwitch<Type, bool>(type)
  .Case<RemoteMemRefType>([](RemoteMemRefType) { return true; })
  .Case<LLVM::LLVMStructType>([&](auto structType) {
    return llvm::any_of(structType.getBody(), hasRemoteTargetHandler);
  })
  .Case<LLVM::LLVMPointerType>([&](LLVM::LLVMPointerType ptrType) {
    if (ptrType.isOpaque()) return false;
    return hasRemoteTargetHandler(ptrType.getElementType());
  })
  .Case<FunctionType>([&](FunctionType funcType) {
    return llvm::any_of(funcType.getResults(), hasRemoteTargetHandler) ||
           llvm::any_of(funcType.getInputs(), hasRemoteTargetHandler);
  })
  .Case<
        VectorType,
        LLVM::LLVMFixedVectorType,
        LLVM::LLVMScalableVectorType,
        LLVM::LLVMArrayType
      >([&](auto containerType) {
      return hasRemoteTargetHandler(containerType.getElementType());
  })
  .Case<MemRefType>([&](MemRefType memrefType) {
    return hasRemoteTargetHandler(memrefType.getElementType());
  })
  .Case<UnrankedMemRefType>([&](UnrankedMemRefType ukmem) {
    return hasRemoteTargetHandler(ukmem.getElementType());
  })
  .Default([](Type) { return false; });
}

bool mlir::rmem::hasRemoteTarget(Type type) {
  SetVector<Type> callStack;
  return hasRemoteTargetImpl(type, callStack);
}

bool mlir::rmem::isTrueRemoteRef(Type type) {
  if (auto rt = dyn_cast<rmem::RemoteMemRefType>(type)) {
    return rt.getCanRemote() != 0;
  }
  return false;
}

//====--------------------------------------====
// Recursively obtain the raw type
//====--------------------------------------====

Type mlir::rmem::getRawTypeFromRemotedType(Type type) {
  if (!hasRemoteTarget(type))
    return type;
  if (auto idx = type.dyn_cast<IndexType>()) {
    return IntegerType::get(idx.getContext(), 64);
  }
  // If is given remote memref, extract nesting llvm.ptr or memref and convert to raw type
  if (auto rmref = type.dyn_cast<RemoteMemRefType>()) {
    Type rawRef = rmref.getElementType();
    return getRawTypeFromRemotedType(rawRef);
  }

  if (auto ukmem = type.dyn_cast<UnrankedMemRefType>()) {
    Type rawElemType = getRawTypeFromRemotedType(ukmem.getElementType());
    return UnrankedMemRefType::get(rawElemType, ukmem.getMemorySpace());
  }

  /* Routines below convert container types that may have rmemref type as the embedded type to raw type */
  if (auto memref = type.dyn_cast<MemRefType>()) {
    Type rawElemType = getRawTypeFromRemotedType(memref.getElementType());
    return MemRefType::get(memref.getShape(), rawElemType, memref.getLayout(), memref.getMemorySpace());
  }

  if (auto llvmPtr = type.dyn_cast<LLVM::LLVMPointerType>()) {
    if (llvmPtr.isOpaque())
      return llvmPtr;
    Type rawPointeeType = getRawTypeFromRemotedType(llvmPtr.getElementType());
    return LLVM::LLVMPointerType::get(rawPointeeType, llvmPtr.getAddressSpace());
  }

  if (auto structType = type.dyn_cast<LLVM::LLVMStructType>()) {
    if (structType.isIdentified()) {
      // get original structType using raw name
      StringRef sName = structType.getName();
      if (!sName.contains("disagg@") /* not remoted, raw type */)
        return structType;
      size_t rawStartIdx = 7;

      auto rawStructType = LLVM::LLVMStructType::getIdentified(structType.getContext(), sName.drop_front(rawStartIdx));
      if (rawStructType.isInitialized()) {
        return rawStructType;
      } else {
        llvm::errs() << "Cannot find raw structType for " << sName << "\n";
        return nullptr;
      }
    }
    
    // Unamed Struct Type, get new literal
    SmallVector<Type> rawElemTypes;
    rawElemTypes.reserve(structType.getBody().size());
    for (auto &en : structType.getBody()) {
      rawElemTypes.push_back(getRawTypeFromRemotedType(en));
    }
    return LLVM::LLVMStructType::getLiteral(structType.getContext(), rawElemTypes, structType.isPacked());
  }

  if (auto aryType = type.dyn_cast<LLVM::LLVMArrayType>()) {
    Type rawEleTy = getRawTypeFromRemotedType(aryType.getElementType());
    return LLVM::LLVMArrayType::get(rawEleTy, aryType.getNumElements());
  }

  if (auto fVecType = type.dyn_cast<LLVM::LLVMFixedVectorType>()) {
    Type rawEleTy = getRawTypeFromRemotedType(fVecType.getElementType());
    return LLVM::LLVMFixedVectorType::get(rawEleTy, fVecType.getNumElements());
  }


  if (auto fVecType = type.dyn_cast<LLVM::LLVMScalableVectorType>()) {
    Type rawEleTy = getRawTypeFromRemotedType(fVecType.getElementType());
    return LLVM::LLVMScalableVectorType::get(rawEleTy, fVecType.getMinNumElements());
  }

  // TODO: tensor, vector, func, llvm.func
  llvm::errs() << "Current rawing type: \n";
  type.print(llvm::errs());
  llvm::errs() << "\n contains remote but no routine for that\n";
  return type;
}

Type RemoteMemRefType::getInnerElementType() {
  Type addr = getElementType();
  if (auto ptr = addr.dyn_cast<LLVM::LLVMPointerType>()) {
    return ptr.getElementType();
  }
  else if (auto memref = addr.dyn_cast<mlir::MemRefType>()) {
    return memref.getElementType();
  }
  else {
    llvm::errs() << "unable to get inner element type of remote memref type: \n";
    dump();
    return addr;
  }
}

Type mlir::rmem::getAggrIndexType(Type base, ArrayRef<int32_t> constIndices) {
  Type eleType;
  if (auto ptr = base.dyn_cast<LLVM::LLVMPointerType>()) {
    eleType = ptr.getElementType();
  }
  else if (auto rmref = base.dyn_cast<rmem::RemoteMemRefType>()) {
    eleType = rmref.getInnerElementType();
  }
  else if (auto memref = base.dyn_cast<mlir::MemRefType>()) {
    eleType = memref.getElementType();
  }
  for (size_t i = 1; i < constIndices.size(); ++ i) {
    if (!eleType) return nullptr;
    int32_t idx = constIndices[i];
    eleType = TypeSwitch<Type, Type>(eleType)
      .Case<VectorType, LLVM::LLVMScalableVectorType, LLVM::LLVMFixedVectorType, LLVM::LLVMArrayType>([](auto containerType) {
        return containerType.getElementType();
      })
      .Case([&](LLVM::LLVMStructType structType) -> Type {
        if (idx >= 0 && 
            static_cast<size_t>(idx) < structType.getBody().size())
          return structType.getBody()[idx];
        return nullptr;
      })
      .Default([](Type) { return nullptr; });
  }
  return eleType;
}


//====--------------------------------------====
// Get second-level element type of a remote memref
//====--------------------------------------====
Type mlir::rmem::getEleTypeFromRemoteMemRef(RemoteMemRefType rmref) {
  Type RT = rmref.getElementType();
  Type eleType;// can still be remote memref
  if (auto ptrType = RT.dyn_cast<LLVM::LLVMPointerType>()) 
    eleType = ptrType.getElementType(); 
  else if (auto memrefType = RT.dyn_cast<MemRefType>())
    eleType = memrefType.getElementType();
  else if (auto memrefType = RT.dyn_cast<UnrankedMemRefType>())
    eleType = memrefType.getElementType();
  return eleType;
}

// Type RemoteMemRefType::parse(AsmParser &parser) {
//   FailureOr<Type> elemType;
//   SMLoc loc = parser.getCurrentLocation();
//   // parse '<'
//   if (parser.parseLess()) return {};
//   elemType = mlir::FieldParser<Type>::parse(parser);
//   if (failed(elemType)) {
//     parser.emitError(parser.getCurrentLocation(), "failed to parse element type of this remote memref type");
//     return {};
//   } 
//   // parse '>'
//   if (parser.parseGreater()) return {};
//   assert(succeeded(elemType));
//   return parser.getChecked<RemoteMemRefType>(loc, parser.getContext(), *elemType);
// }

// void RemoteMemRefType::print(AsmPrinter &printer) const {
//   printer << "<";
//   printer.printStrippedAttrOrType(getElementType());
//   printer << ">";
// }



void RemoteMemDialect::registerTypes() {
  addTypes<
#define GET_TYPEDEF_LIST
#include "Dialect/RemoteMemOpsTypes.cpp.inc"
  >();
}
