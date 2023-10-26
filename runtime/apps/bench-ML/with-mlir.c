#include "tensor.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include "common.h"
#include "rring.h"
#include "cache.h"

size_t rdma_wrid_cnt = 1;
void rsync(size_t *r, size_t t);

static struct ibv_wc wc[64];
void rsync(size_t *r, size_t t) {
    if (*r >= t)
        return;

    do {
        int n = ibv_poll_cq(cq, 16, wc);
        for (int i = 0; i < n; i++) {
            // if (wc[i].status != 0) {
            //     printf("ERROR %d, %ld\n", wc[i].status, wc[i].wr_id);
            // }
            if (wc[i].wr_id > *r)
                *r = wc[i].wr_id;
        }
    } while (*r < t);
}

DECL_TENSOR(float, 4);
DEF_TENSOR_UTILS(float)

void _mlir_ciface_main_graph(Tensor_float_4 *C, Tensor_float_4 *A, Tensor_float_4 *B);

int main () {
  init_client();
  cache_init(); // use disagg_alloc

  int64_t shapeA[] = {64, 12, 1, 256};
  float *bufA = read_tensor_float("/users/Zijian/raw_eth_pktgen/apps/bench-ML/A.dat", shapeA, 4);

  int64_t shapeB[] = {64, 12, 256, 64};
  float *bufB = read_tensor_float("/users/Zijian/raw_eth_pktgen/apps/bench-ML/B.dat", shapeB, 4);

  // remotalize a and b
  uint64_t _rA = (uint64_t) _disagg_alloc(2, (4 << 20));
  uint64_t _lA = (uint64_t) rbuf + (8192ULL);
  rring_init(rA, float, 196608 * 4, 1, _lA, _rA);

  uint64_t _rB = (uint64_t) _disagg_alloc(2, (256ULL << 20));
  uint64_t _lB = (uint64_t) rbuf + (8192ULL) + (4 << 20);
  rring_init(rB, float, 393216 * 4, 64, _lB, _rB);

  rring_outer_loop(rA, float, 64 * 12 * 256) {
    rring_inner_preloop(rA, float);
    rring_sync_writeonly(rA);
    rring_inner_loop(rA, i) {
      size_t nth = _t_rA * _bn_rA + i;
      _inner_rA[i] = bufA[nth];
    }
    rring_inner_wb(rA);
  }
  rring_cleanup_writeonly(rA);

  rring_outer_loop(rB, float, 64 * 12 * 256 * 64) {
    rring_inner_preloop(rB, float);
    rring_sync_writeonly(rB);
    rring_inner_loop(rB, i) {
      size_t nth = _t_rB * _bn_rB + i;
      _inner_rB[i] = bufB[nth];
    }
    rring_inner_wb(rB);
  }
  rring_cleanup_writeonly(rB);

  Tensor_float_4 A = make_tensor_float_4((float *)_rA, shapeA);
  Tensor_float_4 B = make_tensor_float_4((float *)_rB, shapeB);

  Tensor_float_4 C;
  int64_t shapeC[] = {64, 12, 1, 64};
  float *C_truth = read_tensor_float("/users/Zijian/raw_eth_pktgen/apps/bench-ML/C.dat", shapeC, 4);

  uint64_t start = microtime();
  _mlir_ciface_main_graph(&C, &A, &B);
  uint64_t end = microtime();

  printf("time: %.5f s\n", (float)(end-start)/1e6);

  for (int i = 0; i < 4; ++ i)
    printf("%ld\n", C.shapes[i]);
  check_output_float(C._aligned_ptr, C_truth, shapeC, 4);  
  return 0;
}
