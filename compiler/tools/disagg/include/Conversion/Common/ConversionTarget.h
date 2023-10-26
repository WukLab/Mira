#ifndef REMOTE_MEM_CONVERSION_TARGET_H
#define REMOTE_MEM_CONVERSION_TARGET_H

#include "mlir/Transforms/DialectConversion.h"

namespace mlir {
class RemoteMemConversionTarget : public ConversionTarget {
public:
  explicit RemoteMemConversionTarget(MLIRContext &ctx);
};

}

#endif