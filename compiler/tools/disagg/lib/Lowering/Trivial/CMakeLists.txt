add_mlir_conversion_library(MLIRRemoteMemLowerTrivial
  ArithRemote.cpp

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  MLIRIR
  MLIRLLVMDialect
  MLIRSupport
  MLIRTransforms
  MLIRRemoteMem
  MLIRLLVMCommonConversion
  )