#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include "common.h"
#include "remote_pool.h"
#include "cache.h"
#include "helper.h"
#include "lat_app.h"


int main(int argc, char *argv[]) {
  init_server();

  const int inflights = MAX_POLL / 2;
	struct ibv_wc wc[MAX_POLL];

  unsigned int post_recvs = 0, poll_recvs = 0;
	payload_t* req_fulls = (payload_t*) rbuf;
  payload_t* respond = (payload_t*) sbuf;

  // First, we post multiple requests
  for (int i = 0; i < inflights; i++)
    recv_async(req_fulls + i, sizeof(*req_fulls));
  post_recvs += inflights;

	while (1) {
    // here we do not want to poll by id, just call ibv_xxx
    int n = ibv_poll_cq(cq, MAX_POLL, wc);

    // process the requests
    for (int i = 0; i < n; i++) {
      // not a timeout
      if (wc[i].status == IBV_WC_SUCCESS && wc[i].opcode == IBV_WC_RECV) {
        int idx = (poll_recvs++) % MAX_POLL;
        // dprintf("%d", req_fulls[idx].buf[0]);
        // process request
        // sleep here to change the latency
        respond[idx].buf[0] = req_fulls[idx].buf[0];
        send_async(respond + idx, sizeof(payload_t));
      }
    }
    // fill the recv queue
    while (post_recvs < poll_recvs + inflights) {
      int idx = post_recvs % MAX_POLL;
      recv_async(req_fulls + idx, sizeof(payload_t));
      post_recvs ++;
    }
	}
	return 0;
}