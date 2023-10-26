#ifndef LOWER_REMOTE_MEM_TO_LLVM_H
#define LOWER_REMOTE_MEM_TO_LLVM_H

#include <memory>
#include "Dialect/RemoteMem.h"

namespace mlir {
#define GEN_PASS_DECL_CONVERTREMOTEMEMTOLLVM
#include "Lowering/Passes.h.inc"
class Pass;
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeLowerer;
}

void populateRemoteMemToLLVMPatterns (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns, DenseMap<StringRef, rmem::LocalCache> &pools, std::unordered_map<int, mlir::rmem::Cache*> &caches);
std::unique_ptr<Pass> createRemoteMemToLLVMPass();
}

#endif
