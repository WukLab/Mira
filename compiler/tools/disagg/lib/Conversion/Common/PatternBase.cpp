#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "Conversion/Common/PatternBase.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/FunctionUtils.h"

#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"
#include <set>

using namespace mlir;
using namespace mlir::rmem;

const static std::set<StringRef> remoteAttrs{
  "remote_target", 
  "remote_check_use", 
  "rel_types", 
  "remote_global_type", 
  "operand_types", 
  "remote_callee", 
  "remote_offload"
};

void mlir::rmem::filterTargetAttributes(ArrayRef<NamedAttribute> attrs, SmallVectorImpl<NamedAttribute> &result, llvm::SmallSet<StringRef, 4> filter) {
  for (const auto &attr : attrs) {
    if (remoteAttrs.find(attr.getName()) != remoteAttrs.end() ||
        filter.contains(attr.getName())) {
          continue;
        }
    result.push_back(attr);
  }
}

bool mlir::rmem::hasRemoteTarget(Operation *op) {
  if (auto remoteAttr = op->getAttrOfType<IntegerAttr>("remote_target")) {
    if (!remoteAttr.getValue().isZero()) return true;
  }
  return false;
}

bool mlir::rmem::hasRemoteCheckUse(Operation *op) {
  if (auto checkAttr = op->getAttrOfType<IntegerAttr>("remote_check_use")) {
    if (!checkAttr.getValue().isZero()) return true;
  }
  return false;
}

LogicalResult mlir::rmem::ifNotRemoteTarget(Operation *op) {
  if (!hasRemoteTarget(op)) {
    for (auto const &s : remoteAttrs) 
      op->removeAttr(s);
    return mlir::success();
  }
  return mlir::failure();
}

static bool isRemotableTypeImpl(Type type, SetVector<Type> &callStack) {
  if (callStack.contains(type)) return true;
  callStack.insert(type);
  auto stackGurard = llvm::make_scope_exit([&] { callStack.pop_back(); });

  auto isRemotableHandler = [&](Type type) {
    return isRemotableTypeImpl(type, callStack);
  };

  return llvm::TypeSwitch<Type, bool>(type)
  .Case<LLVM::LLVMStructType>([&](auto structType) {
    return llvm::any_of(structType.getBody(), isRemotableHandler);
  })
  .Case<LLVM::LLVMPointerType>([](Type){ return true; })
  .Case<
    VectorType,
    LLVM::LLVMFixedVectorType,
    LLVM::LLVMScalableVectorType,
    LLVM::LLVMArrayType
    >([&](auto containerType) {
      return isRemotableHandler(containerType.getElementType());
    })
  .Case<MemRefType>([](Type){ return true; })
  .Default([](Type){ return false; });
}

bool mlir::rmem::isRemotableType(Type t) {
  SetVector<Type> callStack;
  return isRemotableTypeImpl(t, callStack);
}

// check if a function type contains remotable type in their signature
bool mlir::rmem::hasRemotableSignature(Operation *op) {
  if (auto funcOp = dyn_cast<FunctionOpInterface>(op)) {
    bool hasRemotableArgs = any_of(funcOp.getArgumentTypes(), isRemotableType);
    bool hasRemotableResults = any_of(funcOp.getResultTypes(), isRemotableType);
    return hasRemotableArgs || hasRemotableResults;
  }
  if (auto callOp = dyn_cast<LLVM::CallOp>(op)) {
    bool hasRemotableOperands = any_of(callOp.getOperandTypes(), isRemotableType);
    bool hasRemotableResults = any_of(callOp.getResultTypes(), isRemotableType);
    return hasRemotableOperands || hasRemotableResults;
  }
  if (auto callOp = dyn_cast<func::CallOp>(op)) {
    bool hasRemotableOperands = any_of(callOp.getOperandTypes(), isRemotableType);
    bool hasRemotableResults = any_of(callOp.getResultTypes(), isRemotableType);
    return hasRemotableOperands || hasRemotableResults;
  }
  if (auto returnOp = dyn_cast<func::ReturnOp>(op)) {
    return op->getNumOperands() && any_of(op->getOperandTypes(), isRemotableType);
  }
  if (auto returnOp = dyn_cast<LLVM::ReturnOp>(op)) {
    return op->getNumOperands() && any_of(op->getOperandTypes(), isRemotableType);
  }
  return false;
}

ConvertToRemoteMemPattern::ConvertToRemoteMemPattern(StringRef rootOpName, MLIRContext *ctx, RemoteMemTypeConverter &typeConverter, PatternBenefit benefit): ConversionPattern(typeConverter, rootOpName, benefit, ctx) {}

rmem::RemoteMemDialect &ConvertToRemoteMemPattern::getDialect() const {
  return *getTypeConverter()->getDialect();
}

RemoteMemTypeConverter *ConvertToRemoteMemPattern::getTypeConverter() const {
  return ConversionPattern::getTypeConverter<RemoteMemTypeConverter>();
}

LogicalResult disagg::detail::trivialRewrite (
    Operation *op, StringRef targetOp, ValueRange operands,
    ConversionPatternRewriter &rewriter) {
  // make sure remote_target will trigger other handlers
  if (hasRemoteTarget(op)) {
    return mlir::failure();
  }
  for (auto const &[before, after] : llvm::zip(op->getOperands(), operands)) {
    if (before.getType() != after.getType())
      return mlir::failure();
  }

  SmallVector<Type, 2> resultTypes;
  if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
    for (auto ta : rts) {
      resultTypes.emplace_back(ta.cast<TypeAttr>().getValue());
    }
  } else {
    for (auto rt : op->getResultTypes())
      resultTypes.emplace_back(rt);
  }

  SmallVector<NamedAttribute, 4> attrs;
  filterTargetAttributes(op->getAttrs(), attrs);

  // Create the operation through state since we don't know its C++ type.
  Operation *newOp =
      rewriter.create(op->getLoc(), rewriter.getStringAttr(targetOp), operands,
                      resultTypes, attrs);

  rewriter.replaceOp(op, newOp->getResults());
  return success();
}
