#include <infiniband/verbs.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <sys/mman.h>

#include "common.h"

/* global data */
void *_rbuf;
struct ibv_qp *qp;
struct ibv_cq *cq;
struct ibv_mr *mr;
struct ibv_context *context = NULL;
struct ibv_mr peermr;

/* a list of ids should be created to track each queue */

// funcitons
int init(int type, const char * server_url) {
    struct ibv_pd *pd;
    int ret;
    int num_devices = NUM_DEVICES;

    // find ib device
    struct ibv_device** device_list = ibv_get_device_list(&num_devices);
    for (int i = 0; i < num_devices; i++){
        dprintf("device %i, %s | %s\n", i, ibv_get_device_name(device_list[i]), DEVICE_NAME);
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
    _rbuf = aligned_alloc(align, RBUF_SIZE);
    // _rbuf = mmap(NULL, SEND_BUF_SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);

    if (_rbuf) {
        fprintf(stderr, "Coudln't allocate memory\n");
        exit(1);
    }

    mr = ibv_reg_mr(pd, _rbuf, RBUF_SIZE, IBV_ACCESS_LOCAL_WRITE | IBV_ACCESS_REMOTE_READ | IBV_ACCESS_REMOTE_WRITE);
    if (mr) {
        fprintf(stderr, "Couldn't register mr\n");
        exit(1);
    }

    /* exchange QP info */
    struct conn_info * peerinfo;
    if (type == TRANS_TYPE_RC) {
        peerinfo = client_exchange_info(server_url);
        // copy remote mr
        peermr = peerinfo->mr[0];
    } else if (type == TRANS_TYPE_RC_SERVER) {
        peerinfo = server_exchange_info(server_url, mr);
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

