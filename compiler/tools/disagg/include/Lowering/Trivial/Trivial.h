#ifndef LOWER_REMOTE_MEM_IN_Trivial_H
#define LOWER_REMOTE_MEM_IN_Trivial_H

namespace mlir {
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeLowerer;
}

void populateLowerArithRMemPatterns(rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &set);
}

#endif
