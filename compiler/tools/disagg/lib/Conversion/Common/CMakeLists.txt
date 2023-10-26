add_mlir_conversion_library(MLIRRemoteMemCommonConversion
  ConversionTarget.cpp
  TypeConverter.cpp
  PatternBase.cpp

  ADDITIONAL_HEADER_DIRS
  ${PROJECT_SOURCE_DIR}/include

  LINK_LIBS PUBLIC
  MLIRIR
  MLIRLLVMDialect
  MLIRMemRefDialect
  MLIRSupport
  MLIRTransforms
)