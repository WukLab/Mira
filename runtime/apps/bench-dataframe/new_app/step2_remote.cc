#include <vector>
#include <unordered_set>
#include <iostream>
#include <chrono>
#include "internal.h"
#include "cache.hpp"

// total num_eles approx 128 * 1024 * 1024
const size_t s1_nb = 512 * 1024;
const size_t s1_n_block = 32;

// token offset, raddr offset, laddr offset, slots, slot size bytes, id 
using rvid = DirectCache<0,0,0,s1_n_block,s1_nb * sizeof(int),0>;
using rpsg = DirectCache<s1_n_block,(1<<30),(1<<30),s1_n_block,s1_nb * sizeof(int),1>;
using ridx = DirectCache<19*s1_n_block,(2ULL<<30),(2ULL<<30),s1_n_block,s1_nb * sizeof(size_t),19>;

using rvid_R = CacheReq<rvid>;
using rpsg_R = CacheReq<rpsg>;
using ridx_R = CacheReq<ridx>;

template <typename F, typename T>
void get_psg_by_vid (F &sel_func, std::vector<T> &to) {
    const std::vector<size_t> &_indices = *index_col;
    const std::vector<int> &by_col = *vendor_id_col;
    const std::vector<int> &from_col = *psg_cnt_col;
    const size_type         col_s = by_col.size();
    // TODO: measure col_indices size
    // make sure this do not trigger realloc
    // and consider remotelize
    to.reserve(col_s);
    for (size_type i = 0; i < col_s; ++i) {
        size_type id = *ridx_R::get<size_t>((void*)&_indices[i]);
        int by_e = *rvid_R::get<int>((void*)&by_col[i]);
        int from_e = *rpsg_R::get<int>((void*)&from_col[i]);
        if (sel_func (id, by_e)) {
            to.push_back(from_e);
        }
    }
    return;
}

void print_passage_counts_by_vendor_id(int vendor_id)
{
    printf("print_passage_counts_by_vendor_id(vendor_id), vendor_id = %d\n", vendor_id);

    auto sel_vendor_functor = [&](const uint64_t&, const int& vid) -> bool {
        return vid == vendor_id;
    };

    std::vector<int> passage_count_vec;
    get_psg_by_vid(sel_vendor_functor, passage_count_vec);

    size_t s = passage_count_vec.size();
    if (vendor_id == 1) {
        for (size_t i = 0; i < s; i++) 
            step21_passage_count(passage_count_vec[i]);
        step21_count_result();
    } else {
        for (size_t i = 0; i < s; i++) 
            step22_passage_count(passage_count_vec[i]);
        step22_count_result();
    }
    printf("\n");
}

int main()
{
    ext_setup();
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    times[0] = std::chrono::steady_clock::now();
    print_passage_counts_by_vendor_id(1);
    times[1] = std::chrono::steady_clock::now();
    print_passage_counts_by_vendor_id(2);
    times[2] = std::chrono::steady_clock::now();
    printf("Step 2-1: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());
    printf("Step 2-2: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[2] - times[1])
        .count());
}
