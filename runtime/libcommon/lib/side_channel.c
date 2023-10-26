#include <stdint.h>
#include <stdlib.h>
#include "side_channel.h"
#include "cache_internal.h"
#include "channel_internal.h"
#include "common.h"
#include "exchanger.h"
#include "helper.h"
#include "cache.h"
#include "app.h"

static char *_base_top = NULL;
static unsigned channel_cnt = 0;

struct channel_internal channels[OPT_NUM_CACHE + CACHE_ID_OFFSET];

void channel_init() {
  _base_top = rbuf + RECV_BUF_SIZE;
}

// no bound checking
// start: idx w.r.t a for loop, guaranteed aligned to batch
// n: size to prefetch, guaranteed n <= batch size
static inline void channel_prefetch(unsigned channel, unsigned start, unsigned n) {
  dprintf("Prefetch channel %u start %u n %u", channel,start,n);
  // // flush whatever is touched
  // for (unsigned i = start; 
  //               i < start + n; 
  //               i += channel_get_field(channel,N_on_line)) {
  //   // invalidate cache entries
  //   cache_flush(
  //     channel_get_field(channel,cache), 
  //     channel_get_field(channel,disagg_vaddr) + i * channel_get_field(channel,ori_unit_size)
  //   );
  // }
  // // TODO: check if divisible
  // if (channel_get_field(channel,N_on_line) < n) {
  //   cache_flush(
  //     channel_get_field(channel,cache), 
  //     channel_get_field(channel,disagg_vaddr) + (start+n-1) * channel_get_field(channel,ori_unit_size)
  //   );
  // }

  // start is batch aligned
  unsigned ele_ring_id = start % channel_get_field(channel,num_slots); 
  unsigned batch_ring_id = ele_ring_id / channel_get_field(channel,batch);

  channel_wr_t rwr, wwr;
  rwr.disagg_r_vaddr = channel_get_field(channel,disagg_vaddr) + 
    channel_get_field(channel,ori_unit_size) * start;
  rwr.ele_id = ele_ring_id;
  rwr.num = n;
  wwr = (channel_wr_t) { 0 };
  int type = SIDE_READ;
  if (channel_get_field(channel,kind) == CHANNEL_STORE && 
      channel_get_status(channel,batch_ring_id) != CHANNEL_SLOT_IDLE) {
    wwr.disagg_r_vaddr = rwr.disagg_r_vaddr - channel_get_field(channel,ori_unit_size) * channel_get_field(channel,num_slots);
    wwr.ele_id = ele_ring_id;
    // previously filled batch must be full
    wwr.num = channel_get_field(channel,batch);
    type = SIDE_EVICT;
  }
  channel_get_status(channel,batch_ring_id) = CHANNEL_SLOT_SYNC;
  dprintf("Channel prefetch %lu %u evict %lu %u batch id %u", rwr.disagg_r_vaddr, rwr.num, wwr.disagg_r_vaddr, wwr.num, batch_ring_id);
  side_channel_request(
    channel, type,
    rwr, wwr
  );
}

unsigned channel_create(
  uint64_t original_start_addr, 
  uint64_t upper_bound, uint64_t ori_unit_size,
  unsigned size_each, unsigned num, unsigned batch, unsigned dist, uint16_t assem_id, int kind) {
  // make life easier
  // compiler gives num = dist + batch
  dist = dist > batch ? ((dist / batch + 1) * batch) : 0;
  num = (num / batch + 1) * batch;
  unsigned channel_id = channel_cnt ++;
  _base_top -= (size_each * num);

  channels[channel_id].buf_base = _base_top;
  channels[channel_id].status = calloc(num/batch, sizeof(char));

  virt_addr_t vaddr = (virt_addr_t) {.ser = original_start_addr};
  // not using real remote addr here
  // might exceed 48 bits
  channels[channel_id].cache = vaddr.cache;
  channels[channel_id].N_on_line = cache_get_field(
    vaddr.cache, linesize) / ori_unit_size;
  channels[channel_id].ori_unit_size = ori_unit_size;

  channels[channel_id].disagg_vaddr = vaddr.addr;
  channels[channel_id].upper_bound = upper_bound;
  channels[channel_id].max_reached = 0;
  channels[channel_id].size_each = size_each;
  channels[channel_id].prefetch_distance = dist;
  channels[channel_id].num_slots = num;
  channels[channel_id].batch = batch;
  channels[channel_id].assem_id = assem_id;
  channels[channel_id].kind = kind;

  if (!dist)
    return channel_id;
  /* prefetch prologue */ 
  if (upper_bound <= batch) {
    channel_prefetch(channel_id, 0, upper_bound);
    return channel_id;
  }

  for (unsigned i = 0; i < dist; i += batch) {
    if (i < upper_bound) {
      int cur_read = MIN(batch, upper_bound - i);
      channel_prefetch(channel_id, i, cur_read);
    }
  }

  return channel_id;
}

// With bound checking,
// only prefetch when i % batch == 0
extern inline void * channel_access(unsigned channel, uint64_t i) {
  // prefetch each batch
  channel_get_field(channel,max_reached) = MAX(channel_get_field(channel,max_reached),i);
  unsigned batch = channel_get_field(channel,batch);
  unsigned distance = channel_get_field(channel,prefetch_distance);
  unsigned ele_ring_id = i % channel_get_field(channel,num_slots); 
  unsigned batch_ring_id = ele_ring_id / batch;
  dprintf("Channel %u access %lu batch %u status %d", channel, i, batch_ring_id, channel_get_status(channel,batch_ring_id));
  if (i % batch == 0 && i + distance < channel_get_field(channel, upper_bound)) {
    int cur_read = MIN(batch, channel_get_field(channel,upper_bound)-distance-i);
    channel_prefetch(channel, i+distance, cur_read);
  }
  if (likely(channel_get_status(channel,batch_ring_id) == CHANNEL_SLOT_READY)) {
    return channel_get_data(channel,ele_ring_id);
  }
  do {
    _cq_poll();
  } while (channel_get_status(channel,batch_ring_id) != CHANNEL_SLOT_READY);

  return channel_get_data(channel,ele_ring_id);
}

void channel_destroy(unsigned channel) {
  // flush modified entry to remote server
  dprintf("Channel kind %d, flushing ?", channel_get_field(channel,kind));
  if (channel_get_field(channel,kind) == CHANNEL_STORE) {
    uint64_t visited = channel_get_field(channel,max_reached);
    uint64_t disagg_base_vaddr = channel_get_field(channel,disagg_vaddr);
    unsigned batch = channel_get_field(channel,batch);
    unsigned num_slots = channel_get_field(channel,num_slots);
    uint64_t ori_unit_size = channel_get_field(channel,ori_unit_size);

    channel_wr_t rwr = {0}; 
    unsigned ele_ring_id = (visited % num_slots) / batch * batch;
    disagg_base_vaddr += (visited - visited % batch) * ori_unit_size;

    channel_wr_t wwr;
    // clear within current batch block
    // size only varies in this block
    wwr.disagg_r_vaddr = disagg_base_vaddr;
    wwr.ele_id = ele_ring_id;
    wwr.num = visited % batch + 1;
    dprintf("Channel write to addr %lu num %d", wwr.disagg_r_vaddr, wwr.num);
    side_channel_request(channel, SIDE_WRITE, rwr, wwr);

    int last_flush_batch = wwr.ele_id / batch;
    channel_get_status(channel,last_flush_batch) = CHANNEL_SLOT_SYNC;

    // clear batches before max visited
    if (num_slots > batch) {
      for (unsigned i = 0; i < num_slots / batch - 1; ++ i) {
        (void)i;
        disagg_base_vaddr -= batch * ori_unit_size;
        ele_ring_id = (ele_ring_id + num_slots - batch) % num_slots;
        wwr.disagg_r_vaddr = disagg_base_vaddr;
        wwr.ele_id = ele_ring_id;
        wwr.num = batch;

        while (channel_get_status(channel,ele_ring_id/batch) == CHANNEL_SLOT_SYNC) {
          // need to consume exceeding prefetch completes
          _cq_poll();
        }
        if (channel_get_status(channel,ele_ring_id/batch) == CHANNEL_SLOT_READY) {
          dprintf("Channel write to addr %lu num %d", wwr.disagg_r_vaddr, wwr.num);
          last_flush_batch = ele_ring_id / batch;
          channel_get_status(channel,ele_ring_id/batch) = CHANNEL_SLOT_SYNC;
          side_channel_request(channel, SIDE_WRITE, rwr, wwr);
        }
      }
    }
    // wait for flush
    // dprintf("last batch flush %d", last_flush_batch);
    do {
      _cq_poll();
    } while (channel_get_status(channel,last_flush_batch) == CHANNEL_SLOT_SYNC);
  }
  free(&channel_get_status(channel,0));
  _base_top += (channel_get_field(channel,size_each) * channel_get_field(channel,num_slots));
  channel_cnt --;
}
