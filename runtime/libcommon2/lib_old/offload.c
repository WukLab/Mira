#include "exchanger.h"
#include "offload.h"
#include <stdint.h>

char * offload_arg_buf = NULL;
ret_buf_t offload_ret_buf = { 0, NULL };

void * call_offloaded_service(int fid, size_t arg_size, size_t ret_size) {
  dprintf("calling %d %lu %lu\n", fid, arg_size, ret_size);
  rpc_call_post(fid, arg_size, ret_size);
  if (ret_size) {
    do {
      _cq_poll();
    } while (!offload_ret_buf.available);
  }
  return offload_ret_buf.data;
}