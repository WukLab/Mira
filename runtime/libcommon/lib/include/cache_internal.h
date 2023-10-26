#ifndef _CACHE_INTERNAL_H_
#define _CACHE_INTERNAL_H_
#include "cache.h"
#include "stats_internal.h"
#include "app.h"
#include <stdlib.h>

struct tlb_mapping {
    uint64_t tag;
    unsigned slot;
    int valid;
};

struct cache_internal {
    // pointers
    char * linebase;
    // line meta
    line_header * metabase;
    // linesizes
    uint64_t size;
    unsigned linesize;
    unsigned slots;

    // translation table
    struct tlb_mapping *trans_tlb;
    unsigned num_tlb_entries;
};

extern struct cache_internal caches[];

static int cache_cnt = CACHE_ID_OFFSET;

static inline uint64_t cache_tag_mask(uint64_t linesize, intptr_t addr) {
    return ((uint64_t)addr & (linesize - 1));
}

static inline uint64_t cache_ofst_mask(uint64_t linesize, intptr_t addr) {
    return ((uint64_t)addr & ~(linesize - 1));
}

/* Cache line header */
#define header_get_field(h_ptr) \
    ((h_ptr)->field)
#define header_set_flag(h_ptr,flag) \
    ((h_ptr)->flags |= flag)
#define header_clear_flag(h_ptr,flag) \
    ((h_ptr)->flags &= (~(flag)))
#define header_check_flag(h_ptr,flag) \
    ((h_ptr)->flags & (flag))

/* Cache Inlines/Macros */
#define cache_get_field(cache,field) \
    (caches[cache].field)
#define cache_get_line(cache,slot) \
    (caches[cache].linebase+(slot)*cache_get_field(cache,linesize))
#define cache_header_field(cache,slot,field) \
    ((caches[cache].metabase)[(slot)].field)

#define cache_set_flag(cache,slot,flag) \
    (cache_header_field(cache,slot,flags) |= flag)
#define cache_clear_flag(cache,slot,flag) \
    (cache_header_field(cache,slot,flags) &= (~(flag)))
#define cache_check_flag(cache,slot,flag) \
    (cache_header_field(cache,slot,flags) & (flag))

/* Token Inlines/Macros */
#define token_header_field(tk,field) \
    (cache_header_field((tk).cache,(tk).slot,field))
#define token_header_ptr2int(tk) \
    ((intptr_t) (caches[(tk).cache].metabase+((tk).slot)))
#define token_get_data(tk) \
    (cache_get_line((tk).cache,(tk).slot)+(tk).line_ofst)
#define token_set_flag(tk,flag) \
    (cache_set_flag((tk).cache,(tk).slot,flag))
#define token_clear_flag(tk,flag) \
    (cache_clear_flag((tk).cache,(tk).slot,flag))
#define token_check_flag(tk,flag) \
    (cache_check_flag((tk).cache,(tk).slot,flag))

#define tlb_check(cache,idx,t) \
    (cache_get_field(cache,trans_tlb)[idx].tag == (t) && cache_get_field(cache,trans_tlb)[idx].valid)
#define tlb_get_slot(cache,idx) \
    (cache_get_field(cache,trans_tlb)[idx].slot)
#define tlb_invalidate(cache,idx) \
    (cache_get_field(cache,trans_tlb)[idx].valid = 0)
#define tlb_update(cache,idx,t,s) \
    cache_get_field(cache,trans_tlb)[idx].tag = t; \
    cache_get_field(cache,trans_tlb)[idx].slot = s; \
    cache_get_field(cache,trans_tlb)[idx].valid = 1

#endif
