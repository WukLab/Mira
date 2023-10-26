#ifndef MLIR_MEMREF_RUNTIME_TYPES_H
#define MLIR_MEMREF_RUNTIME_TYPES_H

#include <cstdint>
#include <cstdio>
#include <cassert>
#include <initializer_list>
#include <iostream>
#include "rring.h"
#include "cache.h"
#include "common.h"

template <typename T, int N>
struct StridedMemRefType {
public:
  T *basePtr;
  T *data;
  int64_t offset;
  int64_t sizes[N];
  int64_t strides[N];

  StridedMemRefType() = default;

  StridedMemRefType(int64_t shape[N], bool remote = false) {
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
    T *buf = nullptr;
    if (!remote)
      buf = static_cast<T *>(aligned_alloc(4096, num_eles * sizeof(T)));
    else
      buf = static_cast<T *>(_disagg_alloc(2, num_eles * sizeof(T)));
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

  int64_t getNumElements() const {
    if (rank == 0)
      return 0;
    int64_t num_eles = 1;
    for (int i = 0; i < rank; ++ i) {
      num_eles *= sizes[i];
    }
    return num_eles;
  }
};

template <typename T>
void read_tensor(const char *file, const DynamicMemRefType<T> &m, bool remote = false) {
  int64_t num_eles = m.getNumElements();
  FILE *f = fopen(file, "r");
  if (!f) {
    std::cout << "Can't open file " << file << std::endl;
  }
  T *_buf = m.data;
  if (remote)
    _buf = static_cast<T *>(aligned_alloc(4096, num_eles * sizeof(T)));
  size_t read = fread(_buf, sizeof(T), num_eles, f);

  if (read != num_eles)
    std::cout << "Err reading file " << file << ", expect " << num_eles << ", read " << read << std::endl;
  fclose(f);

  if (remote) {
    uint64_t _lA = (uint64_t) rbuf + (8192ULL);
    rring_init(rA, T, 196608 * sizeof(T), 16, _lA, m.data);
    rring_outer_loop(rA, T, num_eles) {
      rring_inner_preloop(rA, T);
      rring_sync_writeonly(rA);
      rring_inner_loop(rA, i) {
        size_t nth = _t_rA * _bn_rA + i;
        _inner_rA[i] = _buf[nth];
      }
      rring_inner_wb(rA);
    }
    rring_cleanup_writeonly(rA);
  }
}

template <typename T>
void print_tensor(const DynamicMemRefType<T> &m, bool printData = false) {
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
  if (printData) {
    std::cout << " data = " << std::endl;
    int64_t num_eles = m.getNumElements();
    for (int64_t e = 0; e < num_eles; ++ e)
      std::cout << m.data[e] << " ";
    std::cout << std::endl;
  }
}

extern "C" {
  void _mlir_ciface_print_tensor_i1(UnrankedMemRefType<int8_t> *m);
  void _mlir_ciface_print_tensor_i8(UnrankedMemRefType<int8_t> *m);
  void _mlir_ciface_print_tensor_ui8(UnrankedMemRefType<uint8_t> *m);
  void _mlir_ciface_print_tensor_i32(UnrankedMemRefType<int32_t> *m);
  void _mlir_ciface_print_tensor_i64(UnrankedMemRefType<int64_t> *m);
  void _mlir_ciface_print_tensor_f32(UnrankedMemRefType<float> *m);
  void _mlir_ciface_print_tensor_dbl(UnrankedMemRefType<double> *m);

  void _mlir_ciface_read_tensor_i1(const char *file, UnrankedMemRefType<int8_t> *m);
  void _mlir_ciface_read_tensor_i8(const char *file, UnrankedMemRefType<int8_t> *m);
  void _mlir_ciface_read_tensor_ui8(const char *file, UnrankedMemRefType<uint8_t> *m);
  void _mlir_ciface_read_tensor_i32(const char *file, UnrankedMemRefType<int32_t> *m);
  void _mlir_ciface_read_tensor_i64(const char *file, UnrankedMemRefType<int64_t> *m);
  void _mlir_ciface_read_tensor_f32(const char *file, UnrankedMemRefType<float> *m);
  void _mlir_ciface_read_tensor_dbl(const char *file, UnrankedMemRefType<double> *m);
}

#endif
