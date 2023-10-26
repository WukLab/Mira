#ifndef RMEM_DIALECT_TRANSFORM_PASSES
#define RMEM_DIALECT_TRANSFORM_PASSES

include "mlir/Pass/PassBase.td"

def RMEMDeterminePoolSource : Pass<"rmem-decide-pool", "mlir::ModuleOp"> {
  let summary = "Choose a cache pool for each remote allocation";
  let constructor = "mlir::createRemoteMemDPSPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect"];
}

def RMEMInstrBandwidthProf : Pass<"rmem-instr-bw", "LLVM::LLVMFuncOp"> {
  let summary = "Instrument counter at each remote memory access site in each function";
  let description = "Current impl can only apply this pass to the IR after lowering";
  let constructor = "mlir::createRemoteMemInstrBWProf()";
  let dependentDialects = ["LLVM::LLVMDialect"];
} 

def RMEMForloopPrefetch : Pass<"rmem-for-prefetch", "mlir::ModuleOp"> {
  let summary = "Add prefetch instructions for rmem access within for-loops";
  let constructor = "mlir::createRemoteMemPrefetchForloopPass()";
  let dependentDialects = ["scf::SCFDialect", "rmem::RemoteMemDialect", "func::FuncDialect", "LLVM::LLVMDialect"];
}

def RMEMLoopFusion : Pass<"rmem-loop-fusion", "mlir::ModuleOp"> {
  let summary = "Fuse neighbour loops when possible to hide data movement";
  let constructor = "mlir::createRemoteMemLoopFusionPass()";
  let dependentDialects = ["scf::SCFDialect", "rmem::RemoteMemDialect", "func::FuncDialect", "LLVM::LLVMDialect", "arith::ArithDialect"];
}

def RMEMSearchRemote : Pass<"search-rmem", "ModuleOp"> {
  let summary = "Mark operation as remote target if hit remote type";
  let constructor = "mlir::createRemoteMemSearchRemotePass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect"];
}

def RMEMPropRemote : Pass<"prop-rmem", "func::FuncOp"> {
  let summary = "Propagete remotability within function";
  let constructor = "mlir::createRemoteMemPropRemotePass()";
  let dependentDialects = ["func::FuncDialect", "rmem::RemoteMemDialect", "memref::MemRefDialect"];
}

def RMEMLoopRingCache : Pass<"rmem-loop-ring-cache", "mlir::ModuleOp"> {
  let summary = "Create ring cache access code for for-loops";
  let constructor = "mlir::createRemoteMemLoopRingCachePass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "scf::SCFDialect"];
  let options = [
    Option<"cacheCFG", "ccfg", "std::string", "", "cache configurations">,
    Option<"prefDist", "dist", "unsigned", "0", "prefetch distance">
  ];
}

def RMEMLoopNormalCache : Pass<"rmem-loop-normal-cache", "mlir::ModuleOp"> {
  let summary = "Create normal cache access code for for-loops";
  let constructor = "mlir::createRemoteMemLoopNormalCachePass()";
  let options = [
    Option<"cacheCFG", "ccfg", "std::string", "", "cache configurations">,
    Option<"prefDist", "dist", "unsigned", "0", "prefetch distance">
  ];

  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "scf::SCFDialect"];
}

def RMEMAffineRingCache : Pass<"rmem-affine-ring-cache", "mlir::ModuleOp"> {
  let summary = "Create ring cache access code for affine-loops";
  let constructor = "mlir::createRemoteMemAffineRingCachePass()";
  let options = [
    Option<"outputLevel", "out-level", "unsigned", 
    /*default = operator level*/ "0", "output MLIR level, 0 for operator level, 1 for runtime function level">,
    Option<"debug", "debug", "bool", "false", "print meta info">
  ];
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "memref::MemRefDialect", "vector::VectorDialect", "func::FuncDialect"];
}

def RMEMAffineNormalCache : Pass<"rmem-affine-normal-cache", "mlir::ModuleOp"> {
  let summary = "Create new runtime access code for affine-loops";
  let constructor = "mlir::createRemoteMemAffineNormalCachePass()";
  let options = [
    Option<"cacheCFG", "ccfg", "std::string", "", "cache configurations">,
    Option<"debug", "debug", "bool", "false", "print meta info">
  ];
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "memref::MemRefDialect", "vector::VectorDialect", "func::FuncDialect"];
}

def RMEMScfParallelSep : Pass<"rmem-scf-parallel-sep", "mlir::ModuleOp"> {
  let summary = "Create different version of function for scf parallel";
  let constructor = "mlir::createRemoteMemSCFParallelSepPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "memref::MemRefDialect", "scf::SCFDialect", "func::FuncDialect"]; 
}

def RMEMAffineAccessMem : Pass<"rmem-affine-access-mem", "mlir::ModuleOp"> {
  let summary = "Analyse affine loop accessed continuous remote memory";
  let constructor = "mlir::createRemoteMemAffineAccessMemPass()";
  let options = [
    Option<"prefDist", "dist", "unsigned", "0", "prefetch distance">
  ];
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "memref::MemRefDialect", "vector::VectorDialect", "func::FuncDialect"];
}

// not used
def RMEMPooling : Pass<"rmem-pooling", "mlir::ModuleOp"> {
  let summary = "Optimize local cache org given attributes, also register rbase";
  let constructor = "mlir::createRemoteMemPoolingPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect"];
}

#endif
