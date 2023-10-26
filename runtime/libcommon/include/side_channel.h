#ifndef SIDE_CHANNEL_H
#define SIDE_CHANNEL_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdint.h>
#include <stdlib.h>

// max number of channels exit concurrently
#define MAX_NUM_CHANNEL 32

void channel_init();

enum {
  CHANNEL_LOAD = 0,
  CHANNEL_STORE
};

// channel grow downwards
// starting from rbuf + rbuf_size
// the creation and destroy of channel should resemble automatic resource
// otherwise we are in trouble managing the reservation

// the given `original_start_vaddr`
// is the "raw" vaddr from MLIR directly with cache id
unsigned channel_create(
  // app stats
  uint64_t original_start_vaddr, 
  uint64_t upper_bound,
  uint64_t ori_unit_size, // sizeof struct that is originally accessed
  // channel settingsa
  unsigned size_each, 
  unsigned num_slots, 
  unsigned batch, 
  unsigned dist,
  // i for assembler, i+1 for dis
  uint16_t assem_id,
  // TODO: add pure store
  // load / mixed
  int kind);

void * channel_access(unsigned channel, uint64_t i);

void channel_destroy(unsigned channel);

#endif

#ifdef __cplusplus
}
#endif
