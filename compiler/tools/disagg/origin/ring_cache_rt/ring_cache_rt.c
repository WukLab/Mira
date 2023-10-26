#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>


int dat[1024];

void rdma(uint64_t buf, size_t size, uint64_t raddr, uint64_t id, int opcode) {
  (void) buf;
}

void rring_sync(size_t *r, size_t t) {
  (void) *r;
}

int main (int argc, char **argv) {
  for (int i = 0; i < 1024; ++ i) {
    dat[i] = i;
  }

  size_t _bsize = 128 * sizeof(int);
  size_t _pb = 128;
  const size_t _nblocks = 8;
  // size_t _tags[_nblocks] = {0};
  size_t npre = 8;

  size_t _h = 0, _t = 0, _r = 0, _s = 0;
  uint64_t _lbase = (uint64_t) &dat[0];
  uint64_t _rbase = 4096;

  size_t lim = atoi(argv[1]);
  for (size_t _lim = lim, _tlim = (lim + _pb - 1) / _pb; _t < _tlim; ++ _t) {
    for (;_h < _t + npre && _h < _tlim; ++ _h)
      rdma(_lbase + (_h % _nblocks) * _bsize, _bsize, _rbase + (_h * _bsize), _h, 1);

    size_t _ilim = _lim > (_t + 1) * _pb ? _pb : _lim - _t * _pb;
    int *_inner = (int *) (_lbase + (_t % _nblocks) * _bsize);

    rring_sync(&_r, _t);

    for (size_t j = 0; j < _ilim; ++ j) {
      size_t nth = _t * _pb + j;
      if (dat[nth] != _inner[j]) {
        printf("%lu not aligned: %d %d\n", j, dat[nth], _inner[j]);
        return 0;
      }
      printf("%d\n", _inner[j]);
    }
  }


  return 0;
}