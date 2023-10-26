#ifndef REMOTE_MEM_REF_TYPES
#define REMOTE_MEM_REF_TYPES

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/Interfaces/CallInterfaces.h"
#include "mlir/Interfaces/CastInterfaces.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"

namespace mlir {
namespace rmem {
class RemoteMemRefType;
// find if the type contains remote memref type
// this function is used to detect if need type conversion during the lowering process
bool hasRemoteTarget(Type type);

// Determine if its a true remote memref, not considering any nested types
bool isTrueRemoteRef(Type type);

Type getEleTypeFromRemoteMemRef(RemoteMemRefType rmref);
Type getRawTypeFromRemotedType(Type type);
Type getAggrIndexType(Type base, ArrayRef<int32_t> constIndices);
}
}

#define GET_TYPEDEF_CLASSES
#include "Dialect/RemoteMemOpsTypes.h.inc"

#endif