#include <iostream>
#include <vector>
#include "memref.hpp"
#include "common.h"
#include <string>

#define NUM_PAST 24

extern "C" void _mlir_ciface_main_graph(
  StridedMemRefType<int64_t,3> *, 
  StridedMemRefType<int64_t,2> *, 
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *,
  StridedMemRefType<float,4> *
  );

int main() {
  // get input id
  int64_t input_id_shape[] = {64, 1};
  StridedMemRefType<int64_t,2> input_id(input_id_shape);
  DynamicMemRefType<int64_t> did(input_id);
  read_tensor("input_ids.dat", did);

  // get past_key_values
  std::string basePath = "past_key_values/past.";
  int64_t past_rank = 4;
  int64_t past_shape[] = {64, 16, 255, 64};
  StridedMemRefType<float,4> pasts[NUM_PAST][2];

  for (int i = 0; i < NUM_PAST; ++ i) {
    std::string kdat = basePath + std::to_string(i) + std::string(".key");
    StridedMemRefType<float, 4> pkey(past_shape);
    DynamicMemRefType<float> dpkey(pkey);
    read_tensor(kdat.c_str(), dpkey);

    std::string vdat = basePath + std::to_string(i) + std::string(".value");
    StridedMemRefType<float, 4> pval(past_shape);
    DynamicMemRefType<float> dpval(pval);
    read_tensor(vdat.c_str(), dpval);

    pasts[i][0] = pkey;
    pasts[i][1] = pval;
  }

  StridedMemRefType<int64_t,3> output;
  uint64_t start_ns = getCurNs();
  _mlir_ciface_main_graph(
    &output, &input_id, 
    &pasts[0][0],  &pasts[0][1],
    &pasts[1][0],  &pasts[1][1],
    &pasts[2][0],  &pasts[2][1],
    &pasts[3][0],  &pasts[3][1],
    &pasts[4][0],  &pasts[4][1],
    &pasts[5][0],  &pasts[5][1],
    &pasts[6][0],  &pasts[6][1],
    &pasts[7][0],  &pasts[7][1],
    &pasts[8][0],  &pasts[8][1],
    &pasts[9][0],  &pasts[9][1],
    &pasts[10][0], &pasts[10][1],
    &pasts[11][0], &pasts[11][1],
    &pasts[12][0],  &pasts[12][1],
    &pasts[13][0],  &pasts[13][1],
    &pasts[14][0],  &pasts[14][1],
    &pasts[15][0],  &pasts[15][1],
    &pasts[16][0],  &pasts[16][1],
    &pasts[17][0],  &pasts[17][1],
    &pasts[18][0],  &pasts[18][1],
    &pasts[19][0],  &pasts[19][1],
    &pasts[20][0],  &pasts[20][1],
    &pasts[21][0],  &pasts[21][1],
    &pasts[22][0], &pasts[22][1],
    &pasts[23][0], &pasts[23][1]
  );
  uint64_t end_ns = getCurNs();

  printf("Exec time %.6f s\n", (float)(end_ns - start_ns)/1e9); 
  DynamicMemRefType<int64_t> dO(output);
  print_tensor<int64_t>(dO, false);

  return 0;
}