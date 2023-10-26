#ifndef FINAL_EMIT_LLVM_H
#define FINAL_EMIT_LLVM_H

#include <memory>
#include "Dialect/RemoteMem.h"

namespace mlir {
#define GEN_PASS_DECL_EMITLLVM
#include "Lowering/Passes.h.inc"
class Pass;
class RewritePatternSet;
class LLVMTypeConverter;

namespace rmem {
class RemoteMemTypeLowerer;
}

void populateEmitLLVMPatterns (rmem::RemoteMemTypeLowerer &rmemTypeConverter, LLVMTypeConverter &llvmTypeConverter, RewritePatternSet &patterns, DenseMap<StringRef, rmem::LocalCache> &pools, std::unordered_map<int, mlir::rmem::Cache*> &caches);
std::unique_ptr<Pass> createEmitLLVMPass();
}

#endif
