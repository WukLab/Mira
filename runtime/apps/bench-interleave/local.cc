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

extern "C" {
void setup();
void computation(arc_p a, node_p n, int i);
}


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

void computation(arc_p a, node_p n, int i) {
  a->nextin = n->firstin;
  n->firstin = arc + i;
  for (int i = 0; i < 22; ++ i) {
    n->payload[i] += a->payload[i % 8];
  }
  int id = n->number;
  for (int i = 0; i < 4; ++ i) {
    id = node_list[id];
  }
  n->payload[22] = id;
  memcpy(g_payload, n->payload, sizeof(int) * 23);
}


void check() {
  // printf("no check\n");
  uint64_t check_sum = 0;
  for (int i = 0; i < M_arc; ++ i) {
#if !SIMP
    check_sum += arc[i].tail->number;
#endif
    check_sum += arc[i].head->number;
  }
  printf("check: %lx\n", check_sum);
}
