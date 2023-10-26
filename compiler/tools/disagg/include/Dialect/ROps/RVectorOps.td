#ifndef REMOTE_VECTOR_OPS
#define REMOTE_VECTOR_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/IR/SymbolInterfaces.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/Dialect/Affine/IR/AffineMemoryOpInterfaces.td"

def RemoteMem_VectorLoadOp : RemoteMem_Op<"vec.load"> {
  let arguments = (ins 
    Arg<AnyTypeOf<[RemoteMemRefOf<[AnyMemRef]>, AnyMemRef]>, "the ref to load from, can be remote or not", [MemRead]>:$base, 
      Variadic<Index>:$indices);
  let results = (outs AnyVector:$result);
  let extraClassDeclaration = [{
    VectorType getVectorType() {
      return getResult().getType().cast<VectorType>();
    }
  }];
  let assemblyFormat =
      "$base `[` $indices `]` attr-dict `:` type($base) `,` type($result)";
}

def RemoteMem_VectorStoreOp : RemoteMem_Op<"vec.store"> {
  let arguments = (ins AnyVector:$valueToStore,
      Arg<AnyTypeOf<[RemoteMemRefOf<[AnyMemRef]>, AnyMemRef]>, "ref to store to, can be remote or not", [MemWrite]>:$base, 
      Variadic<Index>:$indices);
  let extraClassDeclaration = [{
    VectorType getVectorType() {
      return getValueToStore().getType().cast<VectorType>();
    }
  }];
  let assemblyFormat = "$valueToStore `,` $base `[` $indices `]` attr-dict "
                       "`:` type($base) `,` type($valueToStore)";
}

#endif
