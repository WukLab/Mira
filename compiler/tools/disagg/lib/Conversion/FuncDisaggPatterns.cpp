#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

using namespace mlir;
using namespace mlir::disagg;

//====================================================================================
// Func dialect conversion

class FuncFuncOpDisagg : public OpConversionPattern<func::FuncOp> {
  using OpConversionPattern<func::FuncOp>::OpConversionPattern;

  func::FuncOp disaggBltFuncSignature(func::FuncOp funcOp, ConversionPatternRewriter &rewriter) const {
    // Convert funcOp using typeconverter
    TypeConverter::SignatureConversion result(funcOp.getNumArguments());

    // Remap funcOp signature inputs
    if (auto its = funcOp->getAttrOfType<mlir::ArrayAttr>("operand_types")) {
      for (auto &en : llvm::enumerate(its.getAsValueRange<mlir::TypeAttr>())) {
        result.addInputs(en.index(), en.value());
      }
    } else {
      for (auto &en : llvm::enumerate(funcOp.getArgumentTypes())) {
        result.addInputs(en.index(), en.value());
      }
    }
    // Create resultTypes for new funcOp
    SmallVector<Type, 4> resultTypes;
    if (auto rts = funcOp->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      for (Type en : rts.getAsValueRange<mlir::TypeAttr>())
        resultTypes.push_back(en);
    } else {
      for (Type en : funcOp.getResultTypes())
        resultTypes.push_back(en);
    }

    auto newFuncOpType = mlir::FunctionType::get(
      funcOp.getContext(), 
      result.getConvertedTypes(), 
      resultTypes
    );
    if (!newFuncOpType) return nullptr;

    // propagate attributes
    SmallVector<NamedAttribute, 4> attrs;
    llvm::SmallSet<StringRef, 4> funcFilter;
    funcFilter.insert(SymbolTable::getSymbolAttrName());
    funcFilter.insert(FunctionOpInterface::getTypeAttrName());
    rmem::filterTargetAttributes(funcOp->getAttrs(), attrs, funcFilter);

    // newFuncOpType.dump();

    auto newFuncOp = rewriter.create<func::FuncOp>(funcOp.getLoc(), 
      funcOp.getName(), newFuncOpType,
      attrs
    );
    rewriter.inlineRegionBefore(funcOp.getBody(), newFuncOp.getBody(), newFuncOp.end());
    rewriter.applySignatureConversion(&newFuncOp.getBody(), result);
    // if (failed(rewriter.convertRegionTypes(&newFuncOp.getBody(), *getTypeConverter(), &result)))
    //   return nullptr;
    return newFuncOp;
  }

  LogicalResult matchAndRewrite(func::FuncOp op, func::FuncOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto newFuncOp = disaggBltFuncSignature(op, rewriter);
    if (!newFuncOp)
      return mlir::failure();
    rewriter.eraseOp(op);
    return mlir::success();
  }
};

class FuncReturnOpDisagg : public OpConversionPattern<func::ReturnOp> {
  using OpConversionPattern<func::ReturnOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(func::ReturnOp op, func::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (disagg::detail::trivialRewrite(op, func::ReturnOp::getOperationName(), adaptor.getOperands(), rewriter).succeeded())
      return mlir::success();
    rewriter.replaceOpWithNewOp<func::ReturnOp>(op, adaptor.getOperands());
    return mlir::success(); 
  }
};

class FuncCallOpDisagg : public OpConversionPattern<func::CallOp> {
  using OpConversionPattern<func::CallOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(func::CallOp callOp, func::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    SmallVector<Type, 4> resultTypes;
    StringAttr calleeAttr = rewriter.getStringAttr(callOp.getCallee());
    if (auto calleeName = callOp->getAttrOfType<mlir::StringAttr>("remote_callee")) {
      calleeAttr = calleeName;
    }
    if (auto rts = callOp->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      for (Type en : rts.getAsValueRange<mlir::TypeAttr>())
        resultTypes.push_back(en);
    } else {
      for (Type en : callOp.getResultTypes())
        resultTypes.push_back(en);
    }
    SmallVector<Value, 4> inputs;
    ValueRange oldInputs = adaptor.getOperands();
    if (auto argts = callOp->getAttrOfType<mlir::ArrayAttr>("need_conv")) {
      for (size_t i = 0; i < oldInputs.size(); ++ i) {
        Type afterConv = argts[i].cast<TypeAttr>().getValue();
        if (afterConv != oldInputs[i].getType()) {
          Value cast = rewriter.create<rmem::BitCastOp>(callOp.getLoc(), afterConv, oldInputs[i]);
          inputs.push_back(cast);
        } else {
          inputs.push_back(oldInputs[i]);
        }
      }
    } else {
      // TODO: use attr to guide conversion
      inputs = oldInputs;
      // for (auto &en : llvm::enumerate(oldInputs)) {
      //   auto convertedType = en.value().getType();
      //   auto originalType = callOp.getOperand(en.index()).getType();
      //   if (convertedType != originalType && 
      //   isTrueRemoteRef(en.value().getType())) {
      //     Value mat = rewriter.create<rmem::MaterializeOp>(callOp.getLoc(), callOp.getOperand(en.index()).getType(), en.value());
      //     inputs.push_back(mat);
      //   } else {
      //     inputs.push_back(en.value());
      //   }
      // }
    }

    if (auto needOffload = callOp->getAttrOfType<mlir::IntegerAttr>("remote_offload")) {
      auto offload = rewriter.create<rmem::OffloadOp>(callOp.getLoc(), 
        resultTypes, 
        rewriter.create<arith::ConstantIntOp>(callOp.getLoc(), needOffload.getValue().getZExtValue(), 32),
        inputs
      );
      rewriter.replaceOp(callOp, offload.getResults());
    } else {
      auto newCall = rewriter.create<func::CallOp> (
        callOp.getLoc(), calleeAttr, resultTypes, inputs
      );
      rewriter.replaceOp(callOp, newCall.getResults());
    }
    return mlir::success();
  }
};


// =================================================================================================================

void mlir::disagg::populateFuncDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
  /* Memref pattnerns */
  /* builtin func patterns */
  FuncFuncOpDisagg,
  FuncReturnOpDisagg,
  FuncCallOpDisagg
  >(ctx);
}
