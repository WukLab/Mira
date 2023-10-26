#include <vector>
#include <unordered_set>
#include <iostream>
#include <chrono>
#include <cassert>
#include "internal.h"
#include "simple_time.hpp"

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

template<typename V1, typename V2, typename V3>
void visit (V1 &v1, V2 &v2, V3 &v3)  {
    auto &vec = *duration_col;
    std::vector<size_t>& indices_ = *index_col;

    const size_t    idx_s = indices_.size();
    const size_t    min_s = std::min<size_t   >(vec.size(), idx_s);
    v1.pre();
    v2.pre();
    v3.pre();
    for (size_t i = 0; i < min_s; ++i) {
        size_t ie = indices_[i];
        uint64_t de = vec[i];
        v1 (ie, de);
    }
    for (size_t i = 0; i < min_s; ++i) {
        size_t ie = indices_[i];
        uint64_t de = vec[i];
        v2 (ie, de);
    }
    for (size_t i = 0; i < min_s; ++i) {
        size_t ie = indices_[i];
        uint64_t de = vec[i];
        v3 (ie, de);
    }
    v1.post();
    v2.post();
    v3.post();
}

void prepare_duration();

void calculate_trip_duration() {
    printf("calculate_trip_duration()\n" );
    prepare_duration();

    MaxVisitor<uint64_t> max_visitor;
    MinVisitor<uint64_t> min_visitor;
    MeanVisitor<uint64_t> mean_visitor;

    visit(max_visitor, min_visitor, mean_visitor);

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
