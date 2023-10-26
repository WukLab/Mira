#ifndef _DEF_H_
#define _DEF_H_

#include <stdint.h>
#include <time.h>

typedef long flow_t;
typedef long cost_t;

typedef struct node node_t;
typedef struct node *node_p;

typedef struct arc arc_t;
typedef struct arc *arc_p;

#define SIMP 0

#if SIMP

struct node
{
  arc_p firstin;
  int number;

  int payload[23];
};


struct arc
{
  node_p head;
  arc_p nextin;
  int payload[8];
};

#else

struct node
{
  node_p child, parent;
  arc_p firstout, firstin;
  int number;

  int payload[23];
};

struct arc
{
  node_p tail, head;
  arc_p nextout, nextin;
  int payload[8];
};

#endif

extern node_t *node;
extern arc_t *arc;
extern int g_payload[23];

#define N_node (8 << 20)
#define M_arc (64 << 20)


static inline uint64_t getCurNs() {
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    uint64_t t = ts.tv_sec*1000*1000*1000 + ts.tv_nsec;
    return t;
}

static inline uint64_t microtime() {
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    uint64_t t = ts.tv_sec*1000*1000 + ts.tv_nsec/1000;
    return t;
}

#endif
