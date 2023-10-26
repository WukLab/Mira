add_mlir_conversion_library(MLIRRemoteMemLowerCommonConversion
  PatternBase.cpp
  RMemTypeLowerer.cpp
  RMemRefBuilder.cpp

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
