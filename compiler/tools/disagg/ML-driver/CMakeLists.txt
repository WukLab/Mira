get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
set(LIBS
  ${dialect_libs}
  ${conversion_libs}
  MLIRArithDialect
  MLIROptLib
  MLIRDialect
  MLIRIR
  # MLIRRemoteMem
)

add_llvm_executable(mlpl mldriver.cpp)

llvm_update_compile_flags(mlpl)
target_link_libraries(mlpl PRIVATE ${LIBS})
