#ifndef _LOCAL_MEM_MAP_INTERFACE_H_
#define _LOCAL_MEM_MAP_INTERFACE_H_

#include "cache.h"
#include <stdlib.h>
#include <stdint.h>

static size_t mr_size = 16 << 20;
static size_t mr_align = 4 << 10;

static char *mr_base = NULL;
static intptr_t fp = 16; // no need to worry about cache line boundary

static void local_mr_init() {
  mr_base = (char *) aligned_alloc(mr_align, mr_size);
}

static inline intptr_t local_mr_alloc(size_t size) {
  intptr_t ofst = fp;
  fp += size;
  return ofst;
}

static inline void * local_mr_access(intptr_t ofst) {
  return mr_base + ofst;
}

#endif
