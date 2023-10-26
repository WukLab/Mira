#ifndef LOWER_RMEM_IN_SCF_H
#define LOWER_RMEM_IN_SCF_H

#include <memory>

namespace mlir {
#define GEN_PASS_DECL_LOWERRMEMINSCF
#include "Lowering/Passes.h.inc"
class Pass;
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeLowerer;
}

void populateLowerSCFRMemPatterns(rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns);
std::unique_ptr<Pass> createConvertSCFRemotePass();
}

#endif