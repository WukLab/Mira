#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <errno.h>

#include "common.h"
#include "helper.h"
#include "cache.h"
#include "cache_policy.h"
#include "cache_internal.h"
#include "stats.h"
#include "stats_internal.h"
#include "stack_like.h"
#include "local_mr.h"
#include "exchanger.h"

static char *_start_base = NULL;
struct cache_internal caches[OPT_NUM_CACHE + CACHE_ID_OFFSET];

// starting address of each cache
// currently used as free pointer base
static uint64_t _addr_space_base[OPT_NUM_CACHE + CACHE_ID_OFFSET] = { 0 };
RPC_rr_t * req_buf = NULL;

int req_head = 0;
int req_nout = 0;

cache_t cache_create(uint64_t size, unsigned linesize, uint64_t r_mem_limit) {
    // to seperate from NULL
    // and should be bigger than the sizeof(struct) in cache 2
    static uint64_t _start_addr = 4096;
    // user should not manage starting address of 
    // the cache line base
    assert(is_pow2(size));
    assert(is_pow2(linesize));
    assert(linesize <= CACHE_LINE_LIMIT);
    // TODO: conditional
    assert(size / linesize >= groups);

    // TODO: more assert
    caches[cache_cnt].linebase = _start_base;
    caches[cache_cnt].linesize = linesize;
    caches[cache_cnt].size = size;
    caches[cache_cnt].slots = size / linesize;
    caches[cache_cnt].metabase = aligned_alloc(4096, cache_get_field(cache_cnt, slots) * sizeof(struct line_header));

	// initialize header
	for (unsigned i = 0; i < caches[cache_cnt].slots; ++ i) {
        cache_header_field(cache_cnt, i, slot) = i;
        cache_header_field(cache_cnt, i, status) = LINE_IDLE;
        cache_header_field(cache_cnt, i, acq_count) = 0;
    }

    _start_base += size;
    _addr_space_base[cache_cnt] = _start_addr;
    _start_addr += r_mem_limit;

    // initialize tlb
    unsigned num_tlb_entries = caches[cache_cnt].slots;
    caches[cache_cnt].num_tlb_entries = num_tlb_entries;
    caches[cache_cnt].trans_tlb = aligned_alloc(4096, num_tlb_entries * sizeof(struct tlb_mapping));
    return cache_cnt++;
}

void cache_init() {
    // init space for local memory interface
    _start_base = (char *)rbuf + RPC_RET_LIMIT;
    stack_init();
    local_mr_init();
    init_exchanger();

    // set cache configurations
    char *cfg_path = (getenv("CACHE_CFG"));
    if (!cfg_path) {
        printf("Set CACHE_CFG env to path to the configuration file\n");
        exit(1);
    }
    FILE *cache_cfg = fopen(cfg_path, "r");
    if (!cache_cfg) {
        printf("Cannot open configuration file %s\n", cfg_path);
        exit(1);
    }

    while (1) {
        int cid; 
        uint64_t cache_size;
        uint64_t remote_usage_limit;
        unsigned line_size;

        int h = fgetc(cache_cfg);
        if (h == '#') {
            fscanf(cache_cfg, "%*[^\n]\n");
            continue;
        } else if (h == EOF)
            break;

        if (fscanf(cache_cfg, " %d %lu %lu %u\n", &cid, &cache_size, &remote_usage_limit, &line_size) == EOF) break;
        cache_size = align_with_pow2(cache_size);
        line_size = align_with_pow2(line_size);
        cache_create(cache_size, line_size, remote_usage_limit);
        printf("Regist cache %d, size %lu, line size %u bytes\n", cid, cache_size, line_size);
    }
    fclose(cache_cfg);
    init_cache_stats();
}

static inline void cache_await(cache_token_t token) {
    dprintf("Await token slot %u, status %d", token_header_field(token,slot), token_header_field(token,status));
	if (likely(token_header_field(token,status) != LINE_SYNC)) {
		return;
	}

    // clear inque work complete
    _cq_poll();
	if (likely(token_header_field(token,status) != LINE_SYNC)) {
		return;
	}
    ldf_inc(token.cache);

	do {
        _cq_poll();
	} while (token_header_field(token,status) == LINE_SYNC);
}

uint64_t redirect(uint64_t vaddr, unsigned cid) {
    virt_addr_t ser = {.ser = vaddr};
    ser.cache = cid;
    return ser.ser;
}

extern inline cache_token_t cache_request(uint64_t vaddr) {
    virt_addr_t ser = {.ser = vaddr};
    uint64_t addr = ser.addr;
    cache_t cache = ser.cache;
    dprintf("requesting from %d addr: %lu", cache, addr);

    if (unlikely(cache < CACHE_ID_OFFSET )) {
        // requesing local memory
        // use tag to store access address
        cache_token_t tk;
        tk.cache = cache;
        tk.tag = addr;
        return tk;
    }

    // log number of reqs
    req_inc(cache);

    uint64_t tag = cache_ofst_mask(cache_get_field(cache,linesize), addr);
    uint16_t ofst = cache_tag_mask(cache_get_field(cache,linesize), addr);

    // check tlb
    unsigned idx = (tag << cache_get_field(cache,linesize)) & (cache_get_field(cache,num_tlb_entries)-1);
    if (tlb_check(cache, idx, tag)) {
        cache_token_t token = {
            .cache = cache, 
            .slot = tlb_get_slot(cache,idx), 
            .tag = tag, 
            .line_ofst = ofst};
        add_tlb_hit(token);
        return token;
    }

    // find slot and eviction
    cache_token_t token = __cache_select(cache, tag);
    token.cache = cache;
    token.tag = tag;
    token.line_ofst = ofst;

    // log req event
    add_trace(token, EVNT_REQ);

    dprintf("translate addr %lu tag %lu cache %d, slot %u old tag %lu", addr, tag, cache, token.slot, token_header_field(token, tag));

    if (token_header_field(token,tag) == tag && token_header_field(token,status) != LINE_IDLE) {
        dprintf("-> tag match, do nothing");
    } else {
        miss_inc(cache, tag/cache_get_field(cache,linesize));
        uint64_t old_tag = token_header_field(token,tag);
        // if prefetch flag is still on, count as inaccurate pref
#ifdef CACHE_LOG_PREF
        if (token_check_flag(token,LINE_FLAGS_PREFED)) {
            inacc_pref_inc(cache);
            token_clear_flag(token,LINE_FLAGS_PREFED);
        } 
#endif
        // wait prev req ?
        if (token_header_field(token,status) != LINE_IDLE) cache_await(token);

        if (token_header_field(token,status) != LINE_IDLE &&
            token_header_field(token,tag) != tag &&
            token_check_flag(token,LINE_FLAGS_DIRTY)) {
            // eviction
            token_header_field(token,tag) = tag;
            token_header_field(token,status) = LINE_SYNC;
            token_header_field(token,weight) = 0;
            token_header_field(token,flags) = 0;
            dprintf("-> EVICT %lu, FETCH %lu", old_tag, tag);
            // printf("-> EVICT %lu, FETCH %lu\n", tag2, token_header_field(token,tag));
            cache_post(token, CACHE_REQ_EVICT, old_tag);
        } else {
            // fetch
            token_header_field(token,tag) = tag;
            // printf("-> FETCH: %lu\n", token_header_field(token,tag));
            token_header_field(token,status) = LINE_SYNC;
            token_header_field(token,weight) = 0;
            token_header_field(token,flags) = 0;
            dprintf("-> FETCH: %lu", tag);
            cache_post(token, CACHE_REQ_READ, -1);
        }
        // update tlb
        unsigned old_idx = (old_tag << cache_get_field(cache,linesize)) & (cache_get_field(cache,num_tlb_entries)-1);
        if (tlb_check(cache, old_idx, old_tag)) {
            tlb_invalidate(cache, old_idx);
        }
    }
    tlb_update(cache, idx, tag, token.slot);
    return token;
}

cache_token_t cache_prefetch(uint64_t vaddr) {
#ifdef CACHE_LOG_PREF
    virt_addr_t ser = {.ser = vaddr};
    uint64_t addr = ser.addr;
    cache_t cache = ser.cache;
    pref_inc(cache);
#endif
    cache_token_t token = cache_request(vaddr);
#ifdef CACHE_LOG_PREF
    token_set_flag(token,LINE_FLAGS_PREFED);
#endif
    return token;
}

// 0, 1 are local
// return dat directly
static inline void * placement_check(cache_token_t token) {
    if (token.cache == 0) return stack_access(token.tag);
    if (token.cache == 1) return local_mr_access(token.tag);
    return NULL;
}

extern inline cache_token_t cache_access_check(cache_token_t token) {
    if (token.tag != token_header_field(token,tag)) {
        virt_addr_t ser = { .cache = token.cache, .addr = (token.tag + token.line_ofst)};
        return cache_request(ser.ser);
    }
    return token;
}

void * cache_access_mod_opt(void * p) {

    virt_addr_t ser = {.ser = (uint64_t) p};
    uint64_t addr = ser.addr;
    cache_t cache = ser.cache;
    dprintf("requesting from %d addr: %lu", cache, addr);

    // log number of reqs
    uint64_t tag = cache_ofst_mask(cache_get_field(cache,linesize), addr);
    uint16_t ofst = cache_tag_mask(cache_get_field(cache,linesize), addr);

    // find slot and eviction
    cache_token_t token = __cache_select(cache, tag);
    token.cache = cache;
    token.tag = tag;
    token.line_ofst = ofst;

    if (token_header_field(token,tag) == tag && token_header_field(token,status) != LINE_IDLE) {
    } else {
        // if prefetch flag is still on, count as inaccurate pref
        // wait prev req ?
        if (token_header_field(token,status) != LINE_IDLE) cache_await(token);

        if (token_header_field(token,status) != LINE_IDLE &&
            token_header_field(token,tag) != tag &&
            token_check_flag(token,LINE_FLAGS_DIRTY)) {
            // eviction
            uint64_t tag2 = token_header_field(token,tag);
            token_header_field(token,tag) = tag;
            token_header_field(token,status) = LINE_SYNC;
            token_header_field(token,weight) = 0;
            token_header_field(token,flags) = 0;
            // printf("-> EVICT %lu, FETCH %lu\n", tag2, token_header_field(token,tag));
            cache_post(token, CACHE_REQ_EVICT, tag2);
        } else {
            // fetch
            token_header_field(token,tag) = tag;
            // printf("-> FETCH: %lu\n", token_header_field(token,tag));
            token_header_field(token,status) = LINE_SYNC;
            token_header_field(token,weight) = 0;
            token_header_field(token,flags) = 0;
            cache_post(token, CACHE_REQ_READ, -1);
        }
    }

    //access

    cache_await(token);
    __cache_access_handler(token, 0);
    return token_get_data(token); 
}

void * cache_access_mod_opt_mut(void * p) {

    virt_addr_t ser = {.ser = (uint64_t) p};
    uint64_t addr = ser.addr;
    cache_t cache = ser.cache;
    dprintf("requesting from %d addr: %lu", cache, addr);

    // log number of reqs
    uint64_t tag = cache_ofst_mask(cache_get_field(cache,linesize), addr);
    uint16_t ofst = cache_tag_mask(cache_get_field(cache,linesize), addr);

    // find slot and eviction
    cache_token_t token = __cache_select(cache, tag);
    token.cache = cache;
    token.tag = tag;
    token.line_ofst = ofst;

    if (token_header_field(token,tag) == tag && token_header_field(token,status) != LINE_IDLE) {
    } else {
        // if prefetch flag is still on, count as inaccurate pref
        // wait prev req ?
        if (token_header_field(token,status) != LINE_IDLE) cache_await(token);

        if (token_header_field(token,status) != LINE_IDLE &&
            token_header_field(token,tag) != tag &&
            token_check_flag(token,LINE_FLAGS_DIRTY)) {
            // eviction
            uint64_t tag2 = token_header_field(token,tag);
            token_header_field(token,tag) = tag;
            token_header_field(token,status) = LINE_SYNC;
            token_header_field(token,weight) = 0;
            token_header_field(token,flags) = 0;
            // printf("-> EVICT %lu, FETCH %lu\n", tag2, token_header_field(token,tag));
            cache_post(token, CACHE_REQ_EVICT, tag2);
        } else {
            // fetch
            token_header_field(token,tag) = tag;
            // printf("-> FETCH: %lu\n", token_header_field(token,tag));
            token_header_field(token,status) = LINE_SYNC;
            token_header_field(token,weight) = 0;
            token_header_field(token,flags) = 0;
            cache_post(token, CACHE_REQ_READ, -1);
        }
    }

    //access

    cache_await(token);
    __cache_access_handler(token, 1);
    return token_get_data(token); 
}

void * cache_access(cache_token_t token) {
    void *dat = placement_check(token);
    if (dat) return dat;
    // add addr trace
    access_inc(token.cache);

    cache_access_check(token);
    cache_await(token);
    __cache_access_handler(token, 0);
#ifdef CACHE_LOG_PREF
    token_clear_flag(token,LINE_FLAGS_PREFED);
#endif
    add_trace(token, EVNT_ACC);
    return token_get_data(token);
}

void * cache_access_mut(cache_token_t token) {
    void *dat = placement_check(token);
    if (dat) return dat;
    access_inc(token.cache);
    cache_access_check(token);
    cache_await(token);
    __cache_access_handler(token, 1);
#ifdef CACHE_LOG_PREF
    token_clear_flag(token,LINE_FLAGS_PREFED);
#endif
    add_trace(token, EVNT_ACC_MUT);
    return token_get_data(token);
}

void * cache_access_nrtc(cache_token_t token) {
    void *dat = placement_check(token);
    if (dat) return dat;
    access_inc(token.cache);
    cache_await(token);
    __cache_access_handler(token, 0);
#ifdef CACHE_LOG_PREF
    token_clear_flag(token,LINE_FLAGS_PREFED);
#endif
    add_trace(token, EVNT_ACC);
    return token_get_data(token);
}

void * cache_access_nrtc_mut(cache_token_t token) {
    void *dat = placement_check(token);
    if (dat) return dat;
    access_inc(token.cache);
    cache_await(token);
    __cache_access_handler(token, 1);
#ifdef CACHE_LOG_PREF
    token_clear_flag(token,LINE_FLAGS_PREFED);
#endif
    add_trace(token, EVNT_ACC_MUT);
    return token_get_data(token);
}

// void cache_sync(cache_token_t *token) {
//     // TODO coherent?
//     if (token_get_status(token) == LINE_READY 
//             && token_check_flag(token,LINE_FLAGS_DIRTY)) {
//         cache_post(token, CACHE_REQ_WRITE, -1);
//         token_clear_flag(token,LINE_FLAGS_DIRTY);
//     }
// }

/* calloc like token_acquire */
// overlapped address on the same cache line increase acq_count
// return: list of tokens
void cache_acquire(intptr_t vaddr, size_t nitems, size_t size, cache_token_t *tokens) {
    for (unsigned i = 0; i < nitems; ++ i) {
        tokens[i] = cache_request(vaddr + size*i);
#ifdef CACHE_CONFIG_ACQUIRE
        token_header_field(tokens[i],acq_count) ++;
#endif
        add_trace(tokens[i], EVNT_ACQ);
    }
}

void cache_re_acquire(cache_token_t token) {
    if (unlikely(token.cache > 1)) {
        // access stack mem
        return;
    }
    // fdprintf("reacq addr %lu tag %lu cache %d, slot tag %lu", token->tag+token->line_ofst, token->tag, token->cache, token_header_field(token,tag)); 
    cache_access_check(token);
#ifdef CACHE_CONFIG_ACQUIRE
    token_header_field(token,acq_count) ++;
#endif
    add_trace(token, EVNT_ACQ);
}

// check negative, prevent aliasing
void cache_release(cache_token_t *tokens, int cnt) {
    for (int i = 0; i < cnt; i++) {
        if (tokens[i].cache == 0) continue;
        if (token_header_field(tokens[i],acq_count) > 0) {
            token_header_field(tokens[i],acq_count) --;
            add_trace(tokens[i], EVNT_RLS);
        }
    }
}

void cache_flush(unsigned cache, uint64_t vaddr) {
    uint64_t tag = cache_ofst_mask(cache_get_field(cache,linesize), vaddr);
    cache_token_t token = __cache_select(cache, tag);
    token.tag = tag;
    token.cache = cache;
    dprintf("Flushing tag %lu, token slot %u tag %lu" ,
        tag, token.slot, token_header_field(token,tag)
    );
    if (token_header_field(token,tag) != tag || token_header_field(token,status) == LINE_IDLE) {
        // target not in cache
        dprintf("Flusing target not in cache");
        return;
    }
    cache_await(token);
    if (token_header_field(token,status) != LINE_IDLE &&
        token_check_flag(token,LINE_FLAGS_DIRTY)) {
        // invalidate entry
        token_header_field(token,tag) = -1; 
        token_header_field(token,status) = LINE_SYNC;
        token_header_field(token,weight) = 0;
        token_header_field(token,flags) = 0;
        cache_post(token, CACHE_REQ_FLUSH, tag);
    }
}

// TODO: inline cachesize?
// void cache_evict(cache_token_t *token, intptr_t addr) {
//     uint64_t tag = cache_ofst_mask(cache_get_field(token->cache,linesize), addr);
//     uint64_t tag2 = token->tag;
//     token->tag = tag;
//     token_header_field(token,tag) = tag;
//     cache_post(token,CACHE_REQ_EVICT,tag2);
// }

// TODO: 
//  1. Assert cache != 0 ?
//  2. Assert boundary crossing
void * _disagg_alloc(cache_t cache, size_t size) {
    intptr_t addr = _addr_space_base[cache];
    _addr_space_base[cache] += size;
    virt_addr_t vaddr = { .cache = 0, .addr = addr };
    return (void *) vaddr.ser;
}

void * _disagg_local_malloc(size_t size) {
    dprintf("allocating %lu from local mem", size);
    intptr_t ofst = local_mr_alloc(size);
    virt_addr_t vaddr = { .cache = 1, .addr = ofst };
    return (void *) vaddr.ser;
}

void * _disagg_stack_alloc(size_t size) {
    dprintf("allocating %lu from stack", size);
    intptr_t ofst = stack_push(size);
    virt_addr_t vaddr = { .cache = 0, .addr = ofst };
    return (void *) vaddr.ser;
}

void _disagg_stack_reclaim(size_t size) {
    return stack_pop(size);
}

void init_cache_stats() {
#ifdef CACHE_LOG_REQ
    printf("Log number of cache requests\n");
#endif
#ifdef CACHE_LOG_ACCESS
    printf("Log number of access\n");
#endif
#ifdef CACHE_LOG_MISS
    printf("Log number of cache misses\n");
#endif
#ifdef CACHE_LOG_LDF
    printf("Log number of late data fetch\n");
#endif
#ifdef CACHE_LOG_PREF
    printf("Log number of prefetches and accurate ones\n");
#endif
#ifdef CACHE_LOG_TRACE
    printf("Record address trace\n");
#endif
#ifdef CACHE_TLB_HIT
    printf("Log TLB hit rate\n");
#endif
    for (int i = CACHE_ID_OFFSET; i < cache_cnt; ++ i) {
#ifdef CACHE_LOG_TRACE
        // initialize trace
        csts[i].tll.head = new_trace(0, -1);
        csts[i].tll.tail = csts[i].tll.head;
#endif
#ifdef CACHE_LOG_MISS
        csts[i].visited = (uint8_t *) malloc(sizeof(uint8_t) * (1 << 25));
#endif
#ifdef CACHE_TLB_HIT
        csts[i].num_tlb_hit = 0;
#endif
    }
}

void get_cache_logs() {
    printf("----- Cache stats -----\n");
  for (int i = CACHE_ID_OFFSET; i < cache_cnt; ++ i) {
    printf("  --- Cache %d ---:\n", i);
#ifdef CACHE_LOG_REQ
    printf("total reqs: %lu\n", csts[i].num_reqs);
#endif
#ifdef CACHE_LOG_ACCESS
    printf("total access: %lu\n", csts[i].num_access);
#endif
#ifdef CACHE_LOG_LDF
    printf("access before data arrival: %lu\n", csts[i].late_data_fetch);
#endif
#ifdef CACHE_LOG_MISS
    uint64_t total_miss = csts[i].num_miss;
    printf("total miss: %lu\n", total_miss);
#ifdef CACHE_CLASS_MISS
    printf("compulsory miss: %lu %f\n", csts[i].miss_compulsory, (double) csts[i].miss_compulsory / total_miss);
    printf("conflict miss: %lu %f\n", csts[i].miss_conflict, (double) csts[i].miss_conflict / total_miss);
#endif
#endif
#ifdef CACHE_LOG_PREF
    printf("total pref: %lu\n", csts[i].num_pref);
    printf("inacc pref: %lu %f\n", csts[i].inacc_pref, (double) csts[i].inacc_pref / csts[i].num_pref);
#endif
#ifdef CACHE_LOG_TRACE
    char fn[32];
    sprintf(fn, "%d-trace.txt", i);
    FILE *trace_i = fopen(fn, "w");
    trace_node *cur = csts[i].tll.head->next;
    while (cur) {
      fprintf(trace_i, "%lu %d\n", cur->addr, cur->event_code);
      cur = cur->next;
    }
    fclose(trace_i);
#endif
#ifdef CACHE_TLB_HIT
    printf("TLB hit rate: %.6f%\n", (float) csts[i].num_tlb_hit / csts[i].num_reqs * 100);
#endif
  }
}
