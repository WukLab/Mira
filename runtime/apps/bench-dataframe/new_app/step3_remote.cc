#include <vector>
#include <unordered_set>
#include <iostream>
#include <chrono>
#include <cassert>
#include "internal.h"
#include "simple_time.hpp"
#include "cache.hpp"

// total num_eles approx 128 * 1024 * 1024
const size_t s1_nb = 512 * 1024;
const size_t s1_n_block = 32;

// token offset, raddr offset, laddr offset, slots, slot size bytes, id 
using rvid = DirectCache<0,0,0,s1_n_block,s1_nb * sizeof(int),0>;
using rpick = DirectCache<s1_n_block,(1<<30),(1<<30),s1_n_block,s1_nb * sizeof(SimpleTime),1>;
using rdrop = DirectCache<2*s1_n_block,(2ULL<<30),(2ULL<<30),s1_n_block,s1_nb * sizeof(SimpleTime),2>;
using rpsg = DirectCache<3*s1_n_block,(3ULL<<30),(3ULL<<30),s1_n_block,s1_nb * sizeof(int),3>;
using ridx = DirectCache<19*s1_n_block,(4ULL<<30),(4ULL<<30),s1_n_block,s1_nb * sizeof(size_t),19>;
using rdur = DirectCache<20*s1_n_block,(5ULL<<30),(5ULL<<30),s1_n_block,s1_nb * sizeof(uint64_t),20>;

using rvid_R = CacheReq<rvid>;
using rpick_R = CacheReq<rpick>;
using rdrop_R = CacheReq<rdrop>;
using rpsg_R = CacheReq<rpsg>;

using ridx_R = CacheReq<ridx>;
using rdur_R = CacheReq<rdur>;

template <typename D, typename I = size_t>
class MaxVisitor {
public:
  I index_ = 0;
  D max_ = 0;
  bool is_first = true;

  void pre() {}
  void post() {}
  void operator()(I idx, D dat) {
    // printf("%lu\n", dat);
    if (is_first || dat > max_) {
      max_ = dat;
      index_ = idx;
      is_first = false;
        // printf("update max %lu\n", max_);
    }
  }
  D get_result () const  { return (max_); }
  I get_index () const  { return (index_); }
};

template <typename D, typename I = size_t>
class MinVisitor {
public:
  I index_ = 0;
  D min_ = 0;
  bool is_first = true;

  void pre() {}
  void post() {}
  void operator()(I idx, D dat) {
    if (is_first || dat < min_) {
      min_ = dat;
      index_ = idx;
      is_first = false;
    }
  }
  D get_result () const  { return (min_); }
  I get_index () const  { return (index_); }
};

template <typename D, typename I = size_t>
class MeanVisitor {
public:
  D mean_ = 0;
  size_type cnt_ = 0;

  void pre() { mean_ = 0; cnt_ = 0; }
  void post() {}
  void operator()(I idx, D dat) {
    mean_ += dat;
    cnt_ ++;
  }
  size_type get_count () const  { return (cnt_); }
  D get_sum () const  { return (mean_); }
  D get_result () const  {
    return (mean_ / D(cnt_));
  }
  
};

template<typename T, typename V>
V visit (std::vector<T> &vec, V &visitor)  {

    std::vector<size_t>& indices_ = *index_col;

    const size_t    idx_s = indices_.size();
    const size_t    min_s = std::min<size_t   >(vec.size(), idx_s);
    visitor.pre();
    for (size_t i = 0; i < min_s; ++i) {
        // printf("%lu\n", vec[i]);
        size_t idx_e = *ridx_R::get<size_t>(&indices_[i]);
        uint64_t dur_e = *rdur_R::get<uint64_t>(&vec[i]);
        visitor (idx_e, dur_e);
    }
    visitor.post();
    return (visitor);
}

void prepare_duration();

void calculate_trip_duration()
{
    printf("calculate_trip_duration()\n" );
    prepare_duration();

    std::vector<uint64_t> &duration_vec = *duration_col;
    MaxVisitor<uint64_t> max_visitor;
    MinVisitor<uint64_t> min_visitor;
    MeanVisitor<uint64_t> mean_visitor;

    visit(duration_vec, max_visitor);
    visit(duration_vec, min_visitor);
    visit(duration_vec, mean_visitor);

    printf("Mean duration %lu seconds\n", mean_visitor.get_result());
    printf("Min duration %lu seconds\n", min_visitor.get_result());
    printf("Max duration %lu seconds\n", max_visitor.get_result());
    printf("\n");
}

int main()
{
  ext_setup();
  std::chrono::time_point<std::chrono::steady_clock> times[10];
  times[0] = std::chrono::steady_clock::now();
  calculate_trip_duration();
  times[1] = std::chrono::steady_clock::now();

  printf("Step 3: %ld us\n", std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0]).count());
}
