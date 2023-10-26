#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/BlockAndValueMapping.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "Dialect/WorkloadAnalysis.h"
#include "llvm/Support/TypeName.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Support/MathExtras.h"
#include <set>
#include <unordered_map>
#include <set>

namespace mlir {
#define GEN_PASS_DEF_RMEMSCFPARALLELSEP
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;
using namespace mlir::scf;

namespace {

Type transformType(Type type, int id, int factor) {
  if (auto rmrefType = type.dyn_cast<rmem::RemoteMemRefType>()) {
    return rmem::RemoteMemRefType::get(rmrefType.getElementType(), rmrefType.getCanRemote() + id * factor);
  } else
    return type;
}

void parallelAssign(func::FuncOp funcOp, int id, int factor) {
  auto operands = funcOp.getArguments();
  std::vector<Type> newArgTypes;
  for (auto op : operands) {
    auto newType = transformType(op.getType(), id, factor);
    op.setType(newType);
    newArgTypes.push_back(newType);
  }
  funcOp.setFunctionType(mlir::FunctionType::get(funcOp.getContext(), newArgTypes, funcOp.getFunctionType().getResults()));
}

void prepareThreadEnv(func::CallOp op, unsigned plevel, OpBuilder &b,
std::map<func::CallOp, std::pair<Value, Value>> &env) {
  MLIRContext *ctx = op->getContext();
  mlir::Location loc = op.getLoc();
  Value c0_64 = b.create<arith::ConstantIntOp>(loc, 0, 64);
  Value c1_64 = b.create<arith::ConstantIntOp>(loc, 1, 64);
  Value clevel_64 = b.create<arith::ConstantIntOp>(loc, plevel, 64);

  // pthread_t tids[plevel];
  Value tids = b.create<LLVM::AllocaOp>(loc, 
    LLVM::LLVMPointerType::get(LLVM::LLVMArrayType::get(b.getI64Type(), plevel)), c1_64);

  // Pack_t ps[plevel];
  auto ori_opd_types = llvm::to_vector<4>(
    llvm::map_range(op.getOperands(), [&](Value opd) -> Type {
      return opd.getType();
    }));
  auto packedType = LLVM::LLVMStructType::getLiteral(ctx, ori_opd_types);
  Value packs = b.create<rmem::LLVMAllocaOp>(loc, 
    LLVM::LLVMPointerType::get(packedType), 
    clevel_64, b.getI64IntegerAttr(0), TypeAttr::get(packedType));

  SmallVector<LLVM::GEPArg> inds = {0, 0};
  auto tidBase = b.create<LLVM::GEPOp>(loc, 
    LLVM::LLVMPointerType::get(b.getI64Type()), 
    tids, inds);
  env[op] = {tidBase, packs};
}

// this will construct wrapper that calls newFunc
// will change insersion point here
func::FuncOp createThreadWrap(func::FuncOp newFunc, StringRef name, 
  LLVM::LLVMStructType packType,
  ModuleOp mop, OpBuilder &b) {
  MLIRContext *ctx = mop->getContext();
  mlir::Location loc = newFunc.getLoc();

  Type voidPtr = rmem::getVoidPtrType(ctx);
  auto funcType = mlir::FunctionType::get(ctx, voidPtr, voidPtr); 
  auto wrapper = b.create<func::FuncOp>(loc, name, funcType);
  b.setInsertionPointToStart(wrapper.addEntryBlock());
  auto yield = b.create<func::ReturnOp>(loc, b.create<LLVM::NullOp>(loc, voidPtr).getRes());
  b.setInsertionPoint(yield);
  // get pack and extract value
  auto packPtr = b.create<rmem::BitCastOp>(loc, LLVM::LLVMPointerType::get(packType), wrapper.getArgument(0));
  std::vector<Value> unPackedOpds;
  for (auto [i, argT] : llvm::enumerate(newFunc.getArgumentTypes())) {
    Value fieldPtr = b.create<rmem::GEPOp>(loc, 
      LLVM::LLVMPointerType::get(packType.getBody()[i]), packPtr, 
      b.create<arith::ConstantIntOp>(loc, 0, 64).getResult(), 
      b.getDenseI32ArrayAttr({(int)i}), TypeAttr::get(packType));
    Value field = b.create<rmem::LoadOp>(loc, packType.getBody()[i], fieldPtr);
    if (field.getType() != argT) {
      field = b.create<rmem::BitCastOp>(loc, argT, field);
    }
    unPackedOpds.push_back(field);
  }
  b.create<func::CallOp>(loc, newFunc.getNameAttr(), newFunc.getResultTypes(), unPackedOpds); 
  return wrapper;
}

static func::FuncOp lookupOrCreatePFn(ModuleOp mop, StringRef name, ArrayRef<Type> inputTypes, Type resultType) {
  auto func = mop.lookupSymbol<func::FuncOp>(name);
  MLIRContext *ctx = mop.getContext();
  if (func)
    return func;
  OpBuilder b(mop.getBodyRegion());
  auto f = b.create<func::FuncOp>(
    mop->getLoc(), name,
    FunctionType::get(ctx, inputTypes, resultType ? resultType : getVoidType(ctx))
  );
  f.setPrivate();
  f->setAttr("llvm.linkage", mlir::LLVM::LinkageAttr::get(ctx, LLVM::Linkage::External));
  return f;
}

void parallelSeperation(scf::ParallelOp para, ModuleOp mop, std::map<func::CallOp, func::FuncOp> &oldCalls) {
  OpBuilder b(para);
  MLIRContext *ctx = mop->getContext();
  mlir::Location loc = para.getLoc();
  uint64_t plevel = para->getAttrOfType<IntegerAttr>("N_thread").getValue().getZExtValue();

  scf::ForOp newLoop = b.create<scf::ForOp>(loc, para.getLowerBound().front(), para.getUpperBound().front(), para.getStep().front(), para.getInitVals());
  newLoop.getBodyRegion().takeBody(para.getBodyRegion());
  para.erase();

  b.setInsertionPoint(newLoop);
  std::map<func::CallOp, std::pair<Value, Value>> threadEnv;
  for (func::CallOp callOp : newLoop.getBodyRegion().getOps<func::CallOp>()) {
    prepareThreadEnv(callOp, plevel, b, threadEnv);
  }
  assert(threadEnv.size() == 1 && "in the future, make whole body a single lambda");
  Value pattrt = b.create<LLVM::NullOp>(loc, 
    LLVM::LLVMPointerType::get(
      LLVM::LLVMStructType::getLiteral(ctx, {b.getI64Type(), LLVM::LLVMArrayType::get(b.getI8Type(), 48)})));

  // for every call op in this new for loop, duplicate the callee
  auto calls = newLoop.getBodyRegion().getOps<func::CallOp>();
  for (func::CallOp callOp : calls) {
    StringRef callee = callOp.getCallee();
    auto func = mop.lookupSymbol<func::FuncOp>(callee);

    // create a swtich-like pattern
    for (uint64_t i = 0; i < plevel; ++ i) {
      // create new function
      auto newFunc = dyn_cast<func::FuncOp>(func->clone(Operation::CloneOptions::all()));
      newFunc.setName(callee.str() + "__" + std::to_string(i));
      b.setInsertionPointAfter(func);
      b.insert(newFunc);
      // change new func type
      parallelAssign(newFunc, i, 2);
      // create wrapped thread task: void * task(void *)
      auto pBase = threadEnv[callOp].second;
      LLVM::LLVMStructType packType = pBase.getType().cast<LLVM::LLVMPointerType>().getElementType().cast<LLVM::LLVMStructType>();
      auto newWrapper = createThreadWrap(newFunc, "task_" + std::to_string(i), packType, mop, b);

      b.setInsertionPoint(callOp);
      Value match = b.create<arith::CmpIOp>(loc, arith::CmpIPredicate::eq, 
        b.create<arith::ConstantIndexOp>(loc, i),
        newLoop.getInductionVar()
      );
      // NOTE: assume callop does not have result
      scf::IfOp cond = b.create<scf::IfOp>(loc, match, false);
      b.setInsertionPointToStart(cond.thenBlock());

      // process operands
      Value ci_64 = b.create<arith::ConstantIntOp>(loc, i, 64);
      // 1. pack[i] = {opds ... }; and cast to void ptr
      Value packPtr = b.create<rmem::GEPOp>(loc,
        pBase.getType(), pBase, 
        ci_64, b.getDenseI32ArrayAttr({}), TypeAttr::get(packType));
      for (int argi = 0; argi < callOp.getNumOperands(); ++ argi) {
        Value field = b.create<rmem::GEPOp>(loc, 
          LLVM::LLVMPointerType::get(callOp.getOperandTypes()[argi]), packPtr, 
          b.create<arith::ConstantIntOp>(loc, 0, 64).getResult(), b.getDenseI32ArrayAttr({argi}), TypeAttr::get(packType));
        b.create<rmem::StoreOp>(loc, callOp.getArgOperands()[argi], field);
      }
      packPtr = b.create<rmem::BitCastOp>(loc, getVoidPtrType(ctx), packPtr);
      // 2. get tid + i
      auto tidBase = threadEnv[callOp].first;
      SmallVector<Value> inds{ci_64};
      auto tidPtr = b.create<LLVM::GEPOp>(loc, tidBase.getType(), tidBase, inds);
      // 3. get func handler
      auto wrapperType = newWrapper.getFunctionType();
      LLVM::LLVMFunctionType LFT = LLVM::LLVMFunctionType::get(wrapperType.getResult(0), wrapperType.getInputs(), false);
      Value pcreatePtr = b.create<rmem::LLVMAddressOfOp>(loc, LLVM::LLVMPointerType::get(LFT), newWrapper.getNameAttr());
      // 4. call pthread create
      auto createFn = lookupOrCreatePFn(mop, "pthread_create", {
        tidPtr.getType(), pattrt.getType(), pcreatePtr.getType(), packPtr.getType()}, b.getI32Type());
      SmallVector<Value> inputs = {tidPtr, pattrt, pcreatePtr, packPtr};
      b.create<func::CallOp>(loc, createFn.getNameAttr(), createFn.getResultTypes(), inputs);
    }
    oldCalls[callOp] = func;
  }
  // unfold join
  func::CallOp callOp = *calls.begin();
  b.setInsertionPointAfter(newLoop);
  Value whatever = b.create<LLVM::NullOp>(loc, LLVM::LLVMPointerType::get(rmem::getVoidPtrType(ctx)));
  for (uint64_t i = 0; i < plevel; ++ i) {
    auto tidBase = threadEnv[callOp].first;
    Value ci_64 = b.create<arith::ConstantIntOp>(loc, i, 64);
    SmallVector<Value> inds{ci_64};
    auto tid = b.create<LLVM::LoadOp>(loc, b.create<LLVM::GEPOp>(loc, tidBase.getType(), tidBase, inds)).getRes();
    auto joinFn = lookupOrCreatePFn(mop, "pthread_join", {tid.getType(), whatever.getType()}, b.getI32Type());
    SmallVector<Value> inputs = {tid, whatever};
    b.create<func::CallOp>(loc, joinFn.getNameAttr(), joinFn.getResultTypes(), inputs);
  }
}
}

namespace {
class RMEMScfParallelSep : public impl::RMEMScfParallelSepBase<RMEMScfParallelSep> {
  void runOnOperation() override {
    ModuleOp mop = getOperation();
    std::map<func::CallOp, func::FuncOp> oldCalls;
    mop->walk([&](scf::ParallelOp para) {
      parallelSeperation(para, mop, oldCalls);
    });
    // to prevent excessive local buffer
    for (auto [call, func] : oldCalls) {
      call->erase();
      func->erase();
    }
  }
};
}

std::unique_ptr<Pass> mlir::createRemoteMemSCFParallelSepPass() {
  return std::make_unique<RMEMScfParallelSep>();
}