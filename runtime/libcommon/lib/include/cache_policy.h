#pragma once
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include "cache_internal.h"

static inline void check_ok(int b, const char * s) {
    if (!b) {
        fprintf(stderr, "ASSERT ERROR: %s.", s);
        exit(-1);
    }
}

static inline unsigned rand_next() {
    const int mult = 22695477;
    const int inc = 1;
    static unsigned cur = 2333;
    return (cur = cur * mult + inc);
}

/* Group assoc */
#define group_bits 2
#define groups (4ULL)
#define group_mask (~(3ULL))

// checkers
static inline void _cache_access_check(cache_token_t token, int mut) {
    // mark line as dirty
    if (mut)
        token_set_flag(token, LINE_FLAGS_DIRTY);
}

// check acquire
static inline int _cache_eviction_check(cache_t cache, unsigned slot) {
	int error = 0;
#ifdef CACHE_CONFIG_ACQUIRE
	error |= (cache_header_field(cache,slot,acq_count) != 0);
#endif
	return error;
}        

static inline void _cache_access_direct(cache_token_t token, int mut) {
    _cache_access_check(token, mut);
}

static inline void _cache_access_groupassoc(cache_token_t token, int mut) {
    // mark line as dirty
    _cache_access_check(token, mut);
    // mark self as assoc
    unsigned base = token_header_field(token,slot) & group_mask;

    for (uint64_t i = 0; i < groups; i++) {
        cache_clear_flag(token.cache,base+i,LINE_FLAGS_RACCESS);
    }
    token_set_flag(token,LINE_FLAGS_RACCESS);
}

/* direct assoc: XXX: will not respect eviction checks in direct mode */
static inline cache_token_t _cache_select_directassoc(cache_t cache, uint64_t tag) {
    cache_token_t token;
    unsigned linesize = cache_get_field(cache,linesize);
    unsigned slot = (tag / linesize) & (cache_get_field(cache,slots) - 1);
    token.slot = slot;
    return token;
}


static inline cache_token_t _cache_select_groupassoc_rand(cache_t cache, uint64_t tag) {
    cache_token_t token;
    unsigned linesize = cache_get_field(cache,linesize);
    unsigned base = (tag/linesize) & (cache_get_field(cache,slots)/groups - 1);
    base <<= group_bits;

    // check if in the group already
	for (uint64_t i = 0; i < groups; i++) {
		if (cache_header_field(cache,base+i,tag) == tag) {
			token.slot = base+i;
			return token;
		}
	}
    // check idle
    for (uint64_t i = 0; i < groups; i++) {
        if (cache_header_field(cache,base+i,status) == LINE_IDLE) {
			// token_unlock_meta(t[i]);
            token.slot = base+i;
            return token;
		}
    }
    // random select a single element to evict
    unsigned slot = base + (rand_next() & (groups - 1));
    check_ok(_cache_eviction_check(cache, slot) == 0, "direct victim acquired");
    token.slot = slot;
    return token;
}

// lock not required
static inline cache_token_t _cache_select_groupassoc_lru(cache_t cache, uint64_t tag) {
    // try group assoc
    unsigned linesize = cache_get_field(cache,linesize);
    // unsigned base = (tag/linesize/groups) & (cache_get_field(cache,slots)/groups - 1);
    unsigned base = (tag/linesize/groups) & (cache_get_field(cache,slots)/groups - 1);
    base <<= group_bits;
    int flag = 0;
    cache_token_t token;
	// check if in the group already
	for (uint64_t i = 0; i < groups; i++) {
		if (cache_header_field(cache,base+i,tag) == tag) {
			token.slot = base+i;
			return token;
		}
	}
    
    // not in the group, find 1. idle 2. lru
    for (uint64_t i = 0; i < groups; i++) {
		// token_lock_meta(t);
        if (cache_header_field(cache,base+i,status) == LINE_IDLE) {
            token.slot = base + i;
            return token;
        }

        if (!cache_check_flag(cache,base+i,LINE_FLAGS_RACCESS) && 
            _cache_eviction_check(cache,base+i) == 0) {
            flag = 1;
            token.slot = base + i;
        }
    }
    check_ok(flag, "cache out of space");
    return token;
}

