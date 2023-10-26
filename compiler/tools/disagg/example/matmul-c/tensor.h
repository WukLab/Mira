#ifdef __cpluscplus
extern "C" {
#endif

#include <stdint.h>
#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <stddef.h>

static inline uint64_t microtime() {
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    uint64_t t = ts.tv_sec*1000*1000 + ts.tv_nsec/1000;
    return t;
}

#define abs(X) ((X) < 0 ? -1 * (X) : (X))

#define DECL_TENSOR(T, r) \
  typedef struct { \
    T *_alloc_ptr; \
    T *_aligned_ptr; \
    int64_t offset; \
    int64_t shapes[r]; \
    int64_t strides[r]; \
  } Tensor_##T##_##r; \
  \
  Tensor_##T##_##r make_tensor_##T##_##r(T *data, int64_t shape[]) { \
    Tensor_##T##_##r _T_tmp; \
    _T_tmp._alloc_ptr = data; \
    _T_tmp._aligned_ptr = data; \
    _T_tmp.offset = 0; \
    for (int i = r-1; i >= 0; -- i) { \
      _T_tmp.shapes[i] = shape[i]; \
      if (i == (r-1)) \
        _T_tmp.strides[i] = 1; \
      else \
        _T_tmp.strides[i] = shape[i+1] * _T_tmp.strides[i+1];  \
    } \
    return _T_tmp; \
  } \

#define DEF_TENSOR_UTILS(T) \
  T *dummy_tensor_##T(int64_t shape[], int rank) { \
    int64_t num_ele = 1; \
    for (int i = 0; i < rank; ++ i) \
      num_ele *= shape[i]; \
    if (num_ele <= 0) \
      return NULL; \
    T *dat_buf = (T *) aligned_alloc(4096, sizeof(T) * num_ele); \
    for (int64_t e = 0; e < num_ele; ++ e) { \
      dat_buf[e] = 1.0f; \
    } \
    return dat_buf; \
  } \
  \
  T *read_tensor_##T(const char* file, int64_t shape[], int rank) { \
    int64_t num_ele = 1; \
    for (int i = 0; i < rank; ++ i) \
      num_ele *= shape[i]; \
    \
    T *dat_buf = (T *) aligned_alloc(4096, sizeof(T) * num_ele); \
    \
    FILE *datfile = fopen(file, "r"); \
    size_t read = fread(dat_buf, sizeof(T), num_ele, datfile); \
    if (read < num_ele) \
      printf("Error reading input np array from %s\n", file); \
    \
    fclose(datfile); \
    return dat_buf; \
  } \
  \
  void check_output_##T(T *pred, T *truth, int64_t shape[], int rank) { \
    int64_t num_ele = 1; \
    for (int i = 0; i < rank; ++ i) \
      num_ele *= shape[i]; \
    printf("Verify output ---- \n"); \
    for (int64_t e = 0; e < num_ele; ++ e) { \
      float diff = (float) abs(pred[e] - truth[e]); \
      if (diff >= 1e-3) \
        printf("pred: %f, truth: %f, diff: %f\n", pred[e], truth[e], diff); \
    } \
    printf(" ---- Complete\n"); \
  } \

float volatile flush_dummy = 1;

void flush_local(int64_t msize) {
  if (msize <= 0) {
    printf("no flush\n");
    return;
  }
  int64_t num_eles = 256 * 1024 * msize;
  float *buf = (float *) aligned_alloc(4096, sizeof(float) * num_eles); 
  for (int64_t e = 0; e < num_eles; ++ e) {
    flush_dummy += buf[e];
  }
  printf("flush dummy IO %f\n", flush_dummy);
}


#ifdef __cpluscplus
}
#endif
