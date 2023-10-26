#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>

#define ARY_SIZE (64ULL << 20)
static int data[ARY_SIZE];
static size_t indices[ARY_SIZE];

static uint64_t seed = 0x23333;

static inline int nextRand(int M) {
  seed = ((seed * 7621) + 1) % M;

  // static std::mt19937 g(seed);
  // static std::uniform_int_distribution<int> dist(0, M-1);
  // seed = dist(g);

  // printf("%d\n", (int)r);
  return (int)seed;
}

void init_ary() {
  for (size_t i = 0; i < ARY_SIZE; ++ i) {
    data[i] = nextRand(ARY_SIZE);
    // data[i] = i;
    indices[i] = i;
  }
}

void do_work() {
  int max = data[0];
  size_t max_i = 0; 
  int min = data[0];
  size_t min_i = 0;
  size_t mean = 0, cnt = 0;

  for (size_t i = 0; i < ARY_SIZE; ++ i) {
    if (data[i] > max) {
      max_i = indices[i];
      max = data[i];
    }
    if (data[i] < min) {
      min_i = indices[i];
      min = data[i];
    }
    mean += data[i];
    cnt += 1;
  }
  printf("Max: %lu %d\n", max_i, max);
  printf("Min: %lu %d\n", min_i, min);
  printf("Mean: %lu %lu\n", cnt, mean / ARY_SIZE);
}

int main() {
  init_ary();
  do_work();
  return 0;
}