#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <assert.h>

#include "common.h"
#include "cache.h"

typedef struct A {
  int x;
  int y;
} A;

typedef struct B {
  int x;
  int y;
} B;

A *as;
B *bs;

int main(int argc, char *argv[]) {
  if (argc < 2) {
    printf("Usage cache_array [n]");
  }

  init_client();
  cache_init();
  channel_init();
  unsigned channel;

  int n = atoi(argv[1]);
  printf("%d\n", n);

  as = (A *) _disagg_alloc(2, sizeof(A) * n);
  // bs = (B *) _disagg_alloc(3, sizeof(B) * n);

  // channel = channel_create(
  //   (uintptr_t) as,
  //   n, sizeof(A), 4, 2, 2, CHANNEL_STORE
  // );
  for (int i = 0; i < n; i++) {
    cache_token_t token = cache_request((intptr_t) (as + i));
    A *ai = (A *) cache_access_mut(&token);
    // A *ai = (A *) channel_access(channel,i);
    // printf("%p\n", ai);
    ai->x = i;
    ai->y = i * i;

    // token = cache_request((intptr_t) (bs + i));
    // B *bi = (B *) cache_access_mut(&token);
    // // printf("%p\n", ai);
    // bi->x = i;
    // bi->y = i + i;
  }
  // channel_destroy(channel);
  channel = channel_create(
    (uintptr_t) as,
    n, sizeof(A), 6, 2, 4, 0, CHANNEL_STORE
  );

  for (int i = 0; i < n; i++) {
    // cache_token_t token = cache_request((intptr_t) (as + i));
    // A *ai = (A *) cache_access(&token);
    A *ai = (A *) channel_access(channel, i);
    printf("%d: %d = %d * %d\n",i, ai->y, ai->x, ai->x);
    ai->x *= 2;

    // token = cache_request((intptr_t) (bs + i));
    // B *bi = (B *) cache_access(&token);
    // printf("%d: %d = %d + %d\n",i, bi->y, bi->x, bi->x);
  }

  channel_destroy(channel);

	return 0;
}
