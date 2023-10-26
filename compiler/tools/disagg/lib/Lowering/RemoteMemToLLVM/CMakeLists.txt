add_mlir_conversion_library(MLIRRemoteMemToLLVM
  RemoteMemToLLVM.cpp

  ADDITIONAL_HEADER_DIRS
  ${PROJECT_SOURCE_DIR}/include

  DEPENDS
  RemoteMemLoweringPassIncGen 

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  MLIRAnalysis
  MLIRDataLayoutInterfaces
  MLIRMemRefDialect
  MLIRLLVMDialect
  MLIRSCFDialect
  MLIRRemoteMem
  MLIRRemoteMemLowerCommonConversion
  MLIRRemoteMemLowerTrivial
  MLIRLowerSCFRemote
  MLIRLowerFuncRemote
  MLIRLowerMemRefRemote
  MLIRTransforms
)