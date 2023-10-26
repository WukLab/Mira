#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include "common.h"

// as a pure 1-side RDMA server, only need to init memory
int main(int argc, char *argv[]) {
  char* url = getenv("SERVER_URL");
  if (!url) {
      printf("Set SERVER_URL env before running\n");
      exit(1);
  }

  // init the memory
  init(TRANS_TYPE_RC_SERVER, url);

  // reset
  memset(_rbuf, 0, RBUF_SIZE);


  // the infinity loop
  for (;;) ;
}
