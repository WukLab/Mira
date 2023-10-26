#ifndef REMOTE_AFFINE_OPS
#define REMOTE_AFFINE_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/IR/SymbolInterfaces.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/Dialect/Affine/IR/AffineMemoryOpInterfaces.td"

class RemoteAffineStoreOpBase<string mnemonic, list<Trait> traits = []> :
    RemoteMem_Op<mnemonic, !listconcat(traits,
    [DeclareOpInterfaceMethods<AffineWriteOpInterface>,
    DeclareOpInterfaceMethods<AffineMapAccessInterface>])> {
  code extraClassDeclarationBase = [{
    /// Returns the operand index of the value to be stored.
    unsigned getStoredValOperandIndex() { return 0; }

    /// Returns the operand index of the memref.
    unsigned getMemRefOperandIndex() { return 1; }

    void setMemRef(Value value) { setOperand(getMemRefOperandIndex(), value); }

    /// Returns the affine map used to index the memref for this operation.
    AffineMapAttr getAffineMapAttr() {
      return (*this)->getAttr(getMapAttrStrName()).cast<AffineMapAttr>();
    }

    static StringRef getMapAttrStrName() { return "map"; }
  }];
}

def RemoteMem_RAffineStoreOp : RemoteAffineStoreOpBase<"affine.store"> {
  let summary = "remote counterpart of affine store operaiton";
  let arguments = (ins AnyType:$value,
      Arg<AnyTypeOf<[AnyMemRef, RemoteMemRefOf<[AnyMemRef]>]>, "the reference to store to",
      [MemWrite]>:$memref,
      Variadic<Index>:$indices);
  let assemblyFormat = [{
    $value `->` $memref (`[` $indices^ `]`)? attr-dict `:` type(operands)
  }];
  let extraClassDeclaration = extraClassDeclarationBase;
}

class RemoteAffineLoadOpBase<string mnemonic, list<Trait> traits = []> :
    RemoteMem_Op<mnemonic, !listconcat(traits,
        [DeclareOpInterfaceMethods<AffineReadOpInterface>,
        DeclareOpInterfaceMethods<AffineMapAccessInterface>])> {
  let arguments = (ins Arg<AnyTypeOf<[AnyMemRef, RemoteMemRefOf<[AnyMemRef]>]>, "the reference to read from",
      [MemRead]>:$memref,
      Variadic<Index>:$indices);

  code extraClassDeclarationBase = [{
    /// Returns the operand index of the memref.
    unsigned getMemRefOperandIndex() { return 0; }

    void setMemRef(Value value) { setOperand(getMemRefOperandIndex(), value); }

    /// Returns the affine map used to index the memref for this operation.
    AffineMapAttr getAffineMapAttr() {
      return (*this)->getAttr(getMapAttrStrName()).cast<AffineMapAttr>();
    }

    static StringRef getMapAttrStrName() { return "map"; }
  }];
}

def RemoteMem_RAffineLoadOp : RemoteAffineLoadOpBase<"affine.load"> {
  let summary = "affine load operation";
  let results = (outs AnyType:$result);

  let extraClassDeclaration = extraClassDeclarationBase;
  let assemblyFormat = [{
    $memref (`[` $indices^ `]`)? attr-dict `:` functional-type(operands, results)
  }];
}


#endif
