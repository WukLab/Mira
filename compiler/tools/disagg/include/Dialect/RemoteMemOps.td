#ifndef REMOTE_MEM_OPS
#define REMOTE_MEM_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/IR/SymbolInterfaces.td"
include "ROps/RAffineOps.td"
include "ROps/RMemRefOps.td"
include "ROps/RVectorOps.td"
include "ROps/RLLVMOps.td"

def RemoteMem_ToAddressOp: RemoteMem_Op<"to_addr"> {
  let summary = "Get the virtual pointer from a remote memref that can be used for `getelemptr` operations";
  let description = "This operation does not materialize a remote memref at the local side, the return pointer will be used for address calculation. If the remote memref is dummy, i.e. created from stack/non-remote heap alloc, the returned address is the original pointer, else is the virtual cache address";
  let arguments = (ins RemoteMemRef: $rmemref);
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $addr);
  // TODO: verify that the virtual address is at space 1
  let assemblyFormat = [{
    $rmemref attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_FromAddressOp: RemoteMem_Op<"from_addr"> {
  let summary = "Create remote memref handler with the given address";
  let description = [{
    The main purpose of this operation is to resolve type conflict (source materialize) when the function signature requires remote memref. 
  }];
  let arguments = (ins AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $addr);
  let results = (outs RemoteMemRef: $rmemref);
  let assemblyFormat = [{
    $addr attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_OffloadOp : RemoteMem_Op<"offload"> {
  let summary = "Offload current function call to remote server";
  let arguments = (ins I32: $fid, Variadic<AnyType>: $inputs);
  let results = (outs Variadic<AnyType>: $ret);
  let assemblyFormat = [{
    operands attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_PIndexOp : RemoteMem_Op<"ptrindex", [Pure]> {
  let arguments = (ins 
    RemoteMemRef:$base,
    Variadic<LLVM_ScalarOrVectorOf<AnyInteger>>:$indices);
  let results = (outs RemoteMemRef: $addr);
  let builders = [
    OpBuilder<(ins "Value":$basePtr, "ValueRange":$indices, 
      CArg<"ArrayRef<NamedAttribute>", "{}">:$attributes)>,
  ];

  // let extraClassDeclaration = [{
  //   constexpr static int kDynamicIndex = std::numeric_limits<int32_t>::min();

  //   /// Returns the type pointed to by the pointer argument of this GEP.
  //   Type getSourceElementType();
  // }];

  let assemblyFormat = [{
    $base `[` $indices `]` attr-dict `:` functional-type(operands, results)
  }];
} 

def RemoteMem_ToIntOp : RemoteMem_Op<"rmemtoint", [Pure]> {
  let arguments = (ins RemoteMemRef:$ptr);
  let results = (outs AnyInteger:$res);
  let assemblyFormat = [{
    $ptr attr-dict `:` functional-type(operands, results)
  }];
}


def RemoteMem_MaterializeOp: RemoteMem_Op<"materialize"> {
  let summary = "Convert a remote memory ref to raw pointer/memref at the local site";
  let description = "Now use load operation for reading memory with a given virtual address";
  let arguments = (ins RemoteMemRef: $rmemref);
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $localRef);

  let assemblyFormat = [{
    $rmemref attr-dict `:` functional-type(operands, results)
  }];

  let builders = [
    OpBuilder<(ins "Value":$rmemref)>
  ];
  let hasVerifier = 1;
  // let hasCanonicalizer = 1;
}

def RemoteMem_ReturnOp : RemoteMem_Op<"return", [
  Terminator,
  Pure]> {
    let summary = "general terminator for remote mem op";
    let description = "currently only used in llvm.global";
    let arguments = (ins Variadic<AnyType>:$result);
    let assemblyFormat = [{
      attr-dict ($result^ `:` type($result))?
    }];
}

//------ very raw primitive for affine prefetch ----//
def RemoteMem_AsyncRDMAOp : RemoteMem_Op<"rdma"> {
  let summary = "Asynchronously perform a rdna request";
  let arguments = (ins 
    StrAttr: $mem,
    Index: $index, //local mem index
    RemoteMemRef: $rbase,
    Variadic<Index>: $mapInput,
    AffineMapAttr: $map,
    Index: $sizeInEle,
    I32Attr: $wr_type,
    Index: $reqID
  );
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $localRef);
  let assemblyFormat = [{
    $index `,` $rbase `[` $mapInput `]` $sizeInEle $wr_type $reqID attr-dict `:` functional-type(operands, results) 
  }];
}

def RemoteMem_GetSlotOp : RemoteMem_Op<"slot"> {
  let summary = "Get the local base address correspond to remote addr";
  let arguments = (ins
    StrAttr: $mem,
    Index: $index
  );
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $slot);
  let assemblyFormat = [{
    $index attr-dict `:` functional-type(operands, results)  
  }];
}

def RemoteMem_GetWRIDOp : RemoteMem_Op<"wrid"> {
  let summary = "Get a unique work request id";
  let results = (outs Index: $id);
  let assemblyFormat = [{
    attr-dict `:` type($id)
  }];
}

def RemoteMem_WaitReqOp : RemoteMem_Op<"sync"> {
  let summary = "Polling given id to finish";
  let arguments = (ins 
    Arg<LLVM_PointerTo<I64>,"",[MemWrite]>:$R,
    Index:$id);
  let assemblyFormat = [{
    $R `->` $id attr-dict `:` type($R)`,`type($id)
  }];
}

//------ affine prefetch compatible with new runtime ----//
def RemoteMem_AffineReqOp : RemoteMem_Op<"affine.req"> {
  let summary = "Asynchronously perform a cache request with affine map";
  let arguments = (ins 
    StrAttr: $mem,
    I32Attr: $cache_id,
    RemoteMemRef: $rbase,
    Variadic<Index>: $mapInput,
    AffineMapAttr: $map
  );
  let results = (outs 
    I32: $slot
  );
  let assemblyFormat = [{
    $rbase `[` $mapInput `]` attr-dict `:` functional-type(operands, results) 
  }];
}

def RemoteMem_AffinePaddrOp : RemoteMem_Op<"affine.paddr"> {
  let summary = "get raw memref given base, slot id and affine map";
  let arguments = (ins
    I32: $offset,
    RemoteMemRef: $rbase,
    Variadic<Index>: $mapInput,
    AffineMapAttr: $map
  );
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $localRef);
  let assemblyFormat = [{
    $offset`,`$rbase `[` $mapInput `]` attr-dict `:` functional-type(operands, results)  
  }]; 
}

//------ High level primitives for cache access -----//
def RemoteMem_RequestOp : RemoteMem_Op<"request"> {
  let summary = "request a token from cache";
  let arguments = (ins
    AnyTypeOf<[LLVM_AnyPointer,RemoteMemRef]>: $vaddr,
    I32Attr: $cache_id
  );
  let results = (outs I32: $offset);
  let assemblyFormat = [{
    $cache_id`,`$vaddr attr-dict `:` functional-type(operands, results)  
  }];
}

def RemoteMem_PollReqOp : RemoteMem_Op<"poll"> {
  let summary = "poll a request token from cache";
  let arguments = (ins
    I32: $offset,
    I32Attr: $cache_id
  );
  let assemblyFormat = [{
    $cache_id`,`$offset attr-dict `:` functional-type(operands, results)  
  }];
}

def RemoteMem_PaddrOp : RemoteMem_Op<"paddr"> {
  let summary = "get raw pointer given virtual address and slot id";
  let arguments = (ins
    I32: $offset,
    AnyTypeOf<[LLVM_AnyPointer,RemoteMemRef]>: $vaddr,
    I32Attr: $cache_id
  );
  let results = (outs LLVM_AnyPointer: $laddr);
  let assemblyFormat = [{
    $cache_id`,`$offset`,`$vaddr attr-dict `:` functional-type(operands, results)  
  }];
}

def RemoteMem_ExtractOp : RemoteMem_Op<"extract"> {
  let summary = "offset and extract from a memory region";
  let description = [{
    Similar to memref.subview, but allow the resulting memref to be of arbitrary 1D-size and always with identity map, i.e. the result region is not related to source base. 
    Also accept pointer as input. If the input is memref, offset has rank size.
  }];
  let arguments = (ins
    RemoteMemRef: $base,
    Variadic<Index>: $offset,
    AffineMapAttr: $map
  );
  let results = (outs RemoteMemRef: $subview);
  let assemblyFormat = [{
    $base `[` $offset `]` attr-dict `:` functional-type(operands, results)
  }]; 
}

#endif
