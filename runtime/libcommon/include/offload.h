#ifndef __REMOTE_OFFLOAD_H__
#define __REMOTE_OFFLOAD_H__

#ifdef __cplusplus
extern "C" 
{
#endif

#include <stdlib.h>

/* push argument into this buffer
   before calling the next function
 */
extern char * offload_arg_buf;

typedef struct {
  uint8_t available;
  void *data;
} ret_buf_t;

extern ret_buf_t offload_ret_buf;

// size 0 -> no arg / ret
void * call_offloaded_service(int fid, size_t arg_size, size_t ret_size);


#ifdef __cplusplus
}
#endif
#endif
