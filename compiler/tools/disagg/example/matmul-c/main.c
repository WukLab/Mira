#include "tensor.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

DECL_TENSOR(float, 2);
DEF_TENSOR_UTILS(float);

void _mlir_ciface_main_graph(Tensor_float_2 *C, Tensor_float_2 *A, Tensor_float_2 *B);

int main() {
  int64_t shapeA[] = {64512, 512};
  float *bufA = read_tensor_float("A.dat", shapeA, 2);

  int64_t shapeB[] = {512, 512};
  float *bufB = read_tensor_float("B.dat", shapeB, 2);

  Tensor_float_2 A = make_tensor_float_2(bufA, shapeA);
  Tensor_float_2 B = make_tensor_float_2(bufB, shapeB);

  Tensor_float_2 C;
  int64_t shapeC[] = {64512, 512};
  float *C_truth = read_tensor_float("C.dat", shapeC, 2);

  uint64_t start = microtime();
  _mlir_ciface_main_graph(&C, &A, &B);
  uint64_t end = microtime();
  printf("time: %.5f s\n", (float)(end-start)/1e6);

  for (int i = 0; i < 2; ++ i)
    printf("%ld\n", C.shapes[i]);
  check_output_float(C._aligned_ptr, C_truth, shapeC, 2); 

  return 0;
}