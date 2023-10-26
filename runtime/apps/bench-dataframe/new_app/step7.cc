#include <vector>
#include <unordered_set>
#include <chrono>
#include "internal.h"
#include <cassert>


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

