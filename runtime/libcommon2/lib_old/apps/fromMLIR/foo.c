#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

typedef struct Node {
  int v;
} Node;

typedef struct A {
  Node n;
  struct A *next;
} A;

// populate by offload obj
rpc_service_t *services;

extern void * deref_disagg_vaddr(uint64_t dvaddr);
extern uint64_t local_remote_delimiter;
// extern void * r_disagg_malloc(unsigned cache_id, size_t size);

static inline void visit_offloadable(A *head) {
  while (head) {
    A* dat = deref_disagg_vaddr((uint64_t) head);
    printf("%d\n", dat->n.v);
    head = dat->next;
  }
}

void service_wrapper_visit_offloadable(void *arg, void *ret) {
  A *head = * (A **) arg;
  visit_offloadable(head);
}

A *expand(A* node, int v) {
  A* new_node = (A*) malloc(sizeof(A));
  new_node->n.v = v;
  new_node->next = NULL;

  A* dat1 = (A*) deref_disagg_vaddr((uint64_t) node);
  dat1->next = (void *) ((intptr_t) new_node + local_remote_delimiter);
  return new_node;
}

void service_wrapper_expand(void *arg, void *ret) {
  A *node = * (A **) arg;
  int v = * (int *) ((A **) arg + 1);

  void *new_node = expand(node, v);

  * (A **) ret = (void *) ((intptr_t) new_node + local_remote_delimiter);
}

void init_rpc_services() {
  services = malloc(2 * sizeof(*services));
  services[0] = service_wrapper_visit_offloadable;
  services[1] = service_wrapper_expand;
}
