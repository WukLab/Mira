#ifndef _RVECTOR_H_
#define _RVECTOR_H_

#include <vector>
#include <stdint.h>
#include <cstdio>

template <typename T>
struct rvector {
  T * head;
  T * end;
  T * tail;
};

template<typename T>
rvector<T> createFromBase(uint64_t addr, size_t size, size_t cap) {
  rvector<T> rv;
  rv.head = (T *) addr;
  rv.end = rv.head + size;
  rv.tail = rv.head + cap;
  return rv;
}

template <typename T>
void remotelize(std::vector<T> &v, bool write = true) {
}

template <typename T, typename C, typename CR>
void new_remotelize(std::vector<T> &v, bool write = true) {
  rvector<T> * rv = (rvector<T> *) &v;
  size_t s = v.size();
  size_t c = v.capacity();
  T *vaddr = (T*) CR::alloc(sizeof(T) * c);
  if (write) {
    int eles = C::Value::linesize / sizeof(T);
    uint64_t n_blocks = s / eles;
    for (uint64_t j = 0; j < n_blocks; ++ j) {
      T *base = CR::template get_mut<T>(vaddr + j * eles);
      for (int i = 0; i < eles; ++ i) {
        base[i] = rv->head[j * eles + i];
      }
    }
  }
  v.clear();
  v.shrink_to_fit();

  rv->head = vaddr;
  rv->end = rv->head + s;
  rv->tail = rv->head + c;
}


template<typename T>
void dummy_reader(std::vector<T> &local_copy, uint64_t BS, unsigned N_blocks, unsigned prefetch, uint64_t s, uint64_t sbuf_offset) {

}

#endif
