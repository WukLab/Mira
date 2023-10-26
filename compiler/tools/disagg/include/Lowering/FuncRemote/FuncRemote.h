#ifndef LOWER_REMOTE_IN_FUNC_H
#define LOWER_REMOTE_IN_FUNC_H

#include <memory>

namespace mlir {
#define GEN_PASS_DECL_LOWERRMEMINFUNC
#include "Lowering/Passes.h.inc"

class Pass;
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeLowerer;
}

void populateLowerFuncRMemPatterns (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns);
std::unique_ptr<Pass> createConvertFuncRMemPass();
}

#endif
