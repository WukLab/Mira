#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "test.h"

typedef struct {
  size_t blockSize;
  size_t nBlocks;
  uint64_t _lbase;
  uint64_t _rbase;
} rring;

rring cache = {4096, 16, 4096 * 16, 0};
void foo(int *a);

int main() {
  cache._rbase = (uint64_t) rbuf;
  for (int i = 0; i < cache._lbase; ++i) {
    int a = 0;
    foo(&a);
  }
  printf("%lu\n", cache._rbase);
}