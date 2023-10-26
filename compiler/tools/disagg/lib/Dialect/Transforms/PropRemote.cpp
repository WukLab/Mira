#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "Conversion/Common/PatternBase.h"
#include "Dialect/RemoteMem.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "llvm/Support/TypeName.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

#include <set>
#include <deque>

namespace mlir {
#define GEN_PASS_DEF_RMEMPROPREMOTE
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;

namespace {


class RMEMPropRemotePass: public impl::RMEMPropRemoteBase<RMEMPropRemotePass> {
  void runOnOperation() override {
    func::FuncOp funcOp = getOperation();
    if (funcOp.empty())
      return;
    OpBuilder b(funcOp);
    if (!rmem::hasRemoteTarget(funcOp))
      return;

    std::deque<Value> dq;

    // Set attr of all users of current Value
    // users should check operand and decide how to convert
    // this is different from "remote_target" that op does not have to
    // convert
    auto notifyRemoteUsers([&](Value v){
      if (!v.use_empty()) {
        for (Operation *user : v.getUsers()) {
          user->setAttr("remote_check_use", b.getI8IntegerAttr(1));
          for (Value r : user->getResults())
            dq.push_back(r);
        } 
      }
    });

    // Get funcOp signature inputs
    auto funcArgs = funcOp.getArguments();
    if (auto its = funcOp->getAttrOfType<mlir::ArrayAttr>("operand_types")) {
      for (auto &en : llvm::enumerate(its.getAsValueRange<mlir::TypeAttr>())) {
        if (funcArgs[en.index()].getType() != en.value()) {
          dq.push_back(funcArgs[en.index()]);
        }
        // result.addInputs(en.index(), en.value());
      }
    }

    // add remote target if any
    funcOp->walk([&](Operation *op) {
      if (rmem::hasRemoteTarget(op) || rmem::hasRemoteCheckUse(op)) {
        for (Value v : op->getResults()) {
          dq.push_back(v);
        }
      }
    });
    // bfs mark check use
    while (!dq.empty()) {
      size_t es = dq.size();
      while (es) {
        Value v = dq.front();
        notifyRemoteUsers(v);
        es --;
        dq.pop_front();
      }
    }
  }
};
}

std::unique_ptr<Pass> mlir::createRemoteMemPropRemotePass() {
  return std::make_unique<RMEMPropRemotePass>();
}
