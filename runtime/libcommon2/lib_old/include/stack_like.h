#ifndef __STACK_CACHE_INTERFACE_H__
#define __STACK_CACHE_INTERFACE_H__

#include "cache.h"
#include <stdlib.h>
#include <stdint.h>

static size_t stack_size = 4 << 10;
static size_t stack_align = 4 << 10;

static intptr_t rsp = 16; // no need to worry about cache line boundary
static char *stack_base = NULL;

static void stack_init() {
  stack_base = aligned_alloc(stack_align, stack_size);
}

// Return a pointer to the current rsp
// And move rsp further
static inline intptr_t stack_push(size_t size) {
  intptr_t ofst = rsp;
  rsp += size;
  return ofst;
}

// Move rsp back with size bytes
static inline void stack_pop(size_t size) {
  rsp -= size;
}

static inline void * stack_access(intptr_t ofst) {
  return stack_base + ofst;
}


#endif
