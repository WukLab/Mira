#include <iostream>
#include <vector>
#include "memref.hpp"
#include "common.h"
#include <string>
#include <pthread.h>

extern "C" void _mlir_ciface_main_graph(
  StridedMemRefType<float,2> *, 
  StridedMemRefType<float,2> *, 
  StridedMemRefType<float,2> *
);

constexpr int num_thread = 8;

struct T_pack {
  StridedMemRefType<float,2> *sC;
  StridedMemRefType<float,2> *sA;
  StridedMemRefType<float,2> *sB;
};

void *task(void *data) {
  T_pack *p = (T_pack *)data;
  _mlir_ciface_main_graph(p->sC, p->sA, p->sB);
  return NULL;
}

int main() {
  // C = A [64512x512] @ B[512x512]
  // get Mat A
  int64_t A_shape[] = {64512, 512};
  StridedMemRefType<float,2> sA[num_thread];
  for (int i = 0; i < num_thread; ++ i) {
    StridedMemRefType<float,2> _sA(A_shape);
    DynamicMemRefType<float> dA(_sA);
    read_tensor("/users/Zijian/new_rt/apps/bench-matmul-mt/A.dat", dA);
    sA[i] = _sA;
  }

  // get B
  int64_t B_shape[] = {512, 512};
  StridedMemRefType<float,2> sB(B_shape);
  DynamicMemRefType<float> dB(sB);
  read_tensor("/users/Zijian/new_rt/apps/bench-matmul-mt/B.dat", dB);

  StridedMemRefType<float,2> output[num_thread];
  T_pack p[num_thread];
  for (int i = 0; i < num_thread; ++ i) {
    p[i].sC = output + i;
    p[i].sB = &sB;
    p[i].sA = sA + i;
  }

  printf("After setup\n");

  pthread_t t[num_thread];
  uint64_t start_ns = getCurNs();
  for (int i = 0; i < num_thread; ++ i) {
    pthread_create(t+i, NULL, task, p+i);
  }
  for (int i = 0; i < num_thread; ++ i) {
    pthread_join(t[i], NULL);
  } 
  uint64_t end_ns = getCurNs();

  printf("Exec time %.6f s\n", (float)(end_ns - start_ns)/1e9);
  for (int i = 0; i < num_thread; ++ i) {
    DynamicMemRefType<float> dO(output[i]);
    print_tensor<float>(dO, false);
  }
  return 0;
}