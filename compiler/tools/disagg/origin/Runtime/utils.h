#ifndef MLIR_MEMREF_RUNTIME_TYPES_H
#define MLIR_MEMREF_RUNTIME_TYPES_H

#include <cstdint>
#include <cstdio>
#include <cassert>
#include <initializer_list>
#include <iostream>

template <typename T, int N>
struct StridedMemRefType {
public:
  T *basePtr;
  T *data;
  int64_t offset;
  int64_t sizes[N];
  int64_t strides[N];

  StridedMemRefType(int64_t shape[N]) {
    offset = 0;
    int64_t num_eles = 1;
    for (int i = N - 1; i >= 0; i--) {
      sizes[i] = shape[i];
      if (i == N - 1)
        strides[i] = 1;
      else
        strides[i] = strides[i+1] * sizes[i+1];
      num_eles *= shape[i];
    }
    T *buf = static_cast<T *>(aligned_alloc(4096, num_eles * sizeof(T)));
    basePtr = data = buf;
  }
};

template <typename T>
struct UnrankedMemRefType {
  int64_t rank;
  void *descriptor;
};

template <typename T>
class DynamicMemRefType {
public:
  int64_t rank;
  T *basePtr;
  T *data;
  int64_t offset;
  const int64_t *sizes;
  const int64_t *strides;

  template <int N>
  explicit DynamicMemRefType(const StridedMemRefType<T, N> &memRef)
      : rank(N), basePtr(memRef.basePtr), data(memRef.data),
        offset(memRef.offset), sizes(memRef.sizes), strides(memRef.strides) {}
  explicit DynamicMemRefType(const UnrankedMemRefType<T> &memRef)
      : rank(memRef.rank) {
    auto *desc = static_cast<StridedMemRefType<T, 1> *>(memRef.descriptor);
    basePtr = desc->basePtr;
    data = desc->data;
    offset = desc->offset;
    sizes = rank == 0 ? nullptr : desc->sizes;
    strides = sizes + rank;
  }

};

template <typename T>
void read_tensor(const char *file, const DynamicMemRefType<T> &m) {
  int64_t num_eles = 1;
  for (int i = 0; i < m.rank; ++ i) {
    num_eles *= m.sizes[i];
  }
  FILE *f = fopen(file, "r");
  size_t read = fread(m.data, sizeof(T), num_eles, f);
  if (read < num_eles)
    std::cout << "Err when reading file " << file << std::endl;
  fclose(f);
}

template <typename T>
void print_tensor(const DynamicMemRefType<T> &m) {
  // print meta
  auto print = [&](const int64_t *ptr) {
    if (m.rank == 0)
      return;
    std::cout << ptr[0];
    for (int64_t i = 1; i < m.rank; ++i)
      std::cout << ", " << ptr[i];
  };
  std::cout << " sizes = [";
  print(m.sizes);
  std::cout << "] strides = [";
  print(m.strides);
  std::cout << "]" << std::endl;
 
  // print data
  std::cout << " data = " << std::endl;
  int64_t num_eles = m.rank > 0 ? 1 : 0;
  for (int i = 0; i < m.rank; ++ i) {
    num_eles *= m.sizes[i];
  }
  for (int64_t e = 0; e < num_eles; ++ e)
    std::cout << m.data[e] << " ";
  std::cout << std::endl;
}

extern "C" {
  void _mlir_ciface_print_tensor_i32(UnrankedMemRefType<int32_t> *m);
  void _mlir_ciface_print_tensor_i64(UnrankedMemRefType<int64_t> *m);
  void _mlir_ciface_print_tensor_f32(UnrankedMemRefType<float> *m);
  void _mlir_ciface_print_tensor_dbl(UnrankedMemRefType<double> *m);

  void _mlir_ciface_read_tensor_i32(const char *file, UnrankedMemRefType<int32_t> *m);
  void _mlir_ciface_read_tensor_i64(const char *file, UnrankedMemRefType<int64_t> *m);
  void _mlir_ciface_read_tensor_f32(const char *file, UnrankedMemRefType<float> *m);
  void _mlir_ciface_read_tensor_dbl(const char *file, UnrankedMemRefType<double> *m);
}

#endif
