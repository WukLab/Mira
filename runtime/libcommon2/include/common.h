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
#define CQ_NUM_DESC 256

#define RBUF_SIZE (16ULL << 30)
#define MAX_POLL 64

enum {
    TRANS_TYPE_UDP = 0,
    TRANS_TYPE_RC,
    TRANS_TYPE_RC_SERVER,
    TRANS_TYPE_SHM,
    TRANS_TYPE_SHM_SERVER,
    TRANS_TYPE_SHM_EXECUTOR,
};


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

extern char * _rbuf;
extern struct ibv_qp *qp;
extern struct ibv_cq *cq;
extern struct ibv_mr *mr;
extern struct ibv_context *context;
extern struct ibv_mr peermr;

// requests
int init(int type, const char * server_url);
void init_server();
void init_client();

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


#ifdef __cplusplus
}
#endif

#endif
