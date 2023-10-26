#define PTHREAD 1

#include "common.h"
#include "tensor.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <immintrin.h>
#include "cache.hpp"
#include <pthread.h>
#include "util.hpp"

#define M 64512
#define K 512
#define N 512

DECL_TENSOR(float, 2);
DEF_TENSOR_UTILS(float)

extern "C" {
int cache_request_impl_1(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_2(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_3(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_4(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_5(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_6(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_7(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_8(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_9(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_10(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_11(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_12(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_13(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_14(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_15(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_16(int qid, uint64_t tag, int offset, bool send);

void poll_qid1(int offset, uint16_t seq);
void poll_qid2(int offset, uint16_t seq);
void poll_qid3(int offset, uint16_t seq);
void poll_qid4(int offset, uint16_t seq);
void poll_qid5(int offset, uint16_t seq);
void poll_qid6(int offset, uint16_t seq);
void poll_qid7(int offset, uint16_t seq);
void poll_qid8(int offset, uint16_t seq);
void poll_qid9(int offset, uint16_t seq);
void poll_qid10(int offset, uint16_t seq);
void poll_qid11(int offset, uint16_t seq);
void poll_qid12(int offset, uint16_t seq);
void poll_qid13(int offset, uint16_t seq);
void poll_qid14(int offset, uint16_t seq);
void poll_qid15(int offset, uint16_t seq);
void poll_qid16(int offset, uint16_t seq);
}

const int A_line = 4 * 512 * 4;
const int A_local_size = 67108864;
const int A_total_size = 136314880;
const int A_slots = A_local_size / A_line;

using CA0 = DirectCache<0*A_slots,0*A_total_size,0*A_local_size,A_slots,A_line,0>;
using CAR0 = CacheReq<CA0>;
using CA1 = DirectCache<2*A_slots,2*A_total_size,2*A_local_size,A_slots,A_line,2>;
using CAR1 = CacheReq<CA1>;
using CA2 = DirectCache<4*A_slots,4*A_total_size,4*A_local_size,A_slots,A_line,4>;
using CAR2 = CacheReq<CA2>;
using CA3 = DirectCache<6*A_slots,6*A_total_size,6*A_local_size,A_slots,A_line,6>;
using CAR3 = CacheReq<CA3>;
using CA4 = DirectCache<8*A_slots,8*A_total_size,8*A_local_size,A_slots,A_line,8>;
using CAR4 = CacheReq<CA4>;
using CA5 = DirectCache<10*A_slots,10*A_total_size,10*A_local_size,A_slots,A_line,10>;
using CAR5 = CacheReq<CA5>;
using CA6 = DirectCache<12*A_slots,12*A_total_size,12*A_local_size,A_slots,A_line,12>;
using CAR6 = CacheReq<CA6>;
using CA7 = DirectCache<14*A_slots,14*A_total_size,14*A_local_size,A_slots,A_line,14>;
using CAR7 = CacheReq<CA7>;
using CC0 = DirectCache<1*A_slots,1*A_total_size,1*A_local_size,A_slots,A_line,1>;
using CCR0 = CacheReq<CC0>;
using CC1 = DirectCache<3*A_slots,3*A_total_size,3*A_local_size,A_slots,A_line,3>;
using CCR1 = CacheReq<CC1>;
using CC2 = DirectCache<5*A_slots,5*A_total_size,5*A_local_size,A_slots,A_line,5>;
using CCR2 = CacheReq<CC2>;
using CC3 = DirectCache<7*A_slots,7*A_total_size,7*A_local_size,A_slots,A_line,7>;
using CCR3 = CacheReq<CC3>;
using CC4 = DirectCache<9*A_slots,9*A_total_size,9*A_local_size,A_slots,A_line,9>;
using CCR4 = CacheReq<CC4>;
using CC5 = DirectCache<11*A_slots,11*A_total_size,11*A_local_size,A_slots,A_line,11>;
using CCR5 = CacheReq<CC5>;
using CC6 = DirectCache<13*A_slots,13*A_total_size,13*A_local_size,A_slots,A_line,13>;
using CCR6 = CacheReq<CC6>;
using CC7 = DirectCache<15*A_slots,15*A_total_size,15*A_local_size,A_slots,A_line,15>;
using CCR7 = CacheReq<CC7>;

int cache_request_impl_1(int qid, uint64_t tag, int offset, bool send) {
  return CAR0::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_2(int qid, uint64_t tag, int offset, bool send) {
  return CCR0::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_3(int qid, uint64_t tag, int offset, bool send) {
  return CAR1::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_4(int qid, uint64_t tag, int offset, bool send) {
  return CCR1::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_5(int qid, uint64_t tag, int offset, bool send) {
  return CAR2::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_6(int qid, uint64_t tag, int offset, bool send) {
  return CCR2::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_7(int qid, uint64_t tag, int offset, bool send) {
  return CAR3::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_8(int qid, uint64_t tag, int offset, bool send) {
  return CCR3::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_9(int qid, uint64_t tag, int offset, bool send) {
  return CAR4::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_10(int qid, uint64_t tag, int offset, bool send) {
  return CCR4::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_11(int qid, uint64_t tag, int offset, bool send) {
  return CAR5::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_12(int qid, uint64_t tag, int offset, bool send) {
  return CCR5::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_13(int qid, uint64_t tag, int offset, bool send) {
  return CAR6::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_14(int qid, uint64_t tag, int offset, bool send) {
  return CCR6::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_15(int qid, uint64_t tag, int offset, bool send) {
  return CAR7::cache_request_impl(qid, tag, offset, NULL, send);
}
int cache_request_impl_16(int qid, uint64_t tag, int offset, bool send) {
  return CCR7::cache_request_impl(qid, tag, offset, NULL, send);
}
void poll_qid1(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid2(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid3(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid4(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid5(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid6(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid7(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid8(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid9(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid10(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid11(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid12(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid13(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid14(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid15(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}
void poll_qid16(int offset, uint16_t seq) {
  wait_qid(offset, seq);
}

const static int64_t strides2[2] = {N, 1};
static inline float *pin2(float *buf, int64_t a, int64_t b) {
  return buf + a * strides2[0] + b;
}

extern "C" void _mlir_ciface__driver(
  Tensor_float_2 *rC,
  Tensor_float_2 *rA,
  Tensor_float_2 *B
);

const int num_thread = 8;

void * rdma_poll_rountine(void *) {
  poll_all();
  return NULL;
}

int main () {
  init_client();
  uint64_t ts = microtime();
  pthread_t pool_t;
  pthread_create(&pool_t, NULL, rdma_poll_rountine, NULL);

  int64_t shapeA[] = {M, K};
  float *bufA = read_tensor_float("/users/Zijian/new_rt/apps/bench-matmul-mt/A.dat", shapeA, 2);

  int64_t shapeB[] = {K, N};
  float *bufB = read_tensor_float("/users/Zijian/new_rt/apps/bench-matmul-mt/B.dat", shapeB, 2);

  float *rA0 = (float *) CAR0::alloc(sizeof(float) * M * K);
  float *rA1 = (float *) CAR1::alloc(sizeof(float) * M * K);
  float *rA2 = (float *) CAR2::alloc(sizeof(float) * M * K);
  float *rA3 = (float *) CAR3::alloc(sizeof(float) * M * K);
  float *rA4 = (float *) CAR4::alloc(sizeof(float) * M * K);
  float *rA5 = (float *) CAR5::alloc(sizeof(float) * M * K);
  float *rA6 = (float *) CAR6::alloc(sizeof(float) * M * K);
  float *rA7 = (float *) CAR7::alloc(sizeof(float) * M * K);

  float *rC0 = (float *) CCR0::alloc(sizeof(float) * M * K);
  float *rC1 = (float *) CCR1::alloc(sizeof(float) * M * K);
  float *rC2 = (float *) CCR2::alloc(sizeof(float) * M * K);
  float *rC3 = (float *) CCR3::alloc(sizeof(float) * M * K);
  float *rC4 = (float *) CCR4::alloc(sizeof(float) * M * K);
  float *rC5 = (float *) CCR5::alloc(sizeof(float) * M * K);
  float *rC6 = (float *) CCR6::alloc(sizeof(float) * M * K);
  float *rC7 = (float *) CCR7::alloc(sizeof(float) * M * K);

  for (int64_t m = 0; m < M; m += 4) {
    float *wA0 = CAR0::get_mut<float>(pin2(rA0, m, 0));
    float *wA1 = CAR1::get_mut<float>(pin2(rA1, m, 0));
    float *wA2 = CAR2::get_mut<float>(pin2(rA2, m, 0));
    float *wA3 = CAR3::get_mut<float>(pin2(rA3, m, 0));
    float *wA4 = CAR4::get_mut<float>(pin2(rA4, m, 0));
    float *wA5 = CAR5::get_mut<float>(pin2(rA5, m, 0));
    float *wA6 = CAR6::get_mut<float>(pin2(rA6, m, 0));
    float *wA7 = CAR7::get_mut<float>(pin2(rA7, m, 0));
    for (int64_t i = 0; i < 4; ++ i) {
      for (int64_t j = 0; j < N; ++ j) {
        *pin2(wA0, i, j) = *pin2(bufA, m+i, j);
        *pin2(wA1, i, j) = *pin2(bufA, m+i, j);
        *pin2(wA2, i, j) = *pin2(bufA, m+i, j);
        *pin2(wA3, i, j) = *pin2(bufA, m+i, j);
        *pin2(wA4, i, j) = *pin2(bufA, m+i, j);
        *pin2(wA5, i, j) = *pin2(bufA, m+i, j);
        *pin2(wA6, i, j) = *pin2(bufA, m+i, j);
        *pin2(wA7, i, j) = *pin2(bufA, m+i, j);
      }
    }
  }

  printf("After setup\n");
  
  Tensor_float_2 B = make_tensor_float_2(bufB, shapeB);

  Tensor_float_2 A0 = make_tensor_float_2(rA0, shapeA);
  Tensor_float_2 A1 = make_tensor_float_2(rA1, shapeA);
  Tensor_float_2 A2 = make_tensor_float_2(rA2, shapeA);
  Tensor_float_2 A3 = make_tensor_float_2(rA3, shapeA);
  Tensor_float_2 A4 = make_tensor_float_2(rA0, shapeA);
  Tensor_float_2 A5 = make_tensor_float_2(rA1, shapeA);
  Tensor_float_2 A6 = make_tensor_float_2(rA2, shapeA);
  Tensor_float_2 A7 = make_tensor_float_2(rA3, shapeA);

  Tensor_float_2 C0 = make_tensor_float_2(rC0, shapeA);
  Tensor_float_2 C1 = make_tensor_float_2(rC1, shapeA);
  Tensor_float_2 C2 = make_tensor_float_2(rC2, shapeA);
  Tensor_float_2 C3 = make_tensor_float_2(rC3, shapeA);
  Tensor_float_2 C4 = make_tensor_float_2(rC0, shapeA);
  Tensor_float_2 C5 = make_tensor_float_2(rC1, shapeA);
  Tensor_float_2 C6 = make_tensor_float_2(rC2, shapeA);
  Tensor_float_2 C7 = make_tensor_float_2(rC3, shapeA);

  Tensor_float_2 rAs[] = {A0, A1, A2, A3, A4, A5, A6, A7};
  Tensor_float_2 rCs[] = {C0, C1, C2, C3, C4, C5, C6, C7};

  uint64_t start = microtime();

  _mlir_ciface__driver(rCs, rAs, &B);

  uint64_t end = microtime();
  printf("run at: %.5f s\n", (float)(start-ts)/1e6);
  printf("Exec time %.5f s\n", (float)(end-start)/1e6);

  for (int i = 0; i < 2; ++ i)
    printf("%ld\n", C0.shapes[i]);
  return 0;
}



