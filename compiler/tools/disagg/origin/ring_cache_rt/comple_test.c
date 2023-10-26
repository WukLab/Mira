#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>


int main(int argc, char **argv) {
  int *dat = malloc(sizeof(int) * 1024);
  int A = atoi(argv[1]);
  int B = atoi(argv[2]);
  int i = B;
  int k = 1;
  for (; i < A; i ++) {
    dat[i] = i;
    k *= 2;
    printf("%d\n", k);
  }
  printf("%d\n", i);
  return 0;
}