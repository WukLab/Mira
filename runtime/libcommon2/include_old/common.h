#ifndef _COMMON_H_
#define _COMMON_H_

#include <infiniband/verbs.h>

#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>

#ifdef __cplusplus
extern "C" {
#endif

/* send switch */
#define SEND_CMPL 1
#define SEND_INLINE 1

/* run show_gids to get the info */
#define NUM_DEVICES 1
#define DEVICE_NAME "mlx4_0"
#define DEVICE_GID 0
#define PORT_NUM 1

/* size for local buffers */
#define CQ_NUM_DESC 128

#define RBUF_SIZE ((4ULL << 30) + (4ULL << 20))
#define MAX_POLL 64
#define NUM_QUEUES 65536

enum {
    TRANS_TYPE_UDP = 0,
    TRANS_TYPE_RC,
    TRANS_TYPE_RC_SERVER,
    TRANS_TYPE_SHM,
    TRANS_TYPE_SHM_SERVER,
    TRANS_TYPE_SHM_EXECUTOR,
};

struct  __attribute__((__packed__)) _wr_id {
    uint8_t options;
    uint8_t __padding;
    uint16_t qid;
    uint32_t seq;
};
enum {
    REQWR_OPT_QUEUE_UPDATE = 0x1
};

#define get_id(wr,i) = ((struct _wr_id)(wr[i].wr_id))

// descriptors
uint32_t desc[NUM_QUEUES][2];

/* Debug and useful macros */
#ifdef NDEBUG
    #define dprintf(...)
    #define eprintf(...)
#else
    #include <stdio.h>
    #include <stdlib.h>
    #define dprintf(t, args...) \
        fprintf(stderr, "[%s:%s:%d] " t "\n", __FILE__, __func__, __LINE__, ## args)
    #define eprintf(c, t, args...) do { \
            fprintf(stderr, "[%s:%s:%d] " t "\n", __FILE__, __func__, __LINE__, ## args); \
            exit(c); } while(0)
#endif /* NDEBUG */

#define fdprintf(t, args...) \
    fprintf(stderr, "[%s:%d:%s] " t "\n", __FILE__, __LINE__, __func__, ## args)

#define likely(x)      __builtin_expect(!!(x), 1)
#define unlikely(x)    __builtin_expect(!!(x), 0)

/* symbols */

void *_rbuf;
struct ibv_qp *qp;
struct ibv_cq *cq;
struct ibv_mr *mr;
struct ibv_context *context = NULL;
struct ibv_mr peermr;

#define ARG_BUF_LIMIT 4096 // Bytes
#define RPC_RET_LIMIT 4096 // Bytes
#define SGE_ADDR_LIMIT 512 // num

// requests

int init(int type, const char * server_url);

// oblivious init
void init_client();
void init_server();

/*
uint64_t send(void * buf, size_t size);
uint64_t send_async(void * buf, size_t size);
uint64_t send_async_sge(struct ibv_sge *sge, int num_sge);

uint64_t recv(void * buf, size_t size);
uint64_t recv_async(void * buf, size_t size);
*/

void poll(uint64_t wr_id);

// RDMA_info exchange
struct conn_info {
    union ibv_gid gid;
    int port;
    uint32_t local_id;
    uint16_t qp_number;

    int num_mr;
    struct ibv_mr mr[1];
};
struct conn_info * server_exchange_info(const char * server_url, struct ibv_mr *mr);
struct conn_info * client_exchange_info(const char * server_url);

// static inlines
static inline void
rdma(uint64_t buf, size_t size, uint64_t raddr, uint64_t id, enum ibv_wr_opcode opcode) {
    int ret;

    // SGE for request, we use only 1
    struct ibv_sge sge;
    sge.addr = (uint64_t)buf;
    sge.length = size;
    sge.lkey = mr->lkey;

    struct ibv_send_wr wr, *badwr = NULL;

    wr.wr_id = id;
    wr.sg_list = &sge;
    wr.num_sge = 1;

    wr.wr.rdma.remote_addr = (uint64_t)(peermr.addr) + raddr;
    wr.wr.rdma.rkey = peermr.rkey;
    wr.opcode = opcode;

    wr.send_flags = IBV_SEND_SIGNALED;
    wr.next = NULL;
    dprintf("RDMA RADDR %lx %lx SIZE %lu LOCAL %lx ID %ul\n", peermr.addr, raddr, size, buf, id); 

    ret = ibv_post_send(qp, &wr, &badwr);
    if (unlikely(ret != 0)) {
        fprintf(stderr, "RDMA post send error %d\n", ret); 
        exit(-1);
    }
};

static inline uint64_t getCurNs() {
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    uint64_t t = ts.tv_sec*1000*1000*1000 + ts.tv_nsec;
    return t;
}

static inline uint64_t microtime() {
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    uint64_t t = ts.tv_sec*1000*1000 + ts.tv_nsec/1000;
    return t;
}

#ifdef __cplusplus
}
#endif

#endif
