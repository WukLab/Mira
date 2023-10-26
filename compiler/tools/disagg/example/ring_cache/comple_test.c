#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>


int main(int argc, char **argv) {
  int *dat = malloc(sizeof(int) * 1024);
  int A = atoi(argv[1]);
  int B = atoi(argv[2]);
  for (int i = B; i < A; i ++) {
    // dat[i] = i;
    printf("%d %d\n", i, dat[i]);
  }
  return 0;
}