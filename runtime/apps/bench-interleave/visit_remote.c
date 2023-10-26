#ifndef _VISIT_H_
#define _VISIT_H_

#include "def.h"
#include <stdio.h>
#include <string.h>

void setup();
void computation(arc_p a, node_p n, int i);
node_p _cache_1_get(void *vaddr);
arc_p _cache_2_get(void *vaddr);

void visit(arc_p as) {
  for( int i = 0; i < M_arc; i++ )
  {
    // arc[i].nextout = arc[i].tail->firstout;
    // arc[i].tail->firstout = arc + i;
    // computation(arc+i, arc[i].tail);
    arc_t ai = *_cache_2_get(as + i);
    node_t ni = *_cache_1_get(ai.head);
    computation(&ai, &ni, i);

    // arc_t *arci = arc + i;
    // int n = arci->head - node;
    // g_payload[n & 23] = n;
  }
}

int main () {
  setup();
  printf("after setup\n");
  uint64_t start = microtime();
  visit(arc);
  uint64_t end = microtime();

  printf("Exec time %.5f s\n", (end - start)/1e6);
  printf("Dont opt this %d\n", g_payload[5]);
  return 0;
}

#endif