#ifndef REMOTE_TARGET_TO_REMOTE_MEM_H
#define REMOTE_TARGET_TO_REMOTE_MEM_H

#include <memory>
#include "llvm/ADT/StringSet.h"

namespace mlir {
class Pass;
class Value;
class Location;
class RewritePatternSet;
class ConversionPatternRewriter;

#define GEN_PASS_DECL_MEMDISAGGREGATION
#include "Conversion/Passes.h.inc"

namespace rmem {
class RemoteMemTypeConverter;
}

namespace disagg {

// aggregate pattens below
void populateMemDisaggPatterns(MLIRContext *ctx, RewritePatternSet &patterns);
// separate conversion patterns
void populateMemRefDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns);
void populateLLVMDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns);
void populateSCFDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns);
void populateFuncDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns);
void populateAffineDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns);
void populateArithDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns);
void populateVectorDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns);
void populateTrivialDisaggPatterns(MLIRContext *ctx, RewritePatternSet &patterns);

std::unique_ptr<Pass> createMemDisaggregationPass();
}
}

#endif