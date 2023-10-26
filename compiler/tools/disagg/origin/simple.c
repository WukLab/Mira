#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>

typedef struct A {
  int x;
  int y;
} A;

A *as;

int main(int argc, char *argv[]) {
  // int n = atoi(argv[1]);
  // as = malloc(sizeof(*as) * n);
  // // as = calloc(n, sizeof(*as));

  // // memset(as, 0, sizeof(*as) * n);

  // for (int i = 0; i < n; i++) {
  //   as[i].x = i;
  //   as[i].y = i * i;
  // }

  // for (int i = 0; i < n; i++) {
  //   printf("%d = %d * %d\n", as[i].y, as[i].x, as[i].x);
  // }
  // uint64_t a = 607719;
  // uint64_t b = 18446744073709551585ULL;

  // printf("%lu > %lu %d\n", b, a, b > a);
  int64_t a = 0;
  printf("%ld\n", a);
  return 0;
}
