#include "remote_pool.h"
#include <vector>
#include <cstring>

struct __v {
    size_t *p1, *p2, *p3;
};

static size_t sum(std::vector<size_t> &vec) {
    size_t sum = 0;
    size_t n = vec.size();
    for (size_t i = 0; i < n; ++ i)
        sum += vec[i];
    return sum;
}


extern "C" void __service_sum(void *arg, void *ret) {
    __v *v = (__v *)arg;
    v->p1 = (size_t *)deref_disagg_vaddr((uint64_t)(v->p1));
    v->p2 = (size_t *)deref_disagg_vaddr((uint64_t)(v->p2));
    v->p3 = (size_t *)deref_disagg_vaddr((uint64_t)(v->p3));
    size_t r = sum(*((std::vector<size_t> *)v));
    memcpy(ret, &r, sizeof(size_t));
}
