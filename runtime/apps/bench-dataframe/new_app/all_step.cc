#include <vector>
#include <chrono>
#include <cmath>
#include <cassert>
#include <cstdio>
#include "internal.h"
#include "rvector.h"
#include "simple_time.hpp"

//----------------- Step 1 --------------------//
size_t get_vid_unique_values() {
    auto &vec = *vendor_id_col;
    size_t N = vec.size();
    // TODO: disagg this variable
    std::vector<int> result;
    result.reserve(N);

    for (size_t i = 0; i < N; i++)  {
        int e = vec[i];
        if (step1_firstTime(e))
            result.push_back(e);
    }

    return(result.size());
}

void print_number_vendor_ids_and_unique()
{
    printf("print_number_vendor_ids_and_unique()\n");
    printf("number of vendor_ids in the train dataset: %ld\n", 
        vendor_id_col->size());
    printf("Number of unique vendor_ids in the train dataset: %ld\n\n",
        get_vid_unique_values());
}

//----------------- Step 2 --------------------//
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
        size_type id = _indices[i];
        int by_e = by_col[i];
        int from_e = from_col[i];
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

//----------------- Step 3 --------------------//
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
        // printf("%lu\n", vec[i]);
        size_t ie = indices_[i];
        uint64_t de = vec[i];
        v1 (ie, de);
        v2 (ie, de);
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

//----------------- Step 4 --------------------//
template <typename F, typename T>
void get_vid_by_storefwd(F &sel_func, std::vector<T> &to) {
    const std::vector<size_t> &_indices = *index_col;
    const std::vector<char> &by_col = *store_fwd_col;
    const std::vector<int> &from_col = *vendor_id_col;
    const size_type         col_s = by_col.size();

    // TODO: measure col_indices size
    // make sure this do not trigger realloc
    // and consider remotelize
    to.reserve(col_s);
    for (size_type i = 0; i < col_s; ++i) {
        size_type id = _indices[i];
        char by_e = by_col[i];
        int from_e = from_col[i];
        if (sel_func (id, by_e)) {
            to.push_back(from_e);
        }
    }
    return;
}

void calculate_distribution_store_and_fwd_flag()
{
    printf("calculate_distribution_store_and_fwd_flag()\n");

    auto sel_N_saff_functor = [&](const uint64_t&, const char& saff) -> bool {
        return saff == 'N';
    };

    std::vector<int> sel_whatever;
    get_vid_by_storefwd(sel_N_saff_functor, sel_whatever);

    printf("%f\n", static_cast<double>(sel_whatever.size()) / get_index().size());

    auto sel_Y_saff_functor = [&](const uint64_t&, const char& saff) -> bool {
        return saff == 'Y';
    };

    std::vector<int> sel_vendor_ids;
    get_vid_by_storefwd(sel_Y_saff_functor, sel_vendor_ids);

    std::vector<int> unique_vendor_id_vec;
    size_t N = sel_vendor_ids.size();
    for (size_t i = 0; i < N; i++)  {
        int e = sel_vendor_ids[i];
        if (step4_firstTime(e))
            unique_vendor_id_vec.push_back(e);
    }
    printf("{");
    for (auto& vector_id : unique_vendor_id_vec) {
        printf("%d, ", vector_id);
    }
    printf("}\n\n");
}

//----------------- Step 5 --------------------//
static double haversine(double lat1, double lon1, double lat2, double lon2)
{
    // Distance between latitudes and longitudes
    double dLat = (lat2 - lat1) * M_PI / 180.0;
    double dLon = (lon2 - lon1) * M_PI / 180.0;

    // Convert to radians.
    lat1 = lat1 * M_PI / 180.0;
    lat2 = lat2 * M_PI / 180.0;

    // Apply formulae.
    double a   = pow(sin(dLat / 2), 2) + pow(sin(dLon / 2), 2) * cos(lat1) * cos(lat2);
    double rad = 6371;
    double c   = 2 * asin(sqrt(a));
    return rad * c;
}

template <typename F, typename T>
void get_vid_by_haversine(F &sel_func, std::vector<T> &to) {
    std::vector<size_t> &_indices = *index_col;
    std::vector<double> &by_col = *haversine_col;
    std::vector<int> &from_col = *vendor_id_col;
    size_type         col_s = by_col.size();

    // TODO: measure col_indices size
    // make sure this do not trigger realloc
    // and consider remotelize
    to.reserve(col_s);
    for (size_type i = 0; i < col_s; ++i) {
        size_t ie = _indices[i];
        double by_e = by_col[i];
        int from_e = from_col[i];
        if (sel_func (ie, by_e)) {
            to.push_back(from_e);
        }
    }
    // DataFrame       df;
    // IndexVecType    new_index;

    // Target column
    // std::vector<int> new_vendor_id;
    return;
}

void hvs_set_size(size_t s) {
    auto &v = *haversine_col;
    rvector<double> * rv = (rvector<double> *) &v;
    size_t c = v.capacity();
    if (s > c) {
        printf("Size larger than cap, dont do this\n");
        exit(1);
    }
    rv->end = rv->head + s;
}

void calculate_haversine_distance_column()
{
    printf("calculate_haversine_distance_column()\n");
    auto& pickup_longitude_vec  = *pick_long_col;
    auto& pickup_latitude_vec   = *pick_lat_col;
    auto& dropoff_longitude_vec = *drop_long_col;
    auto& dropoff_latitude_vec  = *drop_lat_col;

    assert(pickup_longitude_vec.size() == pickup_latitude_vec.size());
    assert(pickup_longitude_vec.size() == dropoff_longitude_vec.size());
    assert(pickup_longitude_vec.size() == dropoff_latitude_vec.size());

    size_t N = pickup_latitude_vec.size();
    std::vector<double> &haversine_distance_vec = *haversine_col;

    for (uint64_t i = 0; i < N; i++) {
        haversine_distance_vec[i] = haversine(
                pickup_latitude_vec[i], 
                pickup_longitude_vec[i],
                dropoff_latitude_vec[i],
                dropoff_longitude_vec[i]);
    }
    hvs_set_size(N);
    // load_column("haversine_distance", std::move(haversine_distance_vec));
                    
    auto sel_functor = [&](const uint64_t&, const double& dist) -> bool { return dist > 100; };

    std::vector<int> sel_whatever;
    get_vid_by_haversine(sel_functor, sel_whatever);
    printf("Number of rows that have haversine_distance > 100 KM = %lu\n", sel_whatever.size());
    printf("\n");
}

//----------------- Step 7 --------------------//
template <typename T_Key>
void analyze_trip_durations_of_day(const char* key_col_name)
{
    printf("analyze_trip_durations_of_timestamps() on key = %s\n", key_col_name);

    // auto copy_index        = get_index();
    // auto copy_key_col      = get_column<T_Key>(key_col_name);
    // auto copy_key_duration = get_column<uint64_t>("duration");

    // Take this out 
    // can offload all
    // step7_do_process(key_col_name);

    // data copy
    auto &_index        = *index_col;
    auto &_key_col      = *pick_day_col;
    auto &_key_duration = *duration_col;
    size_t N = _index.size();

    std::vector<size_t> local_index;
    local_index.reserve(N);
    std::vector<short> local_key_col;
    local_key_col.reserve(N);
    std::vector<uint64_t> local_key_duration;
    local_key_duration.reserve(N);

    for (size_t i = 0; i < N; ++ i) {
        size_t ie = _index[i];
        short ke = _key_col[i];
        uint64_t de = _key_duration[i];
        local_index.push_back(ie);
        local_key_col.push_back(ke);
        local_key_duration.push_back(de);
    }

    // printf("data copy done\n");
    step7_process_after_copy(key_col_name, local_index, local_key_col, local_key_duration);
}

template <typename T_Key>
void analyze_trip_durations_of_month(const char* key_col_name)
{
    printf("analyze_trip_durations_of_timestamps() on key = %s\n", key_col_name);

    // auto copy_index        = get_index();
    // auto copy_key_col      = get_column<T_Key>(key_col_name);
    // auto copy_key_duration = get_column<uint64_t>("duration");

    // Take this out 
    // can offload all
    // step7_do_process(key_col_name);

    // data copy
    auto &_index        = *index_col;
    auto &_key_col      = *pick_month_col;
    auto &_key_duration = *duration_col;
    size_t N = _index.size();

    std::vector<size_t> local_index;
    local_index.reserve(N);
    std::vector<short> local_key_col;
    local_key_col.reserve(N);
    std::vector<uint64_t> local_key_duration;
    local_key_duration.reserve(N);

    for (size_t i = 0; i < N; ++ i) {
        size_t ie = _index[i];
        short ke = _key_col[i];
        uint64_t de = _key_duration[i];
        local_index.push_back(ie);
        local_key_col.push_back(ke);
        local_key_duration.push_back(de);
    }

    // printf("data copy done\n");
    step7_process_after_copy(key_col_name, local_index, local_key_col, local_key_duration);
}

int main()
{
    ext_setup();

    std::chrono::time_point<std::chrono::steady_clock> times[10];
    times[0] = std::chrono::steady_clock::now();
    print_number_vendor_ids_and_unique();
    times[1] = std::chrono::steady_clock::now();
    print_passage_counts_by_vendor_id(1);
    times[2] = std::chrono::steady_clock::now();
    print_passage_counts_by_vendor_id(2);
    times[3] = std::chrono::steady_clock::now();
    calculate_trip_duration();
    times[4] = std::chrono::steady_clock::now();
    calculate_distribution_store_and_fwd_flag();
    times[5] = std::chrono::steady_clock::now(); 
    calculate_haversine_distance_column();
    times[6] = std::chrono::steady_clock::now();
    analyze_trip_durations_of_day<short>("pickup_day");
    times[7] = std::chrono::steady_clock::now();
    analyze_trip_durations_of_month<short>("pickup_month");
    times[8] = std::chrono::steady_clock::now();

    printf("Step 1: %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0]).count()/1e6);
    printf("Step 2-1: %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[2] - times[1]).count()/1e6);
    printf("Step 2-2: %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[3] - times[2]).count()/1e6);
    printf("Step 3: %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[4] - times[3]).count()/1e6);
    printf("Step 4: %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[5] - times[4]).count()/1e6);
    printf("Step 5: %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[6] - times[5]).count()/1e6);
    printf("Step 7: %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[7] - times[6]).count()/1e6);
    printf("Step 8: %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[8] - times[7]).count()/1e6);    
    printf("time %.6f s\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[8] - times[0]).count()/1e6);
}

