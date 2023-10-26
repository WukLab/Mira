#include <vector>
#include <unordered_set>
#include <chrono>
#include "internal.h"
#include "simple_time.hpp"
#include <cassert>
#include "cache.hpp"

// total num_eles approx 128 * 1024 * 1024
const size_t s1_nb = 512 * 1024;
const size_t s1_n_block = 32;

// token offset, raddr offset, laddr offset, slots, slot size bytes, id 
using rvid  = DirectCache<0,0,0,s1_n_block,s1_nb * sizeof(int),0>;
using rpick = DirectCache<s1_n_block,(1<<30),(1<<30),s1_n_block,s1_nb * sizeof(SimpleTime),1>;
using rdrop = DirectCache<2*s1_n_block,(2ULL<<30),(2ULL<<30),s1_n_block,s1_nb * sizeof(SimpleTime),2>;
using rpsg  = DirectCache<3*s1_n_block,(3ULL<<30),(3ULL<<30),s1_n_block,s1_nb * sizeof(int),3>;
using rplon = DirectCache<4*s1_n_block,(4ULL<<30),(4ULL<<30),s1_n_block,s1_nb * sizeof(double),4>;
using rplat = DirectCache<5*s1_n_block,(5ULL<<30),(5ULL<<30),s1_n_block,s1_nb * sizeof(double),5>;
using rfwd  = DirectCache<6*s1_n_block,(6ULL<<30),(6ULL<<30),s1_n_block,s1_nb * sizeof(char),6>;
using rdlon = DirectCache<7*s1_n_block,(7ULL<<30),(7ULL<<30),s1_n_block,s1_nb * sizeof(double),7>;
using rdlat = DirectCache<8*s1_n_block,(8ULL<<30),(8ULL<<30),s1_n_block,s1_nb * sizeof(double),8>;
using ridx  = DirectCache<9*s1_n_block,(9ULL<<30),(9ULL<<30),s1_n_block,s1_nb * sizeof(size_t),9>;
using rdur  = DirectCache<10*s1_n_block,(10ULL<<30),(10ULL<<30),s1_n_block,s1_nb * sizeof(uint64_t),10>;
using rhvs  = DirectCache<11*s1_n_block,(11ULL<<30),(11ULL<<30),s1_n_block,s1_nb * sizeof(double),11>;
using rpday = DirectCache<12*s1_n_block,(12ULL<<30),(12ULL<<30),s1_n_block,s1_nb * sizeof(short),12>;
using rpmon = DirectCache<13*s1_n_block,(13ULL<<30),(13ULL<<30),s1_n_block,s1_nb * sizeof(short),13>;


using rvid_R = CacheReq<rvid>;
using rpick_R = CacheReq<rpick>;
using rdrop_R = CacheReq<rdrop>;
using rpsg_R = CacheReq<rpsg>;
using rplon_R = CacheReq<rplon>;
using rplat_R = CacheReq<rplat>;
using rfwd_R = CacheReq<rfwd>;
using rdlon_R = CacheReq<rdlon>;
using rdlat_R = CacheReq<rdlat>;
using ridx_R = CacheReq<ridx>;
using rdur_R = CacheReq<rdur>;
using rhvs_R = CacheReq<rhvs>;
using rpday_R = CacheReq<rpday>;
using rpmon_R = CacheReq<rpmon>;


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
        size_t ie = *ridx_R::get<size_t>(&_index[i]);
        short ke = *rpday_R::get<short>(&_key_col[i]);
        uint64_t de = *rdur_R::get<uint64_t>(&_key_duration[i]);
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
        size_t ie = *ridx_R::get<size_t>(&_index[i]);
        short ke = *rpmon_R::get<short>(&_key_col[i]);
        uint64_t de = *rdur_R::get<uint64_t>(&_key_duration[i]);
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
    // specially loaded column at remote now

    times[0] = std::chrono::steady_clock::now();
    analyze_trip_durations_of_day<short>("pickup_day");
    times[1] = std::chrono::steady_clock::now();
    analyze_trip_durations_of_month<short>("pickup_month");
    times[2] = std::chrono::steady_clock::now();
    printf("Step 7: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());

    printf("Step 8: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[2] - times[1])
        .count());    
}

