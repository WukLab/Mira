#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

using namespace mlir;
using namespace mlir::disagg;

//===============================================================
// Math trivial conversion
//===============================================================
using TrivialMathPowfConversion = TrivialMappingToRemotePattern<math::PowFOp, math::PowFOp>;
using TrivialMathSqrtConversion = TrivialMappingToRemotePattern<math::SqrtOp, math::SqrtOp>;
using TrivialMathExpConversion = TrivialMappingToRemotePattern<math::ExpOp, math::ExpOp>;
using TrivialMathSinConversion = TrivialMappingToRemotePattern<math::SinOp, math::SinOp>;
using TrivialMathCosConversion = TrivialMappingToRemotePattern<math::CosOp, math::CosOp>;

//===============================================================
// Arith trivial conversion
//===============================================================
using TrivialArithCmpIConversion = TrivialMappingToRemotePattern<arith::CmpIOp, arith::CmpIOp>;
using TrivialArithCmpFConversion = TrivialMappingToRemotePattern<arith::CmpFOp, arith::CmpFOp>;
using TrivialArithSubIConversion = TrivialMappingToRemotePattern<arith::SubIOp, arith::SubIOp>;
using TrivialArithSubFConversion = TrivialMappingToRemotePattern<arith::SubFOp, arith::SubFOp>;
using TrivialArithAddIConversion = TrivialMappingToRemotePattern<arith::AddIOp, arith::AddIOp>;
using TrivialArithAddFConversion = TrivialMappingToRemotePattern<arith::AddFOp, arith::AddFOp>;
using TrivialArithMulFConversion = TrivialMappingToRemotePattern<arith::MulFOp, arith::MulFOp>;
using TrivialArithDivFConversion = TrivialMappingToRemotePattern<arith::DivFOp, arith::DivFOp>;
using TrivialArithDivSIConversion = TrivialMappingToRemotePattern<arith::DivSIOp, arith::DivSIOp>;
using TrivialArithAndIConversion = TrivialMappingToRemotePattern<arith::AndIOp, arith::AndIOp>;
using TrivialArithXorIConversion = TrivialMappingToRemotePattern<arith::XOrIOp, arith::XOrIOp>;
using TrivialArithSI2FPConversion = TrivialMappingToRemotePattern<arith::SIToFPOp, arith::SIToFPOp>;
using TrivialArithExtUIConversion = TrivialMappingToRemotePattern<arith::ExtUIOp, arith::ExtUIOp>;
using TrivialArithTruncIConversion = TrivialMappingToRemotePattern<arith::TruncIOp, arith::TruncIOp>;
using TrivialArithIndexCastConversion = TrivialMappingToRemotePattern<arith::IndexCastOp, arith::IndexCastOp>;

//===============================================================
// Vector trivial conversion
//===============================================================

using TrivialVecBroadCastConversion = TrivialMappingToRemotePattern<vector::BroadcastOp, vector::BroadcastOp>;
using TrivialVecFMAConversion = TrivialMappingToRemotePattern<vector::FMAOp, vector::FMAOp>;

using TrivialLLVMCallConversion = TrivialMappingToRemotePattern<LLVM::CallOp, LLVM::CallOp>;

void mlir::disagg::populateTrivialDisaggPatterns(MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
    TrivialMathPowfConversion,
    TrivialMathSqrtConversion, 
    TrivialMathExpConversion,
    TrivialMathSinConversion,
    TrivialMathCosConversion,

    TrivialArithAddIConversion,
    TrivialArithAddFConversion,
    TrivialArithMulFConversion,
    TrivialArithDivFConversion,
    TrivialArithDivSIConversion,
    TrivialArithCmpIConversion,
    TrivialArithCmpFConversion,
    TrivialArithSubIConversion,
    TrivialArithSubFConversion,
    TrivialArithAndIConversion,
    TrivialArithXorIConversion,
    TrivialArithSI2FPConversion,
    TrivialArithExtUIConversion,
    TrivialArithTruncIConversion,
    TrivialArithIndexCastConversion,

    TrivialVecBroadCastConversion,
    TrivialVecFMAConversion,

    TrivialLLVMCallConversion
  >(ctx);

}