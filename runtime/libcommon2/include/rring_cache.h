#ifndef _RRING_CACHE_H_
#define _RRING_CACHE_H_

#include "common.h"

static struct ibv_wc wc[64];
#define RRING_WRITE_IF (32)

#define RRING_DEBUG(rn) \
    printf(#rn "T %zu S %zu H %zu R %zu tlim %zu\n", \
		    _t_##rn, _s_##rn, _h_##rn, _r_##rn, _tlim_##rn)

// h: outer-block prefetch idx
// t: outer-block access idx
// r: outer-block read polled idx
// s: outer-block write polled idx

// rbase (controlled by remote allocator)
// lbase (can be static) 
// tags: id 
#define rring_init(rn,T,bsize,nblocks,lbase,rbase) \
  const size_t _bsize_##rn = bsize, _bn_##rn = bsize / sizeof(T); \
  const size_t _nblocks_##rn = nblocks; \
  size_t _h_##rn = 0, _t_##rn = 0, _r_##rn = 0, _s_##rn=0; \
  const uint64_t _rbase_##rn = (uint64_t)(rbase); \
  uint64_t _lbase_##rn = (uint64_t)(lbase); \
  size_t _tags_##rn[nblocks] = { 0 }

// loop through outer-blocks
#define rring_outer_loop(rn,T,lim) \
  _h_##rn = _t_##rn = _r_##rn = _s_##rn=0; \
  for (size_t _lim_##rn = (lim), _tlim_##rn = ((lim) + _bn_##rn - 1) / _bn_##rn; \
          _t_##rn < _tlim_##rn; _t_##rn ++)
#define rring_outer_loop_with(rn,lim) \
  _h_##rn = _t_##rn = _r_##rn = _s_##rn=0; \
  size_t _lim_##rn = (lim), _tlim_##rn = ((lim) + _bn_##rn - 1) / _bn_##rn
#define rring_outer_loop_with_post(rn) \
  _t_##rn ++

// calculate innter-block lim
#define rring_inner_preloop(rn,T) \
  size_t _ilim_##rn = _lim_##rn > (_t_##rn + 1) * _bn_##rn ? \
                      _bn_##rn : _lim_##rn - _t_##rn * _bn_##rn; \
  T * _inner_##rn = (T *)(_lbase_##rn + (_t_##rn % _nblocks_##rn) * _bsize_##rn)

// use rring_sync as cq poll logic entry point
#define rring_sync(rn) \
  rring_poll_readonly(&_r_##rn, _t_##rn, _tags_##rn, _nblocks_##rn)

#define rring_sync_writeonly(rn) \
  rring_poll_writeonly(&_s_##rn, _t_##rn)

// loop to lim
#define rring_inner_loop(rn, j) \
  for (size_t j = 0; j < _ilim_##rn ; j++)

#define rring_inner_wb_with(rn) \
    rdma(_lbase_##rn + (_t_##rn % _nblocks_##rn) * _bsize_##rn, _bsize_##rn, \
            _rbase_##rn + (_t_##rn * _bsize_##rn), 0, IBV_WR_RDMA_WRITE)
#define rring_inner_wb(rn) \
    _tags_##rn[_t_##rn % _nblocks_##rn] = _t_##rn / _nblocks_##rn; \
    rdma(_lbase_##rn + (_t_##rn % _nblocks_##rn) * _bsize_##rn, _bsize_##rn, \
            _rbase_##rn + (_t_##rn * _bsize_##rn), _t_##rn, IBV_WR_RDMA_WRITE)

#define rring_prefetch_with(mn,rn,nprefetch) \
    for (;_h_##rn < _t_##rn + nprefetch && _h_##rn < _tlim_##rn; _h_##rn ++) \
        if (_tags_##mn[_h_##rn % _nblocks_##rn] == _h_##rn / _nblocks_##rn) continue; \
        else rdma(_lbase_##rn + (_h_##rn % _nblocks_##rn) * _bsize_##rn, _bsize_##rn, \
                _rbase_##rn + (_h_##rn * _bsize_##rn), 0, IBV_WR_RDMA_READ);
#define rring_prefetch(rn,nprefetch) \
    for (;_h_##rn < _t_##rn + nprefetch && _h_##rn < _tlim_##rn; _h_##rn ++) { \
        if (_tags_##rn[_h_##rn % _nblocks_##rn] == _h_##rn / _nblocks_##rn) continue; \
        else rdma(_lbase_##rn + (_h_##rn % _nblocks_##rn) * _bsize_##rn, _bsize_##rn, \
                _rbase_##rn + (_h_##rn * _bsize_##rn), _h_##rn, IBV_WR_RDMA_READ); \
    }


#define rring_cleanup_writeonly(rn) \
  rring_clean_writeonly(&_r_##rn, _t_##rn)
#define rring_cleanup_with(rn) \
  rring_clean_writeonly(&_r_##rn, _t_##rn)

static inline void rring_poll_readonly(size_t *r, size_t t, size_t *tags, size_t nblocks) {
    if (tags[t % nblocks] == t / nblocks || *r >= t)
        return;

    do {
        int n = ibv_poll_cq(cq, 16, wc);
        for (int i = 0; i < n; i++) {
            if (wc[i].status != 0) {
                printf("ERROR %d, %ld\n", wc[i].status, wc[i].wr_id);
            }
            if (wc[i].wr_id > *r) {
                int id = wc[i].wr_id;
                *r = id;
                tags[id % nblocks] = id / nblocks;
            }
        }
    } while (*r < t);
}

static inline void rring_poll_writeonly(size_t *s, size_t t) {
    if (*s + RRING_WRITE_IF >= t)
        return;

    do {
        int n = ibv_poll_cq(cq, 32, wc);
        for (int i = 0; i < n; i++) {
            if (wc[i].status != 0) {
                printf("ERROR %d, %ld\n", wc[i].status, wc[i].wr_id);
            }
            if (wc[i].wr_id > *s)
                *s = wc[i].wr_id;
        }
    } while (*s + RRING_WRITE_IF < t);
}

static inline void rring_clean_writeonly(size_t *s, size_t t) {
    while (*s + 1 < t) {
        int n = ibv_poll_cq(cq, 32, wc);
        for (int i = 0; i < n; i++) {
#ifdef RRING_DEBUG
            if (wc[i].status != 0) {
                printf("ERROR %d, %ld\n", wc[i].status, wc[i].wr_id);
            }
#endif
            if (wc[i].wr_id > *s)
                *s = wc[i].wr_id;
	}
    }
}

#if 0
static inline void rring_poll(size_t *r, size_t t) {
    if (*r >= t)
        return;

    do {
        int n = ibv_poll_cq(cq, 16, wc);
        for (int i = 0; i < n; i++) {
            // if (wc[i].status != 0) {
            //     printf("ERROR %d, %ld\n", wc[i].status, wc[i].wr_id);
            // }
            if (wc.opcode == IBV_WC_RDMA_READ && wc[i].wr_id > *r)
                *r = wc[i].wr_id;
	    else if (wc.opcode == IBV_WC_RDMA_WRITE && wc[i].wr_id > *s)
                *r = wc[i].wr_id;
        }
    } while (*r < t);
}
#endif

#endif
