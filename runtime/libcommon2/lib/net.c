#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include <infiniband/verbs.h>
#include <nng/nng.h>
#include <nng/protocol/reqrep0/rep.h>
#include <nng/protocol/reqrep0/req.h>

#include "common.h"

static const int size = 1024*1024*64;

static void fatal(const char *func)
{
    int rv = 0;
    fprintf(stderr, "%s: %s\n", func, nng_strerror(rv));
    exit(1);
}

struct conn_info * client_exchange_info(const char * server_url) {
    nng_socket sock;
    int rv;
    size_t send_size, bytes;

    struct conn_info local_info = {
        .port = PORT_NUM,
        .qp_number = qp->qp_num,
        .num_mr = 0,
        .local_id = 0
    };

    if (DEVICE_GID == 0) { // infiniband
        struct ibv_port_attr port_attr;
        ibv_query_port(context, PORT_NUM, &port_attr);
        local_info.local_id = port_attr.lid;
    } else {
        union ibv_gid gids;
        ibv_query_gid(context, PORT_NUM, DEVICE_GID, &gids); 
        local_info.gid = gids;
    }

    struct conn_info *peer_info = NULL;

    printf("connecting to server %s...\n", server_url);
    if ((rv = nng_req0_open(&sock)) < 0) {
        fatal("nn_socket");
    }
    if ((rv = nng_setopt_size(sock, NNG_OPT_RECVMAXSZ, size)) != 0) {
        fatal("nng_setopt_size");
    }

    if ((rv = nng_dial(sock, server_url, NULL, 0)) < 0) {
        fatal("nn_connect");
    }

    // send peerinfo
    send_size = sizeof(local_info);
    if ((rv = nng_send(sock, &local_info, send_size, 0)) < 0) {
        fatal("nn_send");
    }
    if ((rv = nng_recv(sock, &peer_info, &bytes, NNG_FLAG_ALLOC)) < 0) {
        fatal("nn_recv");
    }

    printf("received mr, with bytes %ld, num %d\n", bytes, peer_info->num_mr);

    return peer_info;
}

struct conn_info * server_exchange_info(const char * server_url, struct ibv_mr *mr) {
    nng_socket sock;
    int rv;
    size_t send_size, bytes;

    struct conn_info local_info = {
        .port = PORT_NUM,
        .qp_number = qp->qp_num,
        .num_mr = 1,
        .local_id = 0
    };

    if (DEVICE_GID == 0) { // infiniband
        struct ibv_port_attr port_attr;
        ibv_query_port(context, PORT_NUM, &port_attr);
        local_info.local_id = port_attr.lid;
    } else {
        union ibv_gid gids;
        ibv_query_gid(context, PORT_NUM, DEVICE_GID, &gids); 
        local_info.gid = gids;
    }

    // include buffer on server
    local_info.mr[0] = *mr;

    struct conn_info *peer_info = NULL;

    // create server
    if ((rv = nng_rep0_open(&sock)) < 0) {
        fatal("nn_socket");
    }
    if ((rv = nng_listen(sock, server_url, NULL, 0)) < 0) {
        fatal("nn_bind");
    }

    printf("Listening on %s\n", server_url);
    if ((rv = nng_recv(sock, &peer_info, &bytes, NNG_FLAG_ALLOC)) < 0) {
        fatal("nn_recv");
    }
    send_size = sizeof(local_info);
    if ((rv = nng_send(sock, &local_info, send_size, 0)) < 0) {
        fatal("nn_send");
    }
    printf("send %ld bytes, expect to send %ld bytes \n", send_size, bytes);

    return peer_info;
}

