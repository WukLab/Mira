#include <infiniband/verbs.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <sys/mman.h>

#include "common.h"
#include "packet.h"
#include "app.h"

/* global data */
void *sbuf, *rbuf, *_rbuf;
struct ibv_qp *qp;
struct ibv_cq *cq;
struct ibv_mr *smr, *rmr;
struct ibv_context *context = NULL;
struct ibv_mr mr;

uint64_t post_id = 0;
uint64_t poll_id = 0;

int init(int type, const char * server_url) {
    struct ibv_pd *pd;

    int ret;

    int num_devices = NUM_DEVICES;

    struct ibv_device** device_list = ibv_get_device_list(&num_devices);
    for (int i = 0; i < num_devices; i++){
        printf("device %i, %s | %s\n", i, ibv_get_device_name(device_list[i]), DEVICE_NAME);
        if (strcmp(DEVICE_NAME, ibv_get_device_name(device_list[i])) == 0) {
            context = ibv_open_device(device_list[i]);
            break;
        }
    }

    ibv_free_device_list(device_list);

    if (!context) {
        fprintf(stderr, "Couldn't get context for %s\n", DEVICE_NAME);
        exit(1);
    }

    /* 3. Allocate Protection Domain */
    /* Allocate a protection domain to group memory regions (MR) and rings */
    pd = ibv_alloc_pd(context);
    if (!pd) {
        fprintf(stderr, "Couldn't allocate PD\n");
        exit(1);
    }


    /* 4. Create Complition Queue (CQ) */
    cq = ibv_create_cq(context, CQ_NUM_DESC, NULL, NULL, 0);
    if (!cq) {
        fprintf(stderr, "Couldn't create CQ %d\n", errno);
        exit (1);
    }

    /* 5. Initialize QP */
    struct ibv_qp_init_attr qp_init_attr = {
        /* report send completion to cq */
        .send_cq = cq,
        .recv_cq = cq,
        .cap = {
            /* no send ring */
            .max_send_wr = CQ_NUM_DESC / 2,
            .max_send_sge = 2,
            /* maximum number of packets in ring */
            .max_recv_wr = CQ_NUM_DESC / 2,
            .max_recv_sge = 2,
            /* if inline maximum of payload data in the descriptors themselves */
            .max_inline_data = 512,
        },

        .qp_type = type == TRANS_TYPE_UDP ? IBV_QPT_RAW_PACKET : IBV_QPT_RC,
        .sq_sig_all = 0
    };


    /* 6. Create Queue Pair (QP) - Send Ring */
    qp = ibv_create_qp(pd, &qp_init_attr);
    if (!qp) {
        fprintf(stderr, "Couldn't create QP\n");
        exit(1);
    }

    /* 9. Register MR */
    const size_t align = 1024 * 4;
    sbuf = aligned_alloc(align, SEND_BUF_SIZE);
    rbuf = aligned_alloc(align, RECV_BUF_SIZE);
    _rbuf = rbuf;
    // sbuf = mmap(NULL, SEND_BUF_SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    // rbuf = mmap(NULL, RECV_BUF_SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);

    if (!sbuf || !rbuf) {
        fprintf(stderr, "Coudln't allocate memory\n");
        exit(1);
    }

    smr = ibv_reg_mr(pd, sbuf, SEND_BUF_SIZE, IBV_ACCESS_LOCAL_WRITE | IBV_ACCESS_REMOTE_READ | IBV_ACCESS_REMOTE_WRITE);
    rmr = ibv_reg_mr(pd, rbuf, RECV_BUF_SIZE, IBV_ACCESS_LOCAL_WRITE | IBV_ACCESS_REMOTE_READ | IBV_ACCESS_REMOTE_WRITE);
    if (!smr || !rmr) {
        fprintf(stderr, "Couldn't register mr\n");
        exit(1);
    }

    /* exchange QP info */
    struct conn_info * peerinfo;
    if (type == TRANS_TYPE_RC) {
        peerinfo = client_exchange_info(server_url);
        // copy remote mr
        mr = peerinfo->mr[0];
    } else if (type == TRANS_TYPE_RC_SERVER) {
        peerinfo = server_exchange_info(server_url, smr);
    }

    /* 7. Initialize the QP (receive ring) and assign a port */
    struct ibv_qp_attr qp_attr;
    int qp_flags;

    // INIT
    memset(&qp_attr, 0, sizeof(qp_attr));
    qp_flags = IBV_QP_STATE | IBV_QP_PKEY_INDEX | IBV_QP_PORT | IBV_QP_ACCESS_FLAGS;
    qp_attr.qp_state = IBV_QPS_INIT;
    qp_attr.pkey_index = 0;
    qp_attr.port_num = 1;
    qp_attr.qp_access_flags = IBV_ACCESS_LOCAL_WRITE | IBV_ACCESS_REMOTE_READ | IBV_ACCESS_REMOTE_WRITE;

    ret = ibv_modify_qp(qp, &qp_attr, qp_flags);
    if (ret != 0) {
        fprintf(stderr, "failed modify qp to init\n");
        exit(1);
    }

    // INIT->RTR
    memset(&qp_attr, 0, sizeof(qp_attr));
    qp_flags = IBV_QP_STATE | IBV_QP_STATE | IBV_QP_AV | IBV_QP_PATH_MTU | IBV_QP_DEST_QPN | IBV_QP_RQ_PSN | IBV_QP_MAX_DEST_RD_ATOMIC | IBV_QP_MIN_RNR_TIMER;

    qp_attr.qp_state = IBV_QPS_RTR;
    qp_attr.path_mtu = IBV_MTU_1024;
    qp_attr.rq_psn = 0;
    qp_attr.max_dest_rd_atomic = 1;
    qp_attr.min_rnr_timer = 0x12;

    qp_attr.ah_attr.sl = 0;
    qp_attr.ah_attr.src_path_bits = 0;
    qp_attr.ah_attr.port_num = peerinfo->port;

    qp_attr.dest_qp_num = peerinfo->qp_number;
    qp_attr.ah_attr.dlid = peerinfo->local_id;

    if (DEVICE_GID == 0) { // infiniband
        qp_attr.ah_attr.is_global = 0;
    } else {
        qp_attr.ah_attr.is_global = 1;
        qp_attr.ah_attr.grh.sgid_index = DEVICE_GID;
        qp_attr.ah_attr.grh.dgid = peerinfo->gid;
        qp_attr.ah_attr.grh.hop_limit = 0xFF;
        qp_attr.ah_attr.grh.traffic_class = 0;
    }

    ret = ibv_modify_qp(qp, &qp_attr, qp_flags);
    if (ret != 0) {
        fprintf(stderr, "failed modify qp to receive %s\n", strerror(errno));
        exit(1);
    }

    // RTR->RTS
    memset(&qp_attr, 0, sizeof(qp_attr));
    qp_flags = IBV_QP_STATE | IBV_QP_SQ_PSN | IBV_QP_TIMEOUT | IBV_QP_RETRY_CNT | IBV_QP_RNR_RETRY | IBV_QP_MAX_QP_RD_ATOMIC;
    qp_attr.qp_state = IBV_QPS_RTS;

    qp_attr.sq_psn = 0;
    qp_attr.timeout = 16; // See doc
    qp_attr.retry_cnt      = 7;
    qp_attr.rnr_retry      = 7; /* infinite */
    qp_attr.max_rd_atomic  = 1;

    ret = ibv_modify_qp(qp, &qp_attr, qp_flags);
    if (ret != 0) {
        fprintf(stderr, "failed modify qp to send\n");
        exit(1);
    }

    return 0;
}

int steer() {
    /* 13. Create steering rule for recv */
    struct raw_eth_flow_attr {
        struct ibv_flow_attr attr;
        struct ibv_flow_spec_eth spec_eth;
    } __attribute__((packed)) flow_attr = {
        .attr = {
            .comp_mask = 0,
            .type = IBV_FLOW_ATTR_NORMAL,
            .size = sizeof(flow_attr),
            .priority = 0,
            .num_of_specs = 1,
            .port = PORT_NUM,
            .flags = 0,
        },
        .spec_eth = {
            .type   = IBV_FLOW_SPEC_ETH,
            .size   = sizeof(struct ibv_flow_spec_eth),
            .val = {
                .dst_mac = { DST_MAC },
                .src_mac = { SRC_MAC },
                .ether_type = 0,
                .vlan_tag = 0,
            },
            .mask = {
                .dst_mac = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF},
                .src_mac = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF},
                .ether_type = 0,
                .vlan_tag = 0,
            }
        }

    };

    struct ibv_flow *eth_flow;
    eth_flow = ibv_create_flow(qp, &flow_attr.attr);

    if (!eth_flow) {
        fprintf(stderr, "Couldn't attach steering flow\n");
        exit(1);
    }
    return 0;
}

int steer_udp(uint16_t steer_port, uint16_t src_port) {

    uint16_t dst_prt_hi = (steer_port >> 8) & 0x00FF;
    uint16_t dst_prt_lo = (steer_port << 8) & 0xFF00;


    uint16_t src_prt_hi = (src_port >> 8) & 0x00FF;
    uint16_t src_prt_lo = (src_port << 8) & 0xFF00;

    uint16_t dst_port_big_end = dst_prt_hi | dst_prt_lo;
    uint16_t src_port_big_end = src_prt_hi | src_prt_lo;
    // printf("Steering Rule: dst port  %d, %04x\n", steer_port, dst_port_big_end);


    /* 13. Create steering rule for recv */
    struct raw_eth_flow_attr_udp {
        struct ibv_flow_attr attr;
        struct ibv_flow_spec_eth spec_eth;
        struct ibv_flow_spec_tcp_udp spec_udp;
    } __attribute__((packed)) flow_attr = {
        .attr = {
            .comp_mask = 0,
            .type = IBV_FLOW_ATTR_NORMAL,
            .size = sizeof(flow_attr),
            .priority = 0,
            .num_of_specs = 2,
            .port = PORT_NUM,
            .flags = 0,
        },
        .spec_eth = {
            .type   = IBV_FLOW_SPEC_ETH,
            .size   = sizeof(struct ibv_flow_spec_eth),
            .val = {
                .dst_mac = { SRC_MAC },
                .src_mac = {0},
                .ether_type = 0,
                .vlan_tag = 0,
            },
            .mask = {
                .dst_mac = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF},
                .src_mac = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
                .ether_type = 0,
                .vlan_tag = 0,
            }
        },
        .spec_udp = {
            .type   = IBV_FLOW_SPEC_UDP,
            .size   = sizeof(struct ibv_flow_spec_tcp_udp),
            .val = {
                .dst_port = dst_port_big_end,
                .src_port = 0
            },
            .mask = {
                .dst_port = 0xFFFF,
                .src_port = 0
            }
        }

    };

    struct ibv_flow *eth_flow;
    eth_flow = ibv_create_flow(qp, &flow_attr.attr);

    if (!eth_flow) {
        fprintf(stderr, "Couldn't attach steering flow %s\n", strerror(errno));

        exit(1);
    }
    return 0;
}

static inline uint64_t _send_async_impl(struct ibv_sge *sge, int num_sge) {
    int ret;
    struct ibv_send_wr wr, *bad_wr;

    wr.num_sge = num_sge;
    wr.sg_list = sge;
    wr.next = NULL;
    wr.opcode = IBV_WR_SEND;

    /* inline ? */
    wr.send_flags = 0;
    wr.wr_id = ++post_id;

#if SEND_INLINE
    size_t size = 0;
    for (int i = 0; i < num_sge; i++) size += sge[i].length;
    if (likely(size < 512))
        wr.send_flags |= IBV_SEND_INLINE;
#endif

#if SEND_CMPL
    wr.send_flags |= IBV_SEND_SIGNALED;
#endif

    /* push descriptor to hardware */

    ret = ibv_post_send(qp, &wr, &bad_wr);
    if (unlikely(ret != 0)) {
        fprintf(stderr, "failed in post send %d:%s\n", ret, strerror(errno));
        exit(1);
    }
    return post_id;
}

uint64_t send_async(void *buf, size_t size) {
    int ret;
    struct ibv_sge sge;

    /* Send Packets */
    /* scatter/gather entry describes location and size of data to send*/
    sge.addr = (uint64_t)buf;
    sge.length = size;
    sge.lkey = smr->lkey;

    return _send_async_impl(&sge, 1);
}

uint64_t send_async_sge(struct ibv_sge *sge, int num_sge) {
    return _send_async_impl(sge, num_sge);
}

uint64_t send(void * buf, size_t size) {
    int n, ret;
    struct ibv_sge sge;
    struct ibv_send_wr wr, *bad_wr;
    struct ibv_wc wc;

    /* Send Packets */
    /* scatter/gather entry describes location and size of data to send*/
    sge.addr = (uint64_t)buf;
    sge.length = size;
    sge.lkey = smr->lkey;

    wr.num_sge = 1;
    wr.sg_list = &sge;
    wr.next = NULL;
    wr.opcode = IBV_WR_SEND;
    wr.send_flags = 0;

#if SEND_INLINE
    if (likely(size < 512))
        wr.send_flags |= IBV_SEND_INLINE;
#endif

    wr.wr_id = 0;
#if SEND_CMPL
    wr.send_flags |= IBV_SEND_SIGNALED;
#endif

    /* push descriptor to hardware */
    ret = ibv_post_send(qp, &wr, &bad_wr);
    if (ret != 0) {
        fprintf(stderr, "failed in post send\n");
        exit(1);
    }

    /* poll for completion after half ring is posted */
#if SEND_CMPL
    while (1) {
        n = ibv_poll_cq(cq, 1, &wc);
        if (n > 0) {
            //printf("completed message %ld\n", wc.wr_id);
            break;
        }
    }
#endif

    return 0;
}

uint64_t recv(void * buf, size_t size) {
    int n, ret;
    struct ibv_sge sge;
    struct ibv_recv_wr wr, *bad_wr;
    struct ibv_wc wc;

    sge.addr = (uintptr_t)buf;
    sge.length = size;
    sge.lkey = rmr->lkey;
     
    wr.num_sge = 1;
    wr.sg_list = &sge;
    wr.next = NULL;

    ret = ibv_post_recv(qp, &wr, &bad_wr);
    if (ret != 0) {
        fprintf(stderr, "failed in post recv, code: %d\n", ret);
        exit(1);
    }

    while ((n = ibv_poll_cq(cq, 1, &wc)) == 0);
    return 0;
}

uint64_t recv_async(void * buf, size_t size) {
    int ret;
    struct ibv_sge sge;
    struct ibv_recv_wr *bad_wr, wr;

    sge.addr = (uintptr_t)buf;
    sge.length = size;
    sge.lkey = rmr->lkey;
     
    wr.num_sge = 1;
    wr.sg_list = &sge;
    wr.next = NULL;

    wr.wr_id = ++post_id;
    ret = ibv_post_recv(qp, &wr, &bad_wr);
    if (unlikely(ret) != 0) {
        fprintf(stderr, "failed in post recv\n");
        exit(1);
    }
    return post_id;
}

int poll(uint64_t wr_id) {
    if (poll_id >= wr_id) {
        return 0;
    }

    static struct ibv_wc wc[MAX_POLL];

    do {
        int n = ibv_poll_cq(cq, MAX_POLL, wc);
        for (int i = 0; i < n; i++)
            if (wc[i].wr_id > poll_id)
                poll_id = wc[i].wr_id;
    } while (poll_id < wr_id);

    return 0;
}

int poll_opcode(uint64_t wr_id, int code) {
    if (poll_id >= post_id)
        return 0;
    static struct ibv_wc wc[MAX_POLL];
    uint64_t polled_wr_id = 0;
    do {
        int n = ibv_poll_cq(cq, MAX_POLL, wc);
        for (int i = 0; i < n; ++ i) {
            poll_id ++;
            if (wc[i].opcode == code && polled_wr_id < wc[i].wr_id) 
                polled_wr_id = wc[i].wr_id;
        }
    } while (poll_id < post_id && polled_wr_id < wr_id);
    return 0;
}

int poll_cq(struct ibv_cq *cq, int num_entries, struct ibv_wc *wc) {
    return ibv_poll_cq(cq, num_entries, wc);
}

void rdma_req(uint64_t buf, size_t size, uint64_t raddr, uint64_t id, enum ibv_wr_opcode opcode) {
    int ret;

    // SGE for request, we use only 1
    struct ibv_sge sge;
    sge.addr = (uint64_t)buf;
    sge.length = size;
    sge.lkey = rmr->lkey;

    struct ibv_send_wr wr, *badwr = NULL;

    wr.wr_id = id;
    wr.sg_list = &sge;
    wr.num_sge = 1;

    wr.wr.rdma.remote_addr = (uint64_t)(mr.addr) + raddr;
    wr.wr.rdma.rkey = mr.rkey;
    wr.opcode = opcode;

    wr.send_flags = IBV_SEND_SIGNALED;
    wr.next = NULL;
    // printf("RDMA RADDR %lx %lx SIZE %lu LOCAL %lx ID %ul\n", mr.addr, raddr, size, buf, id); 

    ret = ibv_post_send(qp, &wr, &badwr);
    if (unlikely(ret != 0)) {
        fprintf(stderr, "RDMA post send error %d\n", ret); 
        exit(-1);
    }
}