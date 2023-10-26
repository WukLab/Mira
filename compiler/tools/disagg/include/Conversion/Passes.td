#ifndef REMOTE_MEM_PASSES
#define REMOTE_MEM_PASSES

include "mlir/Pass/PassBase.td"

def MemDisaggregation : Pass<"convert-target-to-remote", "ModuleOp"> {
  let summary = "Will convert everthing marked `remote_target` to remote dialect";
  let description = "Dialect conversion has poor dependency inspection support, so we convert everything in one pass. However, the optimization can be separated.";
  let constructor = "mlir::disagg::createMemDisaggregationPass()";
  let dependentDialects = [
    "LLVM::LLVMDialect", 
    "rmem::RemoteMemDialect", 
    "func::FuncDialect", 
    "memref::MemRefDialect", 
    "scf::SCFDialect"
  ];
}

#endif
