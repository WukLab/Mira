add_subdirectory(Common)

add_mlir_conversion_library(MLIRMemDisagg
  LLVMDisaggPatterns.cpp
  SCFDisaggPatterns.cpp
  FuncDisaggPatterns.cpp
  MemRefDisaggPatterns.cpp
  AffineDisaggPatterns.cpp
  ArithDisaggPatterns.cpp
  VectorDisaggPatterns.cpp
  TrivialDisaggPatterns.cpp
  MemDisagg.cpp


  ADDITIONAL_HEADER_DIRS
  ${PROJECT_SOURCE_DIR}/include

  DEPENDS
  RemoteMemConversionPassIncGen

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