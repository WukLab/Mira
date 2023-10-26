#include <infiniband/verbs.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/mman.h>

#include "common.h"
#include "packet.h"
#include "ringbuf.h"

/* global data */
void *sbuf, *rbuf;
struct ibv_qp *qp;
struct ibv_cq *cq;
struct ibv_mr *smr, *rmr;
struct ibv_context *context = NULL;

uint64_t post_id = 0;
uint64_t poll_id = 0;

struct shared_data *ldata, *rdata;

int init(int type, const char * key_str) {

    int shmid;
	char *shmaddr;

    int shmkey = strtol(key_str, NULL, 10);
    if (shmkey == 0) {
        perror("Key is 0 or key error");
		exit(1);
    }

	shmid = shmget(shmkey, shmsize,
            // SHM_HUGETLB | SHM_HUGE_1GB | IPC_CREAT | SHM_R | SHM_W);
            // SHM_HUGETLB | IPC_CREAT | SHM_R | SHM_W);
            IPC_CREAT | SHM_R | SHM_W);
	if (shmid < 0) {
		perror("shmget");
		exit(1);
	}

    shmaddr = shmat(shmid, NULL, 0);
    if (shmaddr == (char *)-1) {
        perror("Shared memory attach failure");
        shmctl(shmid, IPC_RMID, NULL);
        exit(2);
    }

    // assign pointers, compatable with rc
    if (type == TRANS_TYPE_SHM || type == TRANS_TYPE_RC) {
        ldata = (struct shared_data *)shmaddr;
        rdata = (struct shared_data *)shmaddr + 1;
    } else if (type == TRANS_TYPE_SHM_SERVER || type == TRANS_TYPE_RC_SERVER) {
        rdata = (struct shared_data *)shmaddr;
        ldata = (struct shared_data *)shmaddr + 1;
    } else if (type == TRANS_TYPE_SHM_EXECUTOR) {
        // same as client setup
        ldata = (struct shared_data *)shmaddr;
        rdata = (struct shared_data *)shmaddr + 1;
    }

    // init local buf only
    if (type != TRANS_TYPE_SHM_EXECUTOR) {
        // TODO: atomic set of pointers
        // see https://en.cppreference.com/w/c/atomic/atomic_is_lock_free
        memset(ldata->ringbufs, 0, 2*sizeof(struct ringbuf));

        sbuf = (void *)ldata->sbuf;
        rbuf = (void *)ldata->rbuf;
    }
    return 0;
}

int steer() {
    perror("Not Implemeted in shm");
    return -1;
}

int steer_udp(uint16_t steer_port, uint16_t src_port) {
    perror("Not Implemeted in shm");
    return -1;
}

static inline int _execute_directed(
        struct ringbuf *s, struct shared_data * sbase,
        struct ringbuf *r, struct shared_data * rbase) {
    unsigned send_idx = s->executep;
    unsigned recv_idx = r->executep;
    /*
    printf("execute p: %d %d, %ul <- %ul id: %d %d\n",
            send_idx, recv_idx,
            r->addr[recv_idx], s->addr[send_idx], 
            s->wrid[send_idx], r->wrid[recv_idx]
          );
    */
    if (unlikely(r->size[recv_idx] < s->size[send_idx]))
        return -1;
    memcpy(
        (char *)rbase + r->addr[recv_idx],
        (char *)sbase + s->addr[send_idx],
        s->size[send_idx]);
    ringbuf_execute(s, 1);
    ringbuf_execute(r, 1);
    return 0;
}

void execute_transfer() {
    // TODO: error handling
    while (1) {
        /*
        printf("check SEND %d/%d/%d %d/%d/%d RECV %d/%d/%d %d/%d/%d\n",
                data_sq(ldata)->commitp, data_sq(ldata)->executep, data_sq(ldata)->ackp,
                data_rq(ldata)->commitp, data_rq(ldata)->executep, data_rq(ldata)->ackp,
                data_sq(rdata)->commitp, data_sq(rdata)->executep, data_sq(rdata)->ackp,
                data_rq(rdata)->commitp, data_rq(rdata)->executep, data_rq(rdata)->ackp);
        */
        if (ringbuf_avaliable(data_sq(ldata)) && ringbuf_avaliable(data_rq(rdata)))
            _execute_directed(data_sq(ldata), ldata, data_rq(rdata), rdata);
        if (ringbuf_avaliable(data_sq(rdata)) && ringbuf_avaliable(data_rq(ldata)))
            _execute_directed(data_sq(rdata), rdata, data_rq(ldata), ldata);
    }
}

uint64_t send_async(void *buf, size_t size) {
    uint64_t id = 0;
    uint64_t offset = (char *)buf - (char *)ldata;
    ringbuf_commit(&ldata->ringbufs[0], offset, id, size);
    return id;
}

uint64_t send_async_sge(struct ibv_sge *sge, int num_sge) {
    perror("Not Implemeted in Local");
    return 0;
}

uint64_t send(void * buf, size_t size) {
    uint64_t id = 0;
    uint64_t offset = (char *)buf - (char *)ldata;
    ringbuf_commit(&ldata->ringbufs[0], offset, id, size);
    // TODO: better one sided execution
    struct ibv_wc wc;
    while (!poll_cq(NULL, 1, &wc)) ;
    return id;
}

uint64_t recv(void * buf, size_t size) {
    uint64_t id = ++post_id;
    uint64_t offset = (char *)buf - (char *)ldata;
    ringbuf_commit(data_rq(ldata), offset, id, size);
    // TODO: better one sided execution
    poll(id);
    return id;
}

uint64_t recv_async(void * buf, size_t size) {
    uint64_t id = ++post_id;
    uint64_t offset = (char *)buf - (char *)ldata;
    ringbuf_commit(data_rq(ldata), offset, id, size);
    return id;
}

int poll(uint64_t wr_id) {

    while (poll_id < wr_id) {
        struct ringbuf *buf;
        for (int i = 0; i < 2; i++) {
            buf = &ldata->ringbufs[i];
            if (buf->ackp != buf->executep) {
                buf->ackp = buf->executep;
                unsigned lastexec = ringbuf_ptrprev(buf,executep);
                uint64_t id = buf->wrid[lastexec];
                if (id > poll_id) poll_id = id;
            }
        }
    };

    return 0;
}

int poll_cq(struct ibv_cq *cq, int n, struct ibv_wc *wc) {
    struct ringbuf *buf;
    int cnt = 0;
    for (int i = 0; i < 2; i++) {
        buf = &ldata->ringbufs[i];
        for (; buf->ackp != buf->executep && cnt < n;
               buf->ackp = (buf->ackp+1) % RINGBUF_CAP) {
            wc[cnt].wr_id = buf->wrid[buf->ackp];
            wc[cnt].status = 0;
            cnt++;
        }
    }

    return cnt;
}

