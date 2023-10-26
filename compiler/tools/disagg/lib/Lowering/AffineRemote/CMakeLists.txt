add_mlir_conversion_library(MLIRLowerAffineRemote
  AffineRemote.cpp

  ADDITIONAL_HEADER_DIRS
  ${PROJECT_SOURCE_DIR}/include

  DEPENDS
  RemoteMemLoweringPassIncGen 

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  MLIRAnalysis
  MLIRDataLayoutInterfaces
  MLIRRemoteMem
  MLIRRemoteMemLowerCommonConversion
  MLIRTransforms
  MLIRAffineDialect
  MLIRAffineUtils
  MLIRArithDialect
  MLIRVectorDialect
  MLIRIR
  MLIRMemRefDialect
  MLIRSCFDialect
)