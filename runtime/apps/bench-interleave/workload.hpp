#include <random>
#include <cstdio>
#include <cstring>
#include <stdint.h>

#include "def.h"
 

// #define N_node (8 << 10)
// #define M_arc (64 << 10)

static uint64_t seed = 0x23333;
static uint64_t checksum = 0xdeadbeaf;

static std::mt19937 g(seed);
// static std::uniform_int_distribution<int> dist1(0, N_node-1);
static std::normal_distribution<> dist1(N_node/2, N_node/8);

static std::uniform_int_distribution<int> dist2(0, M_arc-1);
uint64_t node_list[N_node];

static inline int nextRand() {
  long idx = std::round(dist1(g));
  while (idx < 0 || idx >= N_node)
    idx = std::round(dist1(g));
  return idx;
}
