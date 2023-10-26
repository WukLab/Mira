#ifndef MLIR_REMOTE_MEM_LOWERING_PASSES_H
#define MLIR_REMOTE_MEM_LOWERING_PASSES_H

#include "mlir/Pass/Pass.h"
#include "Conversion/MemDisagg.h"
namespace mlir {
class RewritePatternSet;
namespace disagg {
// class DisaggregationPass;

} // namespace disagg


#define GEN_PASS_REGISTRATION
#include "Conversion/Passes.h.inc"
}

#endif