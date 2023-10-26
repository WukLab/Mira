#ifndef __CLIENT_REMOTE_EXCHANGER_H__
#define __CLIENT_REMOTE_EXCHANGER_H__

#ifdef __cplusplus
extern "C"
{
#endif 

#include "common.h"
#include "app.h"
#include "cache_internal.h"
#include "cache.h"
#include "channel_internal.h"
#include "offload.h"
#include <stdint.h>

#define REQ_INFLIGHT 64

typedef union {
  uint64_t ser;
  struct {
    unsigned slot;
    uint16_t unused;
    uint8_t cache_or_channel;
    unsigned char type;        
  } detail;
} wr_id_t;

extern RPC_rr_t * req_buf;
static uint64_t remote_vaddr_base;

enum {
  WR_ID_RPC_RET = 1,
  WR_ID_CACHE_RECV,
  WR_ID_CACHE_FLUSH,
  WR_ID_CHANNEL_RECV,
  WR_ID_CHANNEL_FLUSH,
};

static inline void init_exchanger() {
  offload_arg_buf = sbuf;
  offload_ret_buf.data = rbuf;
  offload_ret_buf.available = 0;

  // sge_buf = (uint64_t *) (sbuf + ARG_BUF_LIMIT);
  // req_buf = (RPC_rr_t *) (sge_buf + SGE_ADDR_LIMIT);
  req_buf = (RPC_rr_t *) (sbuf + ARG_BUF_LIMIT);

  // agree on remote base addr
  // so that local side can map the address proactively
  // recv(offload_ret_buf.data, sizeof(uint64_t));
  // remote_vaddr_base = *(uint64_t *) offload_ret_buf.data;
  // printf("Remote base addr: %lx\n", remote_vaddr_base);
}

extern int req_head;
extern int req_nout;

// static int sge_head = 0;
// static int sge_nout = 0;

static inline void _cq_poll() {
    static struct ibv_wc wc[MAX_POLL];

    int n = ibv_poll_cq(cq, MAX_POLL, wc);
    for (int i = 0; i < n; ++ i) {
        dprintf("CQ POLL, RECV %d\n", wc[i].opcode == IBV_WC_RECV);
        if (wc[i].status != IBV_WC_SUCCESS) {
            printf("WR failed status: %d\n", wc[i].status);
            exit(1);
        }
        req_nout --;
        if (wc[i].opcode == IBV_WC_RECV) {
            wr_id_t id = (wr_id_t) {.ser = wc[i].wr_id};
            switch (id.detail.type)
            {
            case WR_ID_RPC_RET:
              dprintf("Offload ret available, fid %u", id.detail.slot);
              offload_ret_buf.available = 1;
              break;
            case WR_ID_CACHE_RECV:
              dprintf("poll cache cq tag %lu", cache_header_field(id.detail.cache_or_channel, id.detail.slot, tag));
              cache_header_field(id.detail.cache_or_channel, id.detail.slot, status) = LINE_READY;
              break;
            case WR_ID_CHANNEL_RECV:
              dprintf("poll channel cq slot %d", id.detail.slot);
              channel_get_status(id.detail.cache_or_channel,id.detail.slot) = CHANNEL_SLOT_READY;
              break;
            default:
              // dprintf("get unknown recv cq %d", id.detail.type);
              break;
            }
            // clear statics?
        } else if (wc[i].opcode == IBV_WC_SEND) {
            wr_id_t id = (wr_id_t) {.ser = wc[i].wr_id};
            switch (id.detail.type)
            {
            case WR_ID_CACHE_FLUSH:
              dprintf("poll cache %u flush slot %u", id.detail.cache_or_channel, id.detail.slot);
              cache_header_field(id.detail.cache_or_channel,id.detail.slot,status) = LINE_IDLE;
              break;
            case WR_ID_CHANNEL_FLUSH:
              dprintf("poll channel %u flush slot %d", id.detail.cache_or_channel, id.detail.slot);
              channel_get_status(id.detail.cache_or_channel,id.detail.slot) = CHANNEL_SLOT_IDLE;
              break;
            default:
              // dprintf("get unknown send code %d", id.detail.type);
              break;
            }
            // fdprintf("sout now %d", now);
        } 
    }
}

// TODO: multiple lines
// TODO: write notification by sge
// TODO: inline this funciton?
static inline void cache_post(cache_token_t token, int type, uint64_t tag2) {
    /* prepare work packet */
    struct ibv_sge s_sge[2], r_sge;
    struct ibv_send_wr swr, *bad_wr;
    struct ibv_recv_wr rwr, *bad_rwr;

    /* populate work packet */
    cache_t cache = token.cache;
    uint64_t tag = token.tag;
    unsigned slot = token.slot;

    dprintf("cache %d, slot id %u tag %lu\ntoken tag %lu, tag2 %lu, op %d", cache, slot, cache_header_field(cache,slot,tag), tag, tag2, type);
    // printf("cache %d, slot id %u tag %lu\ntoken tag %lu, tag2 %lu, op %d\n", cache, slot, cache_header_field(cache,slot,tag), tag, tag2, type);

    while (req_nout >= REQ_INFLIGHT) {
      _cq_poll();
    }

    /* Fill the buf */
    unsigned cur = req_head;
    req_head = (req_head + 1) & (REQ_INFLIGHT - 1);
    req_nout ++;

    req_buf[cur].op_code = type;
    req_buf[cur].cache_r_header.tag = tag;
    req_buf[cur].cache_r_header.tag2 = tag2;
    req_buf[cur].cache_r_header.cache_id = cache;

    /* Send Packets */
    s_sge[0].addr = (uint64_t)(req_buf + cur);
    s_sge[0].length = sizeof(*req_buf);
    s_sge[0].lkey = smr->lkey;

    // sge 1 for accessing cache line
    s_sge[1].addr = (uint64_t)(cache_get_line(cache,slot));
    s_sge[1].length = cache_get_field(cache,linesize);
    s_sge[1].lkey = rmr->lkey;

    swr.num_sge = type == CACHE_REQ_READ ? 1 : 2;
    swr.sg_list = &s_sge[0];
    swr.opcode = IBV_WR_SEND;
    // wr_id is the address of cache line header 
    // where the received data is expected to be placed at
    // only useful when the request is expecting a reply
    swr.wr_id = 0;
    if (type == CACHE_REQ_FLUSH) {
      wr_id_t id = (wr_id_t) {.detail = {
        .type = WR_ID_CACHE_FLUSH, 
        .cache_or_channel = cache,
        .slot = slot
      }};
      swr.wr_id = id.ser;
    }
    swr.next = NULL;

    swr.send_flags = 0;
#if SEND_CMPL
    swr.send_flags |= IBV_SEND_SIGNALED;
#endif
#if SEND_INLINE
    if (cache_get_field(cache,linesize) < 512)
        swr.send_flags |= IBV_SEND_INLINE;
#endif
    int ret = ibv_post_send(qp, &swr, &bad_wr);

#ifndef NDEBUG
    if (unlikely(ret) != 0) {
        fprintf(stderr, "failed in post send\n");
        exit(1);
    }
#else
    UNUSED(ret);
#endif

    // need reply?
    if (type == CACHE_REQ_READ || type == CACHE_REQ_EVICT) {
        r_sge.addr = (uint64_t) (cache_get_line(cache,slot));
        r_sge.length = cache_get_field(cache,linesize);
        r_sge.lkey = rmr->lkey;

        rwr.num_sge = 1;
        wr_id_t id = (wr_id_t) {.detail = {
          .type = WR_ID_CACHE_RECV, 
          .cache_or_channel = cache,
          .slot = slot
        }};
        rwr.wr_id = id.ser;
        rwr.sg_list = &r_sge;
        rwr.next = NULL;

        while (req_nout >= REQ_INFLIGHT) {
          _cq_poll();
        }
        req_nout ++;

        ret = ibv_post_recv(qp, &rwr, &bad_rwr);
#ifndef NDEBUG
        if (unlikely(ret) != 0) {
            fprintf(stderr, "failed in post send\n");
            exit(1);
        }
#else
        UNUSED(ret);
#endif
    }
}

typedef struct channel_wr {
  uint64_t disagg_r_vaddr;
  uint16_t ele_id;
  uint16_t num;
} channel_wr_t;

// support sge read
static inline void side_channel_request(
            uint8_t channel, int type,
            channel_wr_t read_wr, channel_wr_t write_wr) {
  struct ibv_sge s_sge[2], r_sge;
  struct ibv_send_wr swr, *bad_wr;
  struct ibv_recv_wr rwr, *bad_rwr;

  while (req_nout >= REQ_INFLIGHT) {
    _cq_poll();
  }

  /* Fill the buf */
  unsigned cur = req_head;
  req_head = (req_head + 1) & (REQ_INFLIGHT - 1);
  req_nout ++;

  // printf("Channel req: read %lu - %u, write %lu - %u, type %d\n", read_wr.disagg_r_vaddr, read_wr.num, write_wr.disagg_r_vaddr, write_wr.num, type);

  req_buf[cur].op_code = type;
  if (type == SIDE_READ || type == SIDE_EVICT) {
    req_buf[cur].side_r_header.raddr = read_wr.disagg_r_vaddr;
    req_buf[cur].side_r_header.rsize = read_wr.num * channel_get_field(channel,size_each);
  }
  if (type == SIDE_WRITE || type == SIDE_EVICT) {
    req_buf[cur].side_r_header.waddr = write_wr.disagg_r_vaddr;
    req_buf[cur].side_r_header.wsize = write_wr.num * channel_get_field(channel,size_each);
  }
  req_buf[cur].assem_id = channel_get_field(channel,assem_id);
  dprintf("Channel req: read %lu - %u, write %lu - %u, type %d", read_wr.disagg_r_vaddr, req_buf[cur].side_r_header.rsize, write_wr.disagg_r_vaddr, write_wr.num, type);
  /* Send Packets */
  s_sge[0].addr = (uint64_t)(req_buf + cur);
  s_sge[0].length = sizeof(RPC_rr_t);
  s_sge[0].lkey = smr->lkey;

  // sge 1 for accessing data to-write
  if (type != SIDE_READ) {
    s_sge[1].addr = (uint64_t)(channel_get_data(channel,write_wr.ele_id));
    s_sge[1].length = req_buf[cur].side_r_header.wsize;
    s_sge[1].lkey = rmr->lkey;
  }

  swr.num_sge = req_buf[cur].op_code == SIDE_READ ? 1 : 2;
  swr.sg_list = &s_sge[0];
  swr.opcode = IBV_WR_SEND;

  swr.wr_id = 0;
  if (type == SIDE_WRITE) {
    wr_id_t id = (wr_id_t) {.detail = {
      .type = WR_ID_CHANNEL_FLUSH, 
      .cache_or_channel = channel, 
      .slot = write_wr.ele_id / channel_get_field(channel,batch)
    }};
    swr.wr_id = id.ser;
  }
  swr.next = NULL;

  swr.send_flags = 0;
#if SEND_CMPL
  swr.send_flags |= IBV_SEND_SIGNALED;
#endif
#if SEND_INLINE
  if (req_buf[cur].side_r_header.wsize < 512)
      swr.send_flags |= IBV_SEND_INLINE;
#endif


  int ret = ibv_post_send(qp, &swr, &bad_wr);

#ifndef NDEBUG
  if (unlikely(ret) != 0) {
      fprintf(stderr, "failed in post send\n");
      exit(1);
  }
#else
    UNUSED(ret);
#endif

  if (type == SIDE_READ || type == SIDE_EVICT) {
    r_sge.addr = (uint64_t) (channel_get_data(channel,read_wr.ele_id));
    r_sge.length = read_wr.num * channel_get_field(channel,size_each);
    r_sge.lkey = rmr->lkey;

    rwr.num_sge = 1;
    wr_id_t id = (wr_id_t) {.detail = {
      .type = WR_ID_CHANNEL_RECV, 
      .cache_or_channel = channel, 
      .slot = read_wr.ele_id / channel_get_field(channel,batch)
    }};
    rwr.wr_id = id.ser;
    rwr.sg_list = &r_sge;
    rwr.next = NULL;

    while (req_nout >= REQ_INFLIGHT) {
      _cq_poll();
    }
    req_nout ++;

    dprintf("Channel recv: read %x - %u", r_sge.addr, r_sge.length);
    ret = ibv_post_recv(qp, &rwr, &bad_rwr);
#ifndef NDEBUG
    if (unlikely(ret) != 0) {
        fprintf(stderr, "failed in post send\n");
        exit(1);
    }
#else
    UNUSED(ret);
#endif
  }
}

static inline void rpc_call_post(int function_id, size_t arg_size, size_t ret_size) {
  /* prepare work request */
  struct ibv_sge s_sge[2], r_sge;
  struct ibv_send_wr swr, *bad_wr;
  struct ibv_recv_wr rwr, *bad_rwr;

  dprintf("Calling function id %d", function_id);

  while (req_nout >= REQ_INFLIGHT) {
    _cq_poll();
  }
  /* Fill the buf */
  unsigned cur = req_head;
  req_head = (req_head + 1) & (REQ_INFLIGHT - 1);
  req_nout ++;

  req_buf[cur].op_code = FUNC_CALL_BASE;
  req_buf[cur].call_r_header.arg_size = arg_size;
  req_buf[cur].call_r_header.ret_size = ret_size;
  req_buf[cur].call_r_header.procedure_id = function_id;

  /* Send Packets */
  s_sge[0].addr = (uint64_t)(req_buf + cur);
  s_sge[0].length = sizeof(*req_buf);
  s_sge[0].lkey = smr->lkey;

  /* PUSH function arguments */
  s_sge[1].addr = (uint64_t)(offload_arg_buf);
  s_sge[1].length = arg_size;
  s_sge[1].lkey = smr->lkey;

  swr.num_sge = arg_size ? 2 : 1;
  swr.sg_list = s_sge;
  swr.opcode = IBV_WR_SEND;

  swr.wr_id = 0;
  swr.next = NULL;

  swr.send_flags = 0;
#if SEND_CMPL
  swr.send_flags |= IBV_SEND_SIGNALED;
#endif
#if SEND_INLINE
  swr.send_flags |= IBV_SEND_INLINE;
#endif
  int ret = ibv_post_send(qp, &swr, &bad_wr);

#ifndef NDEBUG
  if (unlikely(ret) != 0) {
    fprintf(stderr, "failed in post send\n");
    exit(1);
  }
#else
  UNUSED(ret);
#endif
  if (ret_size) {
    r_sge.addr = (uint64_t) offload_ret_buf.data;
    r_sge.length = ret_size;
    r_sge.lkey = rmr->lkey;

    rwr.num_sge = 1;
    wr_id_t id = (wr_id_t) {.detail = {
      .type = WR_ID_RPC_RET,
      .slot = function_id
    }};
    rwr.wr_id = id.ser;
    rwr.sg_list = &r_sge;
    rwr.next = NULL;
    ret = ibv_post_recv(qp, &rwr, &bad_rwr);
#ifndef NDEBUG
    if (unlikely(ret) != 0) {
      fprintf(stderr, "failed in post send\n");
      exit(1);
    }
#else
    UNUSED(ret);
#endif
  }
  offload_ret_buf.available = 0;
}



#ifdef __cplusplus
}
#endif
#endif 

