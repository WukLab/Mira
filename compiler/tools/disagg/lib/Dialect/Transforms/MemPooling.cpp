#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/Support/TypeName.h"

namespace mlir {
#define GEN_PASS_DEF_RMEMPOOLING
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;

namespace {
class RMEMPoolingPass : public impl::RMEMPoolingBase<RMEMPoolingPass> {
  void runOnOperation() override {
    ModuleOp mop = getOperation();

    // populate access_mem base address catcher
    DenseMap<StringRef, Value> access_mem_base_pool;
    mop.walk([&](mlir::Operation *op) {
      if (auto catchers = op->getAttrOfType<ArrayAttr>("access_mem_catcher")) {
        for (auto attr : catchers) {
          auto catcher = attr.cast<ArrayAttr>();
          StringRef name = catcher[0].cast<StringAttr>().getValue();
          uint64_t i = catcher[1].cast<IntegerAttr>().getValue().getZExtValue();
          if (auto fop = dyn_cast<func::FuncOp>(op))
            access_mem_base_pool[name] = fop.getArgument(i);
          else
            access_mem_base_pool[name] = op->getResult(i);
        }
      }
    });

    // populate existing local caches
    DenseMap<StringRef, LocalCache> pools;
    if (auto ts = mop->getAttrOfType<DictionaryAttr>("rmem.templates")) {
      for (auto p : ts) {
        pools[p.getName().getValue()] = LocalCache(p.getValue().cast<ArrayAttr>(), access_mem_base_pool);
      }
    }

    // TODO: Optimization merge pools or separate pools
  }
};
}

std::unique_ptr<Pass> mlir::createRemoteMemPoolingPass() {
  return std::make_unique<RMEMPoolingPass>();
}