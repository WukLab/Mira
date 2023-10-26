add_mlir_library(DisaggMLIRUtils
    ProfileReader.cpp

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  MLIRAnalysis
  MLIRDataLayoutInterfaces
  MLIRRemoteMemCommonConversion
  MLIRMemRefDialect
  MLIRLLVMDialect
  MLIRSCFDialect
  MLIRRemoteMem
  MLIRTransforms
)