#ifndef LOWER_REMOTE_MEM
#define LOWER_REMOTE_MEM

include "mlir/Pass/PassBase.td"

def ConvertRemoteMemToLLVM : Pass<"lower-rmem-to-llvm", "ModuleOp"> {
  let summary = "Convert Remote Mem dialect to llvm dialect";
  let constructor = "mlir::createRemoteMemToLLVMPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect", "arith::ArithDialect"];
  let options = [
    Option<"cacheCFG", "ccfg", "std::string", "", "cache configurations">
  ];
}

def LowerRMemInFunc: Pass<"lower-rmem-in-func", "ModuleOp"> {
  let summary = "Convert function with remote signature";
  let description = "Func will remain in func dialect, the lowering will be handled by normal func->llvm transformation";
  let constructor = "mlir::createConvertFuncRMemPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect"];
}

def LowerRMemInSCF : Pass<"lower-rmem-in-scf", "ModuleOp"> {
  let summary = "Convert scf with remote signature";
  let constructor = "mlir::createConvertSCFRemotePass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "scf::SCFDialect"];
}

def LowerRMemInAffine : Pass<"lower-rmem-in-affine", "ModuleOp"> {
  let constructor = "mlir::createConvertAffineRemotePass()";
  let dependentDialects = [
    "memref::MemRefDialect",
    "scf::SCFDialect",
    "vector::VectorDialect",
    "rmem::RemoteMemDialect"
  ];
}

def LowerRMemInMemRef : Pass<"lower-rmem-in-memref", "ModuleOp"> {
  let summary = "Convert memref-like ops with remote memref operands";
  let constructor = "mlir::createConvertMemRefRemotePass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect",     "memref::MemRefDialect"];
  let options = [
    Option<"useAlignedAlloc", "use-aligned-alloc", "bool", /*default=*/"false",
           "Use aligned_alloc in place of malloc for heap allocations">,
    Option<"indexBitwidth", "index-bitwidth", "unsigned",
           /*default=kDeriveIndexBitwidthFromDataLayout*/"0",
           "Bitwidth of the index type, 0 to use size of machine word">,
    Option<"useGenericFunctions", "use-generic-functions",
           "bool",
           /*default=*/"false",
           "Use generic allocation and deallocation functions instead of the "
           "classic 'malloc', 'aligned_alloc' and 'free' functions">
  ];
}

def EmitLLVM : Pass<"emit-llvm", "ModuleOp"> {
  let summary = "Convert everything into llvm-mlir";
  let constructor = "mlir::createEmitLLVMPass()";
  let dependentDialects = [
    "LLVM::LLVMDialect", 
    "rmem::RemoteMemDialect", 
    "func::FuncDialect", 
    "arith::ArithDialect",
    "scf::SCFDialect",
    // "vector::VectorDialect",
    "memref::MemRefDialect"
  ];
  let options = [
    Option<"cacheCFG", "ccfg", "std::string", "", "cache configurations">
  ];
}

#endif
