#ifndef MLIR_WORKLOAD_ANALYSIS_H
#define MLIR_WORKLOAD_ANALYSIS_H

#include "mlir/IR/Operation.h"
#include "mlir/Support/LLVM.h"
#include <map>

namespace mlir {
namespace scf {
class ForOp;
}
namespace func {
class FuncOp;
}

class WorkloadComplexityAnalyzer {
public:
  static const unsigned uncertain = 0xAAAA;
  std::map<Operation* , unsigned> rel;

  WorkloadComplexityAnalyzer() = default;
  unsigned visitOperation(Operation *op);
  unsigned visitBlock(Block *block);

private:
  unsigned visitSCFForOp(scf::ForOp op);
  unsigned visitMLIRFuncOp(func::FuncOp op);
};
  
} // namespace mlir

#endif
