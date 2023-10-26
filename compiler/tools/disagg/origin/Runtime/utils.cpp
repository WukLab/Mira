#include "utils.h"

extern "C" {
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

int main () {
  int64_t shape[1] = {3};
  StridedMemRefType<float, 1> A(shape);
  DynamicMemRefType<float> DA(A);
  read_tensor("constant_1", DA);
  print_tensor(DA);
  return 0;
}