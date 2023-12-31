#ifndef REMOTE_MEM_API_CALL_UTILS_H
#define REMOTE_MEM_API_CALL_UTILS_H

#include "mlir/IR/Operation.h"
#include "mlir/Support/LLVM.h"

namespace mlir {
class Location;
class ModuleOp;
class OpBuilder;
class Operation;
class Type;
class Value;
class ValueRange;

namespace LLVM {
class LLVMFuncOp;
}

namespace rmem {
Type getIntBitType(MLIRContext *ctx, unsigned bitwidth);
Value createIntConstant(OpBuilder &builder, Location loc, int64_t value, Type resultType);
LLVM::LLVMStructType getCacheTokenType(MLIRContext *ctx);
LLVM::LLVMVoidType getVoidType(MLIRContext *ctx);
LLVM::LLVMPointerType getVoidPtrType(MLIRContext *ctx);
bool isCacheAccessOp(const StringRef calless);

// get rdma send/recv buf
LLVM::GlobalOp getOrCreateSbuf(ModuleOp moduleOp);
LLVM::GlobalOp getOrCreateRbuf(ModuleOp moduleOp);
LLVM::GlobalOp getOrCreateTokens(ModuleOp moduleOp);

// get offload return buf
LLVM::GlobalOp getOrCreateOffloadArgBuf(ModuleOp moduleOp);
LLVM::GlobalOp getOrCreateOffloadRetBuf(ModuleOp moduleOp);

// get global wrid counter
LLVM::GlobalOp getOrCreateWRID(ModuleOp moduleOp);

// calcualte sizeof(elemType) * arraySize in bytes
// not considering 
Value calculateBufferSize(OpBuilder &builder, Location loc, Type elemType, Value arraySize);

LLVM::LLVMFuncOp lookupOrCreateRawMallocFn(ModuleOp moduleOp);
LLVM::LLVMFuncOp lookupOrCreateRawCallocFn(ModuleOp moduleOp);

// virt_ptr = _disagg_alloc(cid = 2, size);
LLVM::LLVMFuncOp lookupOrCreateAllocFn(ModuleOp moduleOp);
// ptr = _disagg_stack_alloc(size);
LLVM::LLVMFuncOp lookupOrCreateStackAllocaFn(ModuleOp moduleOp);
// void _disagg_free(virt_ptr);
LLVM::LLVMFuncOp lookupOrCreateFreeFn(ModuleOp moduleOp);
// cache_token_t = cache_request(virt_ptr);
LLVM::LLVMFuncOp lookupOrCreateCacheRequestFn(ModuleOp moduleOp);
// cache_token_t = cahe_prefetch(virt_prt);
LLVM::LLVMFuncOp lookupOrCreateCachePrefetchFn(ModuleOp moduleOp);
// void local_ptr = cache_access_mut(cache_token_t); 
LLVM::LLVMFuncOp lookupOrCreateCacheAccessMutFn(ModuleOp moduleOp);
// void local_ptr = cache_access(cache_token_t);
LLVM::LLVMFuncOp lookupOrCreateCacheAccessFn(ModuleOp moduleOp);
// void cache_init(); /* config linebase to use sbuf */
LLVM::LLVMFuncOp lookupOrCreateCacheInitFn(ModuleOp moduleOp);
// void channel_init(); 
LLVM::LLVMFuncOp lookupOrCreateChannelInitFn(ModuleOp moduleOp);
// Deprecated global cacehs[n]
LLVM::GlobalOp lookupOrCreateGlobalCaches(ModuleOp moduleOp, unsigned n);
// get or create global counter name for llvm instr
LLVM::GlobalOp lookupOrCreateGlobalCtrName(ModuleOp moduleOp, StringRef ctrName, StringRef fname);

// void init_client();
LLVM::LLVMFuncOp lookupOrCreateInitClientFn(ModuleOp moduleOp);
// uint64_t n_access_snaphot();
LLVM::LLVMFuncOp lookupOrCreateAccSnapshotFn(ModuleOp moduleOp);
// int __llvm_profile_write_file();
LLVM::LLVMFuncOp lookupOrCreateProfileWriteFn(ModuleOp moduleOp);

// unsigned channel_create(
//   uint64_t original_start_vaddr, 
//   uint64_t upper_bound, 
//   size_t size_each, 
//   unsigned num_slots, 
//   unsigned batch, 
//   unsigned dist, 
//   int kind);
LLVM::LLVMFuncOp lookupOrCreateChannelCreateFn(ModuleOp moduleOp);

// void * channel_access(unsigned channel, unsigned i);
LLVM::LLVMFuncOp lookupOrCreateChannelAccessFn(ModuleOp moduleOp);

// void channel_destroy(unsigned channel);
LLVM::LLVMFuncOp lookupOrCreateChannelDestroyFn(ModuleOp moduleOp);

// void rdma(i64 buf, i64 size, i64 raddr, i64 id, i32 code);
LLVM::LLVMFuncOp lookupOrCreateRDMAFn(ModuleOp moduleOp);

// void rring_sync(ptr<i64> s/r, i64 t)
LLVM::LLVMFuncOp lookupOrCreateRRingSync(ModuleOp moduleOp);

/* instrumentation intrinsics 
1. void @llvm.instrprof.increment(ptr <name>, i64 <hash>,
                                       i32 <num-counters>, i32 <index>)

2. void @llvm.instrprof.increment.step(ptr <name>, i64 <hash>,
                                            i32 <num-counters>,
                                            i32 <index>, i64 <step>)
*/
LLVM::LLVMFuncOp lookupOrCreateInstrInc(ModuleOp moduleOp);
LLVM::LLVMFuncOp lookupOrCreateInstrIncStep(ModuleOp moduleOp);
LLVM::LLVMFuncOp lookupOrCreateCallOffloadService(ModuleOp moduleOp);

Value cacheRequestCallWrapper(OpBuilder &builder, Location loc, LLVM::LLVMFuncOp reqFn, Value ptr);

Value cacheAccessCallWrapper(OpBuilder &builder, Location loc, 
  LLVM::LLVMFuncOp accFn, 
  Value token_ptr /* int128_t* */, 
  Type castPtrType);

LLVM::LLVMFuncOp lookupOrCreateFn(ModuleOp moduleOp, 
                                  StringRef name, 
                                  ArrayRef<Type> inputTypes = {}, 
                                  Type resultType = {});
Operation::result_range createLLVMCall(OpBuilder &builder,
                                       Location loc,
                                       LLVM::LLVMFuncOp fn,
                                       ValueRange inputs = {});

}
}

#endif