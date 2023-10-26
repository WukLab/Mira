#ifndef _APP_H_
#define _APP_H_

#ifdef __cplusplus
extern "C"
{
#endif 

#include <stdlib.h>
#include <stdint.h>

#define PAYLOAD_LIMIT (2 << 20)

typedef union {
    uint64_t ser;
    struct {
        uint64_t addr:56;
        uint8_t cache;
    };
} virt_addr_t;

/* op_code spec */
enum {
  // Cache related code
  CACHE_REQ_WRITE = 0,
  CACHE_REQ_READ,
  CACHE_REQ_EVICT,
  CACHE_REQ_MEMCOPY,
  CACHE_REQ_MEMMOVE,
  CACHE_REQ_FLUSH,
  
  // Bypass cache
  SIDE_READ,
  SIDE_WRITE,
  SIDE_EVICT,

  // Always push at the last one
  FUNC_CALL_BASE
};

typedef struct cache_req {
  uint64_t tag;
  uint64_t tag2: 48;
  uint8_t cache_id; 
  uint8_t unused;
} cache_req_t;

typedef struct call_req {
  uint64_t procedure_id;
  uint32_t arg_size;
  uint16_t ret_size;
  uint16_t unused;
} call_req_t;

typedef struct side_channel {
  uint64_t raddr: 48; // disagg_vaddr
  uint16_t rsize;
  uint64_t waddr: 48; // disagg_vaddr
  uint16_t wsize;
} side_channel_t;

typedef struct RemoteRequest {
  union {
    cache_req_t cache_r_header;
    call_req_t call_r_header;
    side_channel_t side_r_header;
  };
  uint16_t assem_id; // for side_channel only
  uint8_t stride_not_in_use;
  uint8_t op_code;
} RPC_rr_t;

typedef struct RemoteRequestFULL {
  RPC_rr_t rr;
  char data_seg_base[PAYLOAD_LIMIT];
} RPC_rrf_t;

#ifdef __cplusplus
}
#endif
#endif 
