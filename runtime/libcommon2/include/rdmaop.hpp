#ifndef _RDMAOP_H_
#define _RDMAOP_H_

#include <infiniband/verbs.h>
#include <stdint.h>

#include "common.h"
#include "queue.h"

#define NUM_RDMA_BATCH_WR (32)
#define NUM_RDMA_BATCH_SGE (32 * 4)

extern struct ibv_send_wr _pwr[NUM_RDMA_BATCH_WR];
extern struct ibv_sge _psge[NUM_RDMA_BATCH_SGE];

#ifdef PTHREAD
#include <pthread.h>
extern pthread_mutex_t polllock;
#endif

static inline void build_rdma_wr(int i, uint64_t wr_id,
        uint64_t laddr, uint64_t raddr, int size, ibv_wr_opcode opcode,
        struct ibv_send_wr *next) {
    auto &sge = _psge[i];
    auto &wr = _pwr[i];

    sge.addr = (uint64_t)_rbuf + laddr;
    sge.length = size;
    sge.lkey = mr->lkey;

    wr.wr_id = wr_id;
    wr.sg_list = &sge;
    wr.num_sge = 1;

    wr.wr.rdma.remote_addr = (uint64_t)(peermr.addr) + raddr;
    wr.wr.rdma.rkey = peermr.rkey;
    wr.opcode = opcode;

    wr.next = next;
    // printf("RDMA Request: [%lx] %lx %s %lx: %d\n", wr.wr_id, sge.addr,
    //         opcode == IBV_WR_RDMA_READ ? "<-" : "->",
    //         wr.wr.rdma.remote_addr, sge.length);
}

#define get_id(wr,i) ((struct _wr_id *)&(wr[i].wr_id))

// need to include all metadata types
// register checking method for different types of cache!
static void inline meta_udpate(uint8_t qid, uint8_t cls, uint16_t seq, uint32_t tag) {
    switch (cls) {
    }
}

// Put check out of loop
// TODO: consider template
// seq: target sequence number
static inline void poll_qid(uint8_t qid, uint16_t seq) {
    struct ibv_wc wc[MAX_POLL];
    // TODO: inflight?
    // test this!
    while ((uint16_t)(qi[qid].rid - seq) > MAX_QUEUE_INFLIGHT) {
        int n = ibv_poll_cq(cq, MAX_POLL, wc);
#ifdef PTHREAD
            pthread_mutex_lock(&polllock);
#endif
        for (int i = 0; i < n; i++) {
            // if (wc[i].status != 0) {
            //     printf("ERROR %d, %lx\n", wc[i].status, wc[i].wr_id);
            //     printf("opcode %d, %u\n", wc[i].opcode, wc[i].byte_len);
            //     printf("raddr %lx\n", peermr.addr);
            //     exit(0);
            // }
            /* if requires an queue update */
            if ((wc[i].wr_id & REQWR_OPT_QUEUE_UPDATE) &&
                uint16_t(get_id(wc,i)->seq - qi[get_id(wc,i)->qid].rid)
                            < MAX_QUEUE_INFLIGHT) {
                qi[get_id(wc,i)->qid].rid = get_id(wc,i)->seq;
            }
#if 0
            /* if requires an meta update */
            if (wc[i].wr_id & REQWR_OPT_META_UPDATE) {
                // we won't do any meta update for now
            }
#endif
        }
#ifdef PTHREAD
            pthread_mutex_unlock(&polllock);
#endif
    }
}

static inline void poll_all() {
    struct ibv_wc wc[MAX_POLL];
    // TODO: inflight?
    // test this!
    while (true) {
        int n = ibv_poll_cq(cq, MAX_POLL, wc);
	    #ifdef PTHREAD
            pthread_mutex_lock(&polllock);
	    #endif
        for (int i = 0; i < n; i++) {
            // if (wc[i].status != 0) {
            //     printf("ERROR %d, %lx\n", wc[i].status, wc[i].wr_id);
            //     printf("opcode %d, %u\n", wc[i].opcode, wc[i].byte_len);
            //     printf("raddr %lx\n", peermr.addr);
            //     exit(0);
            // }
            /* if requires an queue update */
            if ((wc[i].wr_id & REQWR_OPT_QUEUE_UPDATE) &&
                uint16_t(get_id(wc,i)->seq - qi[get_id(wc,i)->qid].rid)
                            < MAX_QUEUE_INFLIGHT) {
                qi[get_id(wc,i)->qid].rid = get_id(wc,i)->seq;
            }
        }
	    #ifdef PTHREAD
            pthread_mutex_unlock(&polllock);
	    #endif
    }
}

static inline void wait_qid(uint8_t qid, uint16_t seq) {
    // while ((uint16_t)(qi[qid].rid - seq) > (uint16_t)MAX_QUEUE_INFLIGHT) ;
    while (true) {
        if (((struct queue_info volatile *)qi)[qid].rid >= seq) break;
    }
}

#endif
