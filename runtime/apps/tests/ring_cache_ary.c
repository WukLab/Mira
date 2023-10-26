#include <stdlib.h>
#include <stdio.h>
#include "common.h"
#include "rring_cache.h"

#define ARY_SIZE (64<< 20)
static int data[ARY_SIZE];
static size_t indices[ARY_SIZE];

static uint64_t seed = 0x23333;

static inline int nextRand(int M) {
  seed = ((seed * 7621) + 1) % M;

  // static std::mt19937 g(seed);
  // static std::uniform_int_distribution<int> dist(0, M-1);
  // seed = dist(g);

  // printf("%d\n", (int)r);
  return (int)seed;
}

#define pb (512 * 1024)
#define nb (128)

// initialize configurations, can keep at compile
rring_init(rids, size_t, pb * sizeof(size_t), nb, 0, 8192);
rring_init(rvec, int, pb * sizeof(int), nb, 0, 8192 + (1ULL << 30));

void init_ary() {
  for (size_t i = 0; i < ARY_SIZE; ++ i) {
    data[i] = nextRand(ARY_SIZE);
    // data[i] = i;
    indices[i] = i;
  }

  rring_outer_loop(rids, size_t, ARY_SIZE) {
    rring_inner_preloop(rids, size_t);
    rring_sync_writeonly(rids);
    rring_inner_loop(rids, j) {
      size_t nth = _t_rids * _bn_rids + j;
      _inner_rids[j] = indices[nth];
    }
    rring_inner_wb(rids);
  }
  rring_cleanup_writeonly(rids);
  printf("Ids setup\n");

  rring_outer_loop(rvec, int, ARY_SIZE) {
    rring_inner_preloop(rvec, int);
    rring_sync_writeonly(rvec);
    rring_inner_loop(rvec, j) {
      size_t nth = _t_rvec * _bn_rvec + j;
      _inner_rvec[j] = data[nth];
    }
    rring_inner_wb(rvec);
  }
  rring_cleanup_writeonly(rvec);
  printf("data setup\n");
}

void do_work() {
  int max = data[0];
  size_t max_i = 0; 
  int min = data[0];
  size_t min_i = 0;
  size_t mean = 0, cnt = 0;

  rring_outer_loop_with(rvec, ARY_SIZE);
  rring_outer_loop(rids, size_t, ARY_SIZE) {
    rring_prefetch_with(rids, rvec, 16);
    rring_prefetch(rids, 16);

    rring_inner_preloop(rids, size_t);
    rring_inner_preloop(rvec, int);
    rring_sync(rids);

    rring_inner_loop(rids, k) {
      size_t id = _inner_rids[k];
      int e = _inner_rvec[k];
      if (e > max) {
        max_i = id;
        max = e;
      }
      if (e < min) {
        min_i = id;
        min = e;
      }
      mean += e;
      cnt += 1;
    }
    rring_outer_loop_with_post(rvec);
  }

  printf("Max: %lu %d\n", max_i, max);
  printf("Min: %lu %d\n", min_i, min);
  printf("Mean: %lu %lu\n", cnt, mean / ARY_SIZE);
}



int main() {
  init_client();
  _lbase_rids = (uint64_t)rbuf;
  _lbase_rvec = (uint64_t)rbuf + (1ULL << 30);

  init_ary();
  do_work();

  return 0;
}