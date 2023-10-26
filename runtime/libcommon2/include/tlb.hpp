#ifndef _TLB_HPP_
#define _TLB_HPP_

#include "stdint.h"
#include "cache_token.hpp"

// do reverse search, so we get most recent caches first
// TODO: use SIMD

struct NoTlb {
    static inline bool lookup(uint64_t tag) { return false; }
    static inline void invalid(uint64_t tag) { }
    static inline void update(Token &token, uint64_t tag) { }
    static inline int offset() { return 0; }
};

template <int entries>
struct LinearTlb {
    static inline int ad(int x) { return (x + 1) % entries;}
    static uint64_t _tags[entries] = {0};

    // scan and swap
    static inline bool lookup(uint64_t tag) { return false; }
    // swap and evict
    static inline void invalid(uint64_t tag) { }
    static inline void update(Token &token, uint64_t tag) { }
    static inline int offset() { return 0; }
};

#endif
