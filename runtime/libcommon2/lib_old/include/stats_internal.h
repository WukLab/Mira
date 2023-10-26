#pragma once
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include "stats.h"
#include "cache.h"
#include "helper.h"

typedef struct trace_ll {
  trace_node *head;
  trace_node *tail;
} trace_ll;

static inline trace_node * new_trace(uint64_t addr, int c) {
  trace_node *n = (trace_node *) malloc(sizeof(*n));
  n->addr = addr;
  n->event_code = c;
  n->next = NULL;
  return n;
}

static struct cache_stats {
  uint64_t num_reqs;
  uint64_t num_access;
  uint64_t num_pref;
  uint64_t num_miss;
  uint64_t num_tlb_hit;

  uint8_t *visited;
  uint64_t miss_compulsory;
  uint64_t miss_conflict;
  // uint64_t miss_capacity;
  
  uint64_t late_data_fetch;
  uint64_t inacc_pref;

  trace_ll tll;
} csts[OPT_NUM_CACHE];

static inline void req_inc(cache_t cache) {
#ifdef CACHE_LOG_REQ
  csts[cache].num_reqs ++;
#else
  UNUSED(cache);
#endif
}

static inline void access_inc(cache_t cache) {
#ifdef CACHE_LOG_ACCESS
  csts[cache].num_access ++;
#else
  UNUSED(cache);
#endif
}

static inline void pref_inc(cache_t cache) {
#ifdef CACHE_LOG_PREF
  csts[cache].num_pref ++;
#else
  UNUSED(cache);
#endif
}

static inline void miss_inc(cache_t cache, uint64_t s_tag) {
#ifdef CACHE_LOG_MISS
  csts[cache].num_miss ++;
  #ifdef CACHE_CLASS_MISS
  if (csts[cache].visited[s_tag]) csts[cache].miss_conflict ++;
  else {
    csts[cache].visited[s_tag] = 1;
    csts[cache].miss_compulsory ++;
  }
  #endif
#else
  UNUSED(cache);
  UNUSED(s_tag);
#endif
}

static inline void ldf_inc(cache_t cache) {
#ifdef CACHE_LOG_LDF
  csts[cache].late_data_fetch ++;
#else
  UNUSED(cache);
#endif
}

static inline void inacc_pref_inc(cache_t cache) {
#ifdef CACHE_LOG_PREF
  csts[cache].inacc_pref ++;
#else
  UNUSED(cache);
#endif
}

static inline void add_trace(cache_token_t token, int c) {
#ifdef CACHE_LOG_TRACE
  uint64_t addr = token.tag + token.line_ofst;
  csts[token.cache].tll.tail->next = new_trace(addr, c);
  csts[token.cache].tll.tail = csts[token.cache].tll.tail->next;
#else
  UNUSED(token);
  UNUSED(c);
#endif
}

static inline void add_tlb_hit(cache_token_t token) {
#ifdef CACHE_TLB_HIT
  csts[token.cache].num_tlb_hit ++;
#else
  UNUSED(token);
#endif
}