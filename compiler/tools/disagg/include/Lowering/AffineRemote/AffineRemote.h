#ifndef LOWER_RMEM_IN_AFFINE_H
#define LOWER_RMEM_IN_AFFINE_H

#include <memory>

namespace mlir {
#define GEN_PASS_DECL_LOWERRMEMINAFFINE
#include "Lowering/Passes.h.inc"
class Pass;
class RewritePatternSet;
namespace rmem {
// class RemoteMemTypeLowerer;
}

void populateLowerAffineRemotePatterns(RewritePatternSet &patterns);
std::unique_ptr<Pass> createConvertAffineRemotePass();

}

#endif
