#ifndef __HELPER_H__
#define __HELPER_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#define MIN(x, y) ((x) < (y) ? (x) : (y))
#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define barrier() asm volatile("" ::: "memory")
#define UNUSED(x) (void)(x)

// is power of 2, non-zero
static inline int is_pow2(uint64_t v) {
        return v && ((v & (v - 1)) == 0);
}

static inline uint64_t align_with_pow2(uint64_t x) {
    if (is_pow2(x)) return x;
    int nlz = __builtin_clzll(x);
    return ((uint64_t)1 << (64 - nlz));
}

// align addr to cache line size
static inline uint64_t align_next_free(uint64_t addr, size_t ds, uint64_t cls) {
    uint64_t ofst = addr & (cls-1);
    if ((cls - ofst) >= ds) return addr;
    // else align to next cls
    return addr + cls - ofst;
}



#ifdef __cplusplus
}
#endif
#endif