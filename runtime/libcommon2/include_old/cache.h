#ifndef __CACHE_H__
#define __CACHE_H__

#include <stdint.h>
#include <stdlib.h>
#include "app.h"

#ifdef __cplusplus
extern "C"
{
#endif

/* Cache options
   Option: acqurie flag */
#define CACHE_CONFIG_ACQUIRE

/* Option: runtime check */
// #define CACHE_CONFIG_RUNTIME_CHECK 


#define CACHE_ID_OFFSET 2

/* token interface */
// DONE: hold pointer ?
// DONE: use tag as verification key
typedef struct cache_token_t {
    // key for pointer
    uint64_t tag; // addr = tag + line_ofst
    uint32_t slot;
    uint16_t cache;
    uint16_t line_ofst;
} cache_token_t;

/* cache line header */
typedef struct line_header {
    struct {
        uint64_t tag: 48;
        uint16_t acq_count;
    };
    union {
        uint64_t line_meta;
        struct {
            uint32_t slot;
            uint16_t weight; 
            uint8_t flags;
            uint8_t status;
        };
    };
} line_header;


#define CACHE_LINE_LIMIT PAYLOAD_LIMIT


/* Cache spec */
typedef unsigned cache_t;
// TODO: Constant Propogation?
#define OPT_NUM_CACHE 16

#ifndef __cache_access_handler 
    // #define __cache_access_handler _cache_access_groupassoc
    #define __cache_access_handler _cache_access_direct
#endif
#ifndef __cache_select 
    // #define __cache_select _cache_select_groupassoc_lru
    #define __cache_select _cache_select_directassoc
#endif

/* Cache Line Spec */
// line flags
enum {
    LINE_FLAGS_PREFED = 1 << 0,
    LINE_FLAGS_DIRTY   = 1 << 1,
    LINE_FLAGS_RACCESS = 1 << 2,
};

// line status
enum line_status {
    LINE_IDLE=0, // IDLE only happens on init
    LINE_ALLOC,
    LINE_READY,
    LINE_SYNC,
    LINE_END
};

/* High-level interfaces */
// init, should be called only after common init
void cache_init();

// Access Level, token interface
void cache_acquire(intptr_t vaddr, size_t nitems, size_t size, cache_token_t *tokens);
void cache_re_acquire(cache_token_t token);
void cache_release(cache_token_t *tokens, int cnt);

// TODO: consider inline
// TODO: fixed base?
cache_token_t cache_request(uint64_t vaddr);
// TODO: inline ?
cache_token_t cache_prefetch(uint64_t vaddr);
uint64_t redirect(uint64_t vaddr, unsigned cid);

// void cache_sync(cache_token_t *token);
// void cache_await(cache_token_t *token);

// no need to call await beforehand
void * cache_access(cache_token_t token);
void * cache_access_mut(cache_token_t token);
void * cache_access_nrtc(cache_token_t token);
void * cache_access_nrtc_mut(cache_token_t token);

void * cache_access_mod_opt(void * p);
void * cache_access_mod_opt_mut(void * p);

// if version missmatch, request new one
cache_token_t cache_access_check(cache_token_t token);
// will invalidate the entry
void cache_flush(unsigned cache, uint64_t vaddr);
// void cache_poll(void *arg);

void * _disagg_alloc(cache_t cache, size_t size);
void _disagg_free(intptr_t vaddr);
void * _disagg_local_malloc(size_t size);
void _disagg_local_free(intptr_t addr);
void * _disagg_stack_alloc(size_t size);
void _disagg_stack_reclaim(size_t size);

void init_cache_stats();
void get_cache_logs();

#ifdef __cplusplus
}
#endif
#endif
