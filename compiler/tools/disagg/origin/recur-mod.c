#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

extern int a;

extern void * _disagg_alloc(unsigned cache, size_t size);
extern void * _disagg_stack_alloc(size_t size);
extern unsigned cache_create(unsigned cache_size, unsigned cache_line_size);
extern __int128_t cache_request(uint64_t vaddr);
extern void * cache_access_mut(__int128_t *token);
extern void * cache_access(__int128_t *token);
extern void init_device();
extern void init_bufs();
extern void cache_init();
extern void shutdown_device();

typedef struct Node {
  int v;
} Node;

typedef struct A {
  Node n;
  struct A *next;
} A;

A **glob;

A *expand(A* rnode, int v) {
  A* rnew_node = _disagg_alloc(1, sizeof(*rnew_node));
  __int128_t tk = cache_request((uint64_t) rnew_node);
  A *new_node = cache_access_mut(&tk);
  new_node->n.v = v;
  new_node->next = NULL;

  __int128_t tk2 = cache_request((uint64_t) rnode);
  A *node = cache_access_mut(&tk2);
  node->next = rnew_node;
  return rnew_node;
}

void visit(int n) {
  A *rhead = glob[n];
  printf("struct chasing from %d\n", n);
  while (rhead) {
    __int128_t tk = cache_request((uint64_t) rhead);
    A *node = cache_access(&tk);
    printf("%d\n", node->n.v);
    rhead = node->next;
  }
}

int main(int argc, char **argv) {
  init_device();
  init_bufs();
  cache_init();
  cache_create(64, 16);

  int l = atoi(argv[1]);
  int n = atoi(argv[2]);
  glob = malloc(sizeof(A*) * l);

  // A head;
  A *prev = _disagg_stack_alloc(sizeof(*prev));
  for (int i = 0; i < l; ++i) {
    A *an = expand(prev, i);
    glob[i] = an;
    prev = an;
  }

  visit(a);
  return 0;
}