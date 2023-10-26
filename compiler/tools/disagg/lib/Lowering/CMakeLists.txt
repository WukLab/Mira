add_subdirectory(Common)
add_subdirectory(Trivial)
add_subdirectory(RemoteMemToLLVM)
add_subdirectory(FuncRemote)
add_subdirectory(SCFRemote)
add_subdirectory(MemRefRemote)
add_subdirectory(AffineRemote)

add_mlir_conversion_library(MLIREmitLLVM
  EmitLLVM.cpp

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
  MLIRFuncDialect
  MLIRRemoteMem
  MLIRRemoteMemLowerCommonConversion
  MLIRRemoteMemLowerTrivial
  MLIRLowerSCFRemote
  MLIRLowerFuncRemote
  MLIRLowerMemRefRemote
  MLIRRemoteMemToLLVM
  MLIRTransforms

  MLIRAffineToStandard
  MLIRArithTransforms
  MLIRFuncToLLVM
  MLIRFuncTransforms
  MLIRMathToLLVM
  MLIRMathTransforms
  MLIRMemRefToLLVM
  MLIRMemRefTransforms
  MLIRReconcileUnrealizedCasts
  MLIRSCFToControlFlow
  MLIRShapeToStandard
  MLIRVectorToLLVM
)