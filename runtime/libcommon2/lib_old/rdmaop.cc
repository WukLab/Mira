#include <infiniband/verbs.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <sys/mman.h>

#include "common.h"
#include "queue.h"

/*
 * RDMA related functions
 *
 * Here we explain the structure of wrid
 * | options : 8 | queue_id : 24 | seq : 32 |
 */

// Send and recv queues
struct queue_info qi[NUM_QUEUES];
uint32_t tags[NUM_QUEUES][MAX_CACHE_SIZE];

// need to include all metadata types
// register checking method for different types of cache!
static void inline meta_udpate(uint8_t qid, uint8_t cls, uint16_t seq, uint32_t tag) {
    switch (cls) {
        case REQWR_CLS_SEQ_MOD_META:
            tags[qid][seq % qi[qid].meta] = seq / qi[qid].meta;
            break;
        case REQWR_CLS_TAG_MOD_META:
            tags[qid][tag % qi[qid].meta] = tag / qi[qid].meta;
            break;
        case REQWR_CLS_TAG_GROUP:
            break;
        case REQWR_CLS_TAG:
            tags[qid][tag] = tag;
            break;
    }
}

// Put check out of loop
// TODO: consider template
void poll(uint16_t qid, uint16_t seq) {
    static struct ibv_wc wc[MAX_POLL];
    // TODO: inflight?
    // test this!
    while (seq - qi[qid].rid <= MAX_QUEUE_INFLIGHT) {
        int n = ibv_poll_cq(cq, MAX_POLL, wc);
        for (int i = 0; i < n; i++) {
            /* if requires an queue update */
            if (wc[i].wr_id & REQ_WR_OPT_QUEUE_UPDATE &&
                    get_id(wc,i).seq > desc[get_id(wc,i).qid].rid) {
                desc[get_id(wc,i).qid].rid = get_id(wc,i).seq;
            }
            /* if requires an meta update */
            if (wc[i].wr_id & REQ_WR_OPT_META_UPDATE) {
                uint8_t _qid = get_id(wc,i).qid;
                uint16_t _tag = get_id(wc,i).tag;
                tags[_qid][_tag % qi[_qid].meta] = _tag / qi[_qid].meta;
            }
        }
    }
}

