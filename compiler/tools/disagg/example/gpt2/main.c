#include "tensor.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

DECL_TENSOR(float, 4);
DEF_TENSOR_UTILS(float);

void _mlir_ciface_main_graph(Tensor_float_4 *C, Tensor_float_4 *A, Tensor_float_4 *B);

int main() {
  int rank = 4;
  int64_t shapeA[] = {64, 12, 1, 256};
  float *bufA = read_tensor_float("A.dat", shapeA, rank);

  int64_t shapeB[] = {64, 12, 256, 64};
  float *bufB = read_tensor_float("B.dat", shapeB, rank);

  Tensor_float_4 A = make_tensor_float_4(bufA, shapeA);
  Tensor_float_4 B = make_tensor_float_4(bufB, shapeB);

  Tensor_float_4 C;
  int64_t shapeC[] = {64, 12, 1, 64};
  float *C_truth = read_tensor_float("C.dat", shapeC, rank);

  uint64_t start = microtime();
  _mlir_ciface_main_graph(&C, &A, &B);
  uint64_t end = microtime();
  printf("time: %.5f s\n", (float)(end-start)/1e6);

  for (int i = 0; i < rank; ++ i)
    printf("%ld\n", C.shapes[i]);

  check_output_float(C._aligned_ptr, C_truth, shapeC, rank); 

  return 0;
}