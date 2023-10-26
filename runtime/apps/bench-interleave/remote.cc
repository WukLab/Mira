#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <random>
#include <algorithm>    // std::shuffle

#include "def.h"
#include "workload.hpp"
#include "unistd.h"

#include "common.h"
#include "cache.hpp"

node_t *node;
arc_t *arc;
int g_payload[23];

#define CHECK_NODE_DIST 0

uint64_t head_dist[M_arc];
uint64_t tail_dist[M_arc];

#include "test_def.h"

// // node
// const uint64_t c1_line_size = (128);
// const uint64_t c1_raddr = 0;
// const uint64_t c1_size = (1024ULL << 20);
// const int c1_slots = c1_size / c1_line_size;

// // arc
// const uint64_t c2_line_size = (2 << 20);
// const uint64_t c2_raddr = 1024UL * 1024 * 1024;
// const uint64_t c2_size = (24ULL << 20);
// const int c2_slots = c2_size / c2_line_size;

// // token offset, raddr offset, laddr offset, slots, slot size bytes, id 
// using C1 = DirectCache<0,c1_raddr,0,c1_slots,c1_line_size,0>;
// // using C1 = SetAssocativeCache<0,c1_raddr,0,c1_slots,c1_line_size,0,4>;
// // using C1 = FullLRUCache<0,c1_raddr,0,c1_slots,c1_line_size,0>;
// using C2 = DirectCache<c1_slots,c2_raddr,(1ULL<<30),c2_slots,c2_line_size,1>;

using C1R = CacheReq<C1>;
using C2R = CacheReq<C2>;

const uint64_t eles = c2_line_size / sizeof(arc_t);
const uint64_t n_blocks = M_arc / eles;

extern "C" {
void setup();
void computation(arc_p a, node_p n, int i);
node_p _cache_1_get(void *vaddr);
arc_p _cache_2_get(void *vaddr);
int cache_request_impl_1(int qid, uint64_t tag, int offset, bool send);
int cache_request_impl_2(int qid, uint64_t tag, int offset, bool send);
void poll_qid1(int offset, uint16_t seq);
void poll_qid2(int offset, uint16_t seq);
int select_1(uint64_t tag);
}

void setup() {
  init_client();
  node = (node_t *) C1R::alloc(sizeof(node_t) * N_node);
  arc = (arc_t *) C2R::alloc(sizeof(arc_t) * M_arc);

  for (int i = 0; i < N_node; ++ i) {
    node_t *nodei = C1R::get_mut<node_t>(node + i);
    nodei->number = i;
    nodei->firstin = arc +  dist2(g);
#if !SIMP
    nodei->firstout = arc + dist2(g);
#endif
  }

  // node_list.reserve(N_node);
  for (uint64_t i = 0; i < N_node; ++ i) {
    node_list[i] = i;
  }
  std::shuffle(&node_list[0], node_list + N_node, g);

  for (int j = n_blocks - 1; j >= 0; j-- ) {
    // printf("%d, %lx\n", j, (uintptr_t) (arc + j*eles));
    arc_t *p = C2R::get_mut<arc_t>(arc + j * eles);
    for( int i = 0; i < eles; i++ ) { 
#if !SIMP
      p[i].tail = node + node_list[nextRand()];
#endif
      p[i].head = node + node_list[nextRand()];
    }
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

node_p _cache_1_get(void *vaddr) {
  return C1R::get_mut<node_t>(vaddr);
}
arc_p _cache_2_get(void *vaddr) {
  return C2R::get_mut<arc_t>(vaddr);
}

int cache_request_impl_1(int qid, uint64_t tag, int offset, bool send) {
  int off = C1R::cache_request_impl(qid, tag, offset, NULL, send);
  auto &token = C1::Op::token(off);
  token.add(Token::Dirty);
  return off;
}

int cache_request_impl_2(int qid, uint64_t tag, int offset, bool send) {
  int off = C2R::cache_request_impl(qid, tag, offset, NULL, send);
  auto &token = C2::Op::token(off);
  token.add(Token::Dirty);
  return off;
}

void poll_qid1(int offset, uint16_t seq) {
  poll_qid(offset, seq);
}

void poll_qid2(int offset, uint16_t seq) {
  poll_qid(offset, seq);
}

int select_1(uint64_t tag) {
  return C1::select(tag);
}
