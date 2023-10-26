#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node {
  int v;
} Node;

typedef struct A {
  Node n;
  struct A *next;
} A;

A *expand(A* node, int v) {
  A* new_node = (A*)malloc(sizeof(A));
  new_node->n.v = v;
  new_node->next = NULL;

  node->next = new_node;
  return new_node;
}

int main(int argc, char **argv) {
  int l = atoi(argv[1]);

  A head;
  A *prev = &head;
  for (int i = 0; i < l; ++i) {
    A *an = expand(prev, i);
    prev = an;
  }

  A *cur = head.next;
  while (cur) {
    printf("%d ", cur->n.v);
    cur = cur->next;
  }
  return 0;
}