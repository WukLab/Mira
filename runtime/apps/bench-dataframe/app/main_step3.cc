#include <vector>
#include <chrono>
#include "internal.h"
#include "rvector.h"
#include "simple_time.hpp"
#include <cassert>
#include "cache.h"
#include "common.h"


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

    std::vector<size_t>& indices_ = get_index();

    const size_t    idx_s = indices_.size();
    const size_t    min_s = std::min<size_t   >(vec.size(), idx_s);

    // visitor.pre();
    // for (size_t i = 0; i < min_s; ++i) {
    //     // printf("%lu\n", vec[i]);
    //     visitor (indices_[i], vec[i]);
    // }
    // visitor.post();

    uint64_t idx_base = remoteAddr((void *)&indices_[0]);
    uint64_t vec_base = remoteAddr((void *)&vec[0]);

    rring_init(rids, size_t, (2 << 20), 16, (size_t) ((char*)rbuf + (8<<20)), idx_base);
    rring_init(rvec, uint64_t, (2 << 20), 16, (size_t) ((char*)rbuf + (72<<20)), vec_base);

    visitor.pre();

    rring_outer_loop_with(rvec, min_s);
    rring_outer_loop(rids, size_t, min_s) {
      rring_prefetch_with(rids, rvec, 4);
      rring_prefetch(rids, 4);

      rring_inner_preloop(rvec, uint64_t);
      rring_inner_preloop(rids, size_t);

      rring_sync(rids);
      rring_inner_loop(rids, j) {
          size_t index = _inner_rids[j];
          uint64_t e = _inner_rvec[j];
          visitor (index, e);
      }
      rring_outer_loop_with_post(rvec);
    }

    visitor.post();
    return (visitor);
}

void calculate_trip_duration()
{
    printf("calculate_trip_duration()\n" );

    // sizeof(SimpleTime) 8 bytes
    auto& pickup_time_vec  = get_column<SimpleTime>("tpep_pickup_datetime");
    auto& dropoff_time_vec = get_column<SimpleTime>("tpep_dropoff_datetime");
    assert(pickup_time_vec.size() == dropoff_time_vec.size());

    // Option 2: remotelize this
    std::vector<uint64_t> duration_vec;
    // duration_vec = __disagg_alloc();
    size_t N = pickup_time_vec.size();
    duration_vec.reserve(N);

    // for (uint64_t i = 0; i < N; i++) {
    //     auto pickup_time_second  = pickup_time_vec[i].to_second();
    //     auto dropoff_time_second = dropoff_time_vec[i].to_second();
    //     // can directly change pointers.
    //     if (dropoff_time_second < pickup_time_second)
    //         duration_vec.push_back(0);
    //     else
    //         duration_vec.push_back(dropoff_time_second - pickup_time_second);
    // }

    uint64_t pick_base = remoteAddr((void *)&pickup_time_vec[0]);
    uint64_t drop_base = remoteAddr((void *)&dropoff_time_vec[0]);

    rring_init(rpick, SimpleTime, (2 << 20), 32, (size_t) ((char*)rbuf + (8<<20)), pick_base);
    rring_init(rdrop, SimpleTime, (2 << 20), 32, (size_t) ((char*)rbuf + (72<<20)), drop_base);

    rring_outer_loop_with(rpick, N);
    rring_outer_loop(rdrop, SimpleTime, N) {
        rring_prefetch_with(rdrop, rpick, 4);
        rring_prefetch(rdrop, 4);

        rring_inner_preloop(rpick, SimpleTime);
        rring_inner_preloop(rdrop, SimpleTime);
        rring_sync(rdrop);

        rring_inner_loop(rdrop, j) {
          uint64_t pickup_time_second  = _inner_rpick[j].to_second();
          uint64_t dropoff_time_second = _inner_rdrop[j].to_second();
          if (dropoff_time_second < pickup_time_second)
              duration_vec.push_back(0);
          else
              duration_vec.push_back(dropoff_time_second - pickup_time_second);
        }
        rring_outer_loop_with_post(rpick);
    }

    load_column("duration", std::move(duration_vec));
    // remotelize in load_column

    MaxVisitor<uint64_t> max_visitor;
    MinVisitor<uint64_t> min_visitor;
    MeanVisitor<uint64_t> mean_visitor;

    visit(get_column<uint64_t>("duration"), max_visitor);
    visit(get_column<uint64_t>("duration"), min_visitor);
    visit(get_column<uint64_t>("duration"), mean_visitor);

    printf("Mean duration %lu seconds\n", mean_visitor.get_result());
    printf("Min duration %lu seconds\n", min_visitor.get_result());
    printf("Max duration %lu seconds\n", max_visitor.get_result());
    printf("\n");
}

int main()
{
    init_client();
    cache_init();
    channel_init();

    std::chrono::time_point<std::chrono::steady_clock> times[10];
    void * df  = load_data();
    times[0] = std::chrono::steady_clock::now();
    calculate_trip_duration();
    times[1] = std::chrono::steady_clock::now();

    printf("Step 3: %ld us\n", std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0]).count());
}
