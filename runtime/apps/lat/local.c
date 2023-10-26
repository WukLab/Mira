#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <assert.h>
#include "common.h"
#include "lat_app.h"

static void inline _poll_cq(uint64_t wr_id) {
  if (poll_id >= wr_id)
    return;

  static struct ibv_wc wc[MAX_POLL];

  do {
    int n = ibv_poll_cq(cq, MAX_POLL, wc);
    for (int i = 0; i < n; i++)
      if (wc[i].opcode == IBV_WC_RECV && wc[i].wr_id > poll_id)
        poll_id = wc[i].wr_id;
  } while (poll_id < wr_id);
}

int main(int argc, char *argv[]) {
  init_client();

  printf("Buf bits %d\n#trials %d\nBudget %d\n", 
    __builtin_ctz(BUF_SIZE),
    __builtin_ctz(N_TRIALs),
    BUDGET);

  payload_t* pld = sbuf;
  payload_t* rpld = rbuf;
  uint64_t wid[BUDGET];

  uint64_t start = getCurNs();
  for (int i = 0; i < N_TRIALs; ) {
    int BGT = BUDGET <= N_TRIALs - i ? BUDGET : N_TRIALs - i;
    for (int b = 0; b < BGT; ++ b) {
      int idx = (i+b) % MAX_POLL;
      pld[idx].buf[0] = (i+b) % 128;
      send_async(pld+idx, sizeof(payload_t));
      wid[b] = recv_async(rpld+idx, sizeof(payload_t));
    }

    for (int b = 0; b < BGT; ++ b) {
      int idx = (i+b) % MAX_POLL;
      _poll_cq(wid[b]);
      // dprintf("%d\n", rpld[idx].buf[0]);
      assert(rpld[idx].buf[0] == (i+b) % 128);
    }
    i += BGT;
  }
  uint64_t end = getCurNs();
  printf("%ld ns per rt\n", (end-start)/N_TRIALs);

	return 0;
}