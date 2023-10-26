#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <random>
#include <algorithm>    // std::shuffle

#include "def.h"
#include "workload.hpp"
#include "unistd.h"

node_t *node;
arc_t *arc;
int g_payload[23];

#define CHECK_NODE_DIST 0

uint64_t head_dist[M_arc];
uint64_t tail_dist[M_arc];

void setup() {
  node = (node_t *) aligned_alloc(4096, sizeof(node_t) * N_node);
  arc = (arc_t *) aligned_alloc(4096, sizeof(arc_t) * M_arc);

  for (int i = 0; i < N_node; ++ i) {
    node[i].number = i;
    node[i].firstin = arc +  dist2(g);
#if !SIMP
    node[i].firstout = arc + dist2(g);
#endif
  }

  // node_list.reserve(N_node);
  for (uint64_t i = 0; i < N_node; ++ i) {
    node_list[i] = i;
  }
  std::shuffle(&node_list[0], node_list + N_node, g);

  for (int i = 0; i < M_arc; ++ i) {
    uint64_t ti = node_list[nextRand()];
    uint64_t hi = node_list[nextRand()];

#if CHECK_NODE_DIST
    tail_dist[i] = ti;
    head_dist[i] = hi;
#endif
#if !SIMP
    arc[i].tail = node + ti;
#endif
    arc[i].head = node + hi;
  }
}
