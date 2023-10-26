#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

typedef struct Dat {
  int x;
  int y;
} dat_t;

// void inspect(dat_t* ds, int l) {
//   for (int i = 0; i < l; ++ i) {
//     printf("%d %d\n", ds[i].x, ds[i].y);
//   }
// }

int main(int argc, char **argv) {
  int n = atoi(argv[1]);
  dat_t* ds = malloc(sizeof(dat_t) * n);

  for (int i = 0; i < n; ++ i) {
    ds[i] = (dat_t) { i, i * i };
  }
  int i = 0;
  for (dat_t *di = ds; di < ds + n; ++ di) {
    *di = (dat_t) { i, i * i };
    i ++;
  }
  dat_t *stop = ds + n;
  for (int i = 0; i < stop - ds; ++ i) {
    ds[i] = (dat_t) {i, i + i};
  }
  return 0;
}