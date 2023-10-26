#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

typedef struct A {
  int x;
  int y;
} A;

A *a;

int check(int i, int j) {
  return i > j;
}

#define upper 2
#define lower 1

int main(int argc, char *argv[]) {
  int n = atoi(argv[1]);
  // as = malloc(sizeof(*as) * n);
  int a = 1;
  int k;
  if (a != n)
    k = lower;
  else
    k = upper;

  printf("%d\n", k);
  return 0;
}
