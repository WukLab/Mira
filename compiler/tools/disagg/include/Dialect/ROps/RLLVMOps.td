#ifndef REMOTE_POINTER_OPS
#define REMOTE_POINTER_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/IR/SymbolInterfaces.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

def RemoteMem_UndefOp: RemoteMem_Op<"undef", [Pure]> {
  let summary = "Create an undefined value of remote memref wrapping llvm ptr";
  let results = (outs AnyType: $undef);
  let assemblyFormat = [{
    attr-dict `:` type($undef)
  }];
}

def RemoteMem_SizeOfOp : RemoteMem_Op<"trivial.sizeof", [Pure]> {
  let summary = "Get size of a type, placeholder";
  let arguments = (ins TypeAttr: $src);
  let results = (outs AnyInteger: $size);
  let assemblyFormat = [{
    attr-dict `:` type($size)
  }];
}

def RemoteMem_ChannelCreateOp : RemoteMem_Op<"channel.create"> {
  let arguments = (ins
    RemoteMemRef: $baseVaddr,
    Index: $upperBound,
    I64: $oriUnitSize,
    I32: $sizeEach,
    I32: $numSlots,
    I32: $batch,
    I32: $dist,
    I16: $assem_id,
    I32: $kind
  );
  let results = (outs I32: $channel);
  let assemblyFormat = [{
    operands attr-dict `:` functional-type(operands,results)
  }];
}

def RemoteMem_ChannelAccessOp : RemoteMem_Op<"channel.access"> {
  let arguments = (ins
    I32:$channel,
    Index:$phi
  );
  let results = (outs 
    Arg<AnyTypeOf<
          [LLVM_PointerTo<LLVM_LoadableType>, 
          RemoteMemRef]>,"",[MemRead]>:$addr
  );
  let assemblyFormat = [{
    $channel `,` $phi attr-dict `:` functional-type(operands,results)
  }];
}

def RemoteMem_PrefetchOp : RemoteMem_Op<"llvm.prefetch"> {
  let summary = "Access (no mutation) memory speculatively";
  let arguments = (ins 
    Arg<RemoteMemRef,"",[MemWrite]>:$addr
  );
  let assemblyFormat = [{
    $addr attr-dict `:` type($addr)
  }];
}

def RemoteMem_LoadOp: RemoteMem_Op<"llvm.load"> {
  let summary = "Load from memory";
  let description = [{
    The orignal operands of load operation may be converted to remote memref, use this operation to maintain correctness symbolically.

    Will be lowered according to the input:
      1. If the mapped operand is !llvm.ptr<(!rmem.rmref)+>
         No special operation needed, just convert the rmref type to pointer type
      2. If the mapped operand is !rmref.rmref
         Need to convert the type as well as materialize
  }];
  let arguments = (ins 
    Arg<AnyTypeOf<
      [LLVM_PointerTo<LLVM_LoadableType>, 
      RemoteMemRef]>,"",[MemRead]>:$addr,
      OptionalAttr<SymbolRefArrayAttr>:$access_groups,
      OptionalAttr<SymbolRefArrayAttr>:$alias_scopes,
      OptionalAttr<SymbolRefArrayAttr>:$noalias_scopes,
      OptionalAttr<I64Attr>:$alignment, UnitAttr:$volatile_,
      UnitAttr:$nontemporal
    );
  let results = (outs LLVM_LoadableType:$res);
  let assemblyFormat = [{
    $addr attr-dict `:` functional-type(operands, results)
  }];
  // let hasVerifier = 1;

}

def RemoteMem_StoreOp : RemoteMem_Op<"llvm.store"> {
  let arguments = (ins LLVM_LoadableType:$value,
      Arg<AnyTypeOf<
        [LLVM_PointerTo<LLVM_LoadableType>, 
        RemoteMemRef]>,"",[MemWrite]>:$addr,
      OptionalAttr<SymbolRefArrayAttr>:$access_groups,
      OptionalAttr<SymbolRefArrayAttr>:$alias_scopes,
      OptionalAttr<SymbolRefArrayAttr>:$noalias_scopes,
      OptionalAttr<I64Attr>:$alignment, UnitAttr:$volatile_,
      UnitAttr:$nontemporal);
  
  let assemblyFormat = [{
    $value `->` $addr attr-dict `:` type(operands)
  }];
  let builders = [
    OpBuilder<(ins "Value":$value, "Value":$addr,
      CArg<"unsigned", "0">:$alignment, CArg<"bool", "false">:$isVolatile,
      CArg<"bool", "false">:$isNonTemporal)>
    ];
  // let hasVerifier = 1;
}

def RemoteMem_AddrCmpOp: RemoteMem_Op<"addrcmp", [SameTypeOperands]> {
  let summary = "Compare the address of two remote mem refs";
  let arguments = (ins AnyTypeOf<[RemoteMemRef, LLVM_AnyPointer]>: $lhs,
                       AnyTypeOf<[RemoteMemRef, LLVM_AnyPointer]>: $rhs,
                       RemoteMem_AddrCmpPredicate:$predicate
  );
  let results = (outs I1: $rel);
  let assemblyFormat = [{
    $predicate $lhs`,` $rhs attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_LLVMMallocOp: RemoteMem_Op<"malloc_ptr"> {
  let summary = "remote memory allocation counterpart for llvm malloc";
  let arguments = (ins
    DefaultValuedAttr<ConfinedAttr<I32Attr, [IntNonNegative]>, "1">:$poolId,
    I64: $memSize
  );
  let results = (outs 
    Res<RemoteMemRefOf<[LLVM_AnyPointer]>,"",[MemAlloc]>: $rmemref);
  
  // let hasVerifier = 1;
  // let hasCustomAssemblyFormat = 1;
  let assemblyFormat = [{
    $poolId`,` $memSize attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_LLVMAllocaOp : RemoteMem_Op<"alloca_ptr"> {
  let arguments = (ins AnyInteger:$arraySize,
                   OptionalAttr<I64Attr>:$alignment,
                   OptionalAttr<TypeAttr>:$elem_type);
  let results = (outs Res<AnyTypeOf<[RemoteMemRefOf<[LLVM_AnyPointer]>, LLVM_AnyPointer]>,"",[MemAlloc<AutomaticAllocationScopeResource>]>: $mem);
  // let builders = [
  //   OpBuilder<(ins "Type":$resultType, "Value":$arraySize, "unsigned":$alignment)>,
  //   OpBuilder<(ins "Type":$resultType, "Type":$elementType, "Value":$arraySize, CArg<"unsigned", "0">:$alignment)>
  // ];
  let assemblyFormat = [{
    $arraySize `x` $elem_type attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_LLVMCallocOp : RemoteMem_Op<"calloc_ptr"> {
  let arguments = (ins DefaultValuedAttr<ConfinedAttr<I32Attr, [IntNonNegative]>, "1">:$poolId,
                       I64:$num,
                       I64:$unitSize);
  let results = (outs Res<RemoteMemRefOf<[LLVM_AnyPointer]>,"",[MemAlloc]>: $rmemref);
  let assemblyFormat = [{
    $poolId`,` $num `x` $unitSize attr-dict `:` functional-type(operands, results) 
  }];
}

def RemoteMem_LLVMMemsetOp : RemoteMem_Op<"memset"> {
  let arguments = (ins Arg<AnyType,"",[MemWrite]>:$dst, AnyType:$val, AnyType:$len, AnyType:$isVolatile);
  let assemblyFormat = [{
    operands attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_BitCastOp : RemoteMem_Op<"bitcast", [Pure]> {
  let summary = "Dummy bitcast, only for type unification";
  let arguments = (ins AnyTypeOf<[RemoteMemRef, LLVM_AnyPointer]> :$arg);
  let results = (outs AnyTypeOf<[RemoteMemRef, LLVM_AnyPointer]>:$res);
  let assemblyFormat = "$arg attr-dict `:` functional-type(operands, results)";
}

def RemoteMem_LLVMAddressOfOp : RemoteMem_Op<"llvm.addressof", [Pure]> {
  let arguments = (ins FlatSymbolRefAttr:$global_name);
  let results = (outs LLVM_AnyPointer:$res);
  let summary = "Creates a pointer pointing to a remote mem global or a remote mem function";
  let builders = [
    // TODO: support llvm function, memref global (potentially)
    OpBuilder<(ins "LLVMGlobalOp":$global,
      CArg<"ArrayRef<NamedAttribute>", "{}">:$attrs),
      [{
        build($_builder, $_state, 
          LLVM::LLVMPointerType::get(
            global.getGlobalType(), 
            global.getAddrSpace()),
          global.getSymName());
        $_state.addAttributes(attrs);
      }]>
  ];
  let extraClassDeclaration = [{
    /// Return the rmem.llvm.global operation that defined the value referenced
    /// here.
    LLVMGlobalOp getGlobal();
  }];
  let assemblyFormat = [{
    $global_name attr-dict `:` type($res)
  }];
}

def RemoteMem_GEPOp : RemoteMem_Op<"llvm.getelementptr", [Pure]> {
  let summary = "LLVM getelementptr on remote memref";
  let description = "Not supporting vector GEPop now, llvmvcector not compatible with remote memref";
  let arguments = (ins 
    AnyTypeOf<[LLVM_AnyPointer, RemoteMemRef]>:$base,
    Variadic<AnyInteger>:$indices,
    DenseI32ArrayAttr:$structIndices,
    OptionalAttr<TypeAttr>:$elem_type);
  let results = (outs 
    AnyTypeOf<[LLVM_AnyPointer, RemoteMemRef]>:$res);
  let assemblyFormat = [{
    $base `[`$indices $structIndices`]` attr-dict
    `:` functional-type(operands, results) (`,` $elem_type^)?
  }];
  let extraClassDeclaration = [{
    /// Returns the type pointed to by the pointer argument of this GEP.
    Type getSourceElementType();
  }];
}

def RemoteMem_PtrToIntOp : RemoteMem_Op<"llvm.ptr2int", [Pure]> {
  let arguments = (ins AnyTypeOf<[LLVM_AnyPointer, RemoteMemRef]>:$ptr);
  let results = (outs AnyInteger:$res);
  let assemblyFormat = [{
    $ptr attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_IntToPtrOp : RemoteMem_Op<"llvm.int2ptr", [Pure]> {
  let arguments = (ins AnyInteger:$arg);
  let results = (outs AnyTypeOf<[LLVM_AnyPointer, RemoteMemRef]>:$ptr);
  let assemblyFormat = [{
    $arg attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_LLVMGlobalOp : RemoteMem_Op<"llvm.global", [IsolatedFromAbove,
// SingleBlock,
// SingleBlockImplicitTerminator<"ReturnOp">, 
Symbol]> {
  let arguments = (ins
    TypeAttr:$global_type,
    UnitAttr:$constant,
    StrAttr:$sym_name,
    RemoteMem_Linkage:$linkage,
    UnitAttr:$dso_local,
    UnitAttr:$thread_local_,
    OptionalAttr<AnyAttr>:$value,
    OptionalAttr<I64Attr>:$alignment,
    DefaultValuedAttr<ConfinedAttr<I32Attr, [IntNonNegative]>, "0">:$addr_space,
    OptionalAttr<RemoteMem_RUnnamedAddr>:$unnamed_addr,
    OptionalAttr<StrAttr>:$section
  );
  let summary = "Remote mem version of llvm global";
  let regions = (region AnyRegion:$initializer);
  // let builders = [
  //   OpBuilder<(ins "Type":$type, "bool":$isConstant, "RLinkageType":$linkage,
  //     "StringRef":$name, "Attribute":$value,
  //     CArg<"uint64_t", "0">:$alignment,
  //     CArg<"unsigned", "0">:$addrSpace,
  //     CArg<"bool", "false">:$dsoLocal,
  //     CArg<"bool", "false">:$thread_local_,
  //     CArg<"ArrayRef<NamedAttribute>", "{}">:$attrs)>
  // ];
  let assemblyFormat = [{
    attr-dict `:` regions
  }];
}

def RemoteMem_LLVMInsertValueOp : RemoteMem_Op<"llvm.insert", [Pure, AllTypesMatch<["container", "res"]>]> {
  let summary = "Insert a value into an LLVM struct.";
  let arguments = (ins LLVM_AnyAggregate:$container, AnyType:$value,
                       DenseI64ArrayAttr:$position);
  let results = (outs LLVM_AnyAggregate:$res);
  let assemblyFormat = [{
    $value `->` $container`[`$position`]` attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_LLVMExtractValueOp : LLVM_Op<"llvm.extract", [Pure]> {
  let summary = "Extract a value from an LLVM struct.";
  let arguments = (ins LLVM_AnyAggregate:$container, DenseI64ArrayAttr:$position);
  let results = (outs AnyType:$res);

  let assemblyFormat = [{
    $container`[`$position`]` attr-dict `:` functional-type(operands, results)
  }];
}

#endif
