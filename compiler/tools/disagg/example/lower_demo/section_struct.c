#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

typedef struct {
  uint64_t local_base; 
  uint64_t remote_base; 
  uint64_t linesize;
  unsigned sec_id;
  unsigned num_blocks;
} direct_cache_t;

direct_cache_t s0 = { 0, 0, 4096, 0, 16 };
extern void *_rbuf;

void * s0_paddr(uint64_t raddr) {
  // int res = (vaddr / linesize) % slots;
  // return (T*)(_rbuf + buf + off * linesize + vaddr % linesize);
  uint64_t off = (raddr >> 12) & 0xf;
  return &_rbuf[0 + (off << 12) + raddr & 0xfff];
}

int s0_check_dirty_flag(uint64_t);
uint64_t s0_get_tag(uint64_t off);
void rdma(uint64_t local, uint64_t remote, size_t size, int code);

void fetch_if_not_in_s0(uint64_t raddr) {
  uint64_t tag = raddr & (~0xfff);
  uint64_t off = (raddr >> 12) & 0xf;
  uint64_t old_tag = s0_get_tag(off);
  uint64_t laddr = (off << 12);
  if (old_tag == tag)
    return;
  if (s0_check_dirty_flag(off))
    rdma(laddr, s0.remote_base + old_tag, 4096, 1);
  
  rdma(laddr, s0.remote_base + tag, 4096, 0);
}

int main () {
  uint64_t raddr;
  fetch_if_not_in_s0(4096);
  void * laddr = s0_paddr(raddr);
  printf("%d\n", s0.sec_id);
  return 0;
}

