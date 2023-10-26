#ifndef MLIR_REMOTE_MEM_CONVERSION_PASSES_H
#define MLIR_REMOTE_MEM_CONVERSION_PASSES_H

#include "mlir/Pass/Pass.h"
#include "Lowering/RemoteMemToLLVM/RemoteMemToLLVM.h"
#include "Lowering/FuncRemote/FuncRemote.h"
#include "Lowering/SCFRemote/SCFRemote.h"
#include "Lowering/MemRefRemote/MemRefRemote.h"
#include "Lowering/AffineRemote/AffineRemote.h"
#include "Lowering/Trivial/Trivial.h"
#include "Lowering/EmitLLVM.h"
namespace mlir {

#define GEN_PASS_REGISTRATION
#include "Lowering/Passes.h.inc"
}

#endif