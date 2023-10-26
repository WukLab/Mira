#include "memref.hpp"

extern "C" {
  void _mlir_ciface_print_tensor_i1(UnrankedMemRefType<int8_t> *m) {
    print_tensor(DynamicMemRefType<int8_t>(*m));
  }

  void _mlir_ciface_print_tensor_i8(UnrankedMemRefType<int8_t> *m) {
    print_tensor(DynamicMemRefType<int8_t>(*m));
  }

  void _mlir_ciface_print_tensor_ui8(UnrankedMemRefType<uint8_t> *m) {
    print_tensor(DynamicMemRefType<uint8_t>(*m));
  }

  void _mlir_ciface_print_tensor_i32(UnrankedMemRefType<int32_t> *m) {
    print_tensor(DynamicMemRefType<int32_t>(*m));
  }

  void _mlir_ciface_print_tensor_i64(UnrankedMemRefType<int64_t> *m) {
    print_tensor(DynamicMemRefType<int64_t>(*m));
  }

  void _mlir_ciface_print_tensor_f32(UnrankedMemRefType<float> *m) {
    print_tensor(DynamicMemRefType<float>(*m));
  }

  void _mlir_ciface_print_tensor_dbl(UnrankedMemRefType<double> *m) {
    print_tensor(DynamicMemRefType<double>(*m));
  }

  void _mlir_ciface_read_tensor_i1(const char *file, UnrankedMemRefType<int8_t> *m) {
    read_tensor(file, DynamicMemRefType<int8_t>(*m));
  }

  void _mlir_ciface_read_tensor_i8(const char *file, UnrankedMemRefType<int8_t> *m) {
    read_tensor(file, DynamicMemRefType<int8_t>(*m));
  }

  void _mlir_ciface_read_tensor_ui8(const char *file, UnrankedMemRefType<uint8_t> *m) {
    read_tensor(file, DynamicMemRefType<uint8_t>(*m));
  }

  void _mlir_ciface_read_tensor_i32(const char *file, UnrankedMemRefType<int32_t> *m) {
    read_tensor(file, DynamicMemRefType<int32_t>(*m));
  }

  void _mlir_ciface_read_tensor_i64(const char *file, UnrankedMemRefType<int64_t> *m) {
    read_tensor(file, DynamicMemRefType<int64_t>(*m));
  }

  void _mlir_ciface_read_tensor_f32(const char *file, UnrankedMemRefType<float> *m) {
    read_tensor(file, DynamicMemRefType<float>(*m));
  }

  void _mlir_ciface_read_tensor_dbl(const char *file, UnrankedMemRefType<double> *m) {
    read_tensor(file, DynamicMemRefType<double>(*m));
  }
}
