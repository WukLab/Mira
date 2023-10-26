#ifndef __STATS_H__
#define __STATS_H__

#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

/* Option: Log Req */
// #define CACHE_LOG_REQ

/* Option: Log Access */
// #define CACHE_LOG_ACCESS

/* Option: Log Misses */
// #define CACHE_LOG_MISS
// #define CACHE_CLASS_MISS

/* Option: Log Late Data Fetch*/
// #define CACHE_LOG_LDF

/* Option: Log Pref num and accurate hit */
// #define CACHE_LOG_PREF

/* Option: Log access addr */
// #define CACHE_LOG_TRACE

/* Option: Log tlb hit */
// #define CACHE_TLB_HIT

enum {
  EVNT_REQ = 0,
  EVNT_ACC,
  EVNT_ACC_MUT,
  EVNT_ACQ,
  EVNT_RLS,
  EVNT_TLB,
};

typedef struct trace_node {
  uint64_t addr;
  struct trace_node *next;
  int event_code;
} trace_node;

#ifdef __cplusplus
}
#endif
#endif
