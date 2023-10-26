#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/Support/TypeName.h"

namespace mlir {
#define GEN_PASS_DEF_RMEMDETERMINEPOOLSOURCE
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;

namespace {
/* Rewrite Patterns */
}

namespace {

template <typename SourceOp>
static void poolDecider(SourceOp op, OpBuilder b, DenseMap<mlir::Type, unsigned> &cacheTable) {
  Value mem = op.getRmemref();

  // if the subsequent user is bitcast
  // use implicit cast result as the type key
  // Otherwise use "!llvm.ptr<i8>"
  if (mem.use_empty()) {
    llvm::errs() << "Remote malloc has no users, use default pool\n";
    op.setPoolIdAttr(b.getI32IntegerAttr(1));
    return;
  }

  // implicit/explicit cast will always be the first user
  // This policy will not handle situations where the pointer is first casted into some intermediate type and then casted into target type when using it
  auto user = dyn_cast<rmem::BitCastOp>(*mem.getUsers().begin());
  if (!user) {
    op.setPoolIdAttr(b.getI32IntegerAttr(1));
    return;
  } 
  // BitCastOp will always result in !rmem.rmref<!llvm.ptr<...>>
  auto ptrType = user.getRes().getType().cast<rmem::RemoteMemRefType>().getElementType().cast<LLVM::LLVMPointerType>();
  if (ptrType.isOpaque()) {
    llvm::errs() << "Assigning pool source for opaque type, use default pool\n";
    op.setPoolIdAttr(b.getI32IntegerAttr(1));
  } else {
    if (cacheTable.find(ptrType.getElementType()) != cacheTable.end()) {
      op.setPoolIdAttr(b.getI32IntegerAttr(cacheTable[ptrType.getElementType()]));
    } else {
      /*
        0 - stack-like pool
        1 - default pool
      */
      unsigned nid = cacheTable.size();
      cacheTable[ptrType.getElementType()] = nid;
      op.setPoolIdAttr(b.getI32IntegerAttr(nid));
    }
  }
}

class RMEMDeterminePoolSourcePass : public impl::RMEMDeterminePoolSourceBase<RMEMDeterminePoolSourcePass> {
  void runOnOperation() override {
    // Global pool table
    // [Type] -> pool id
    DenseMap<mlir::Type, unsigned> cacheTable;
    cacheTable[LLVM::LLVMStructType::getIdentified(&getContext(), "_disagg_stack-like_pool")] = 0;
    cacheTable[LLVM::LLVMStructType::getIdentified(&getContext(), "_disagg_default_pool")] = 1;
    ModuleOp m = getOperation();

    // set pool for each type
    m->walk([&](LLVMMallocOp op) {
      poolDecider(op, OpBuilder(op), cacheTable);
    });

    // TODO: refactor
    m->walk([&](rmem::LLVMCallocOp op) {
      poolDecider(op, OpBuilder(op), cacheTable);
    });

    // record number of caches
    OpBuilder mb(m);
    m->setAttr("rmem._disagg_num_caches", mb.getI32IntegerAttr(cacheTable.size()));
  }
};
}

std::unique_ptr<Pass> mlir::createRemoteMemDPSPass() {
  return std::make_unique<RMEMDeterminePoolSourcePass>();
}