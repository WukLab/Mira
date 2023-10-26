#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

#include "common.h"
#include "packet.h"

#define RINGBUF_CAP (1024)

struct ringbuf {
    size_t sendp, recvp;
    uint64_t addr[RINGBUF_CAP];
    uint64_t wrid[RINGBUF_CAP];
} recvring;

static inline void _move(void * restrict dst, void * restrict src, size_t n) {
    memcpy(dst, src, n);
}

uint64_t send_async(void *buf, size_t size) {
}

uint64_t send_async_sge(struct ibv_sge *sge, int num_sge) {
}

uint64_t send(void * buf, size_t size) {
}

uint64_t recv_async(void * buf, size_t size) {
}

uint64_t recv(void * buf, size_t size) {
}

int poll(uint64_t wr_id) {
}
