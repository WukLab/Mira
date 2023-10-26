#include <infiniband/verbs.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

#include "common.h"
#include "packet.h"

static inline uint64_t _send_async_impl(struct ibv_sge *sge, int num_sge) {
	int ret;
	struct ibv_send_wr wr, *bad_wr;

	wr.num_sge = num_sge;
	wr.sg_list = sge;
	wr.next = NULL;
	wr.opcode = IBV_WR_SEND;

	/* inline ? */
	wr.send_flags = 0;
	wr.wr_id = 0;

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
		fprintf(stderr, "failed in post recv\n");
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

