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

A **glob;
char eg[] = "expand";

A *expand(A* node, int v) {
  A* new_node = (A*)malloc(sizeof(A));
  new_node->n.v = v;
  new_node->next = NULL;

  node->next = new_node;
  return new_node;
}

void visit(int n) {
  A *head = glob[n];
  printf("struct chasing from %d\n", n);
  while (head) {
    printf("%d\n", head->n.v);
    head = head->next;
  }
}

int main(int argc, char **argv) {
  int l = atoi(argv[1]);
  int n = atoi(argv[2]);

  glob = malloc(sizeof(A*) * l);

  A p0;
  A *prev = &p0;

  // for (int i = 0; i < l; ++i) {
  //   A *an = expand(prev, i);
  //   glob[i] = an;
  //   prev = an;
  // }
  int i = 0;

  while (i < l) {
    A *an = expand(prev, i);
    glob[i] = an;
    prev = an;
    i ++;
  }
  printf("%p\n", prev);

  visit(n);
  return 0;
}