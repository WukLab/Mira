#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

extern void * _disagg_alloc(unsigned cache, size_t size);
extern __int128_t cache_request(uint64_t vaddr);
extern void * cache_access_mut(__int128_t *token);
extern void * cache_access(__int128_t *token);
extern void init_client();
extern void cache_init();
extern void * offload_arg_buf;

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
    printf("Usage cache_array [n]\n");
  }

  init_client();
  cache_init();

  int n = atoi(argv[1]);
  printf("%d\n", n);

  as = (A *) _disagg_alloc(2, sizeof(A) * n);
  bs = (B *) _disagg_alloc(3, sizeof(B) * n);

  for (int i = 0; i < n; i++) {
    __int128_t token = cache_request((intptr_t) (as + i));
    A *ai = (A *) cache_access_mut(&token);
    // printf("%p\n", ai);
    ai->x = i;
    ai->y = i * i;

    token = cache_request((intptr_t) (bs + i));
    B *bi = (B *) cache_access_mut(&token);
    // printf("%p\n", ai);
    bi->x = i;
    bi->y = i + i;
  }

  for (int i = 0; i < n; i++) {
    __int128_t token = cache_request((intptr_t) (as + i));
    A *ai = (A *) cache_access(&token);
    printf("%d: %d = %d * %d\n",i, ai->y, ai->x, ai->x);

    token = cache_request((intptr_t) (bs + i));
    B *bi = (B *) cache_access(&token);
    printf("%d: %d = %d + %d\n",i, bi->y, bi->x, bi->x);
  }

	return 0;
}