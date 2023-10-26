#include <vector>
#include <unordered_set>
#include <chrono>
#include "internal.h"
#include "rvector.h"
#include <cassert>
#include "cache.h"
#include "common.h"


template <typename T_Key>
void analyze_trip_durations_of_timestamps(const char* key_col_name)
{
    printf("analyze_trip_durations_of_timestamps() on key = %s\n", key_col_name);

    // auto copy_index        = get_index();
    // auto copy_key_col      = get_column<T_Key>(key_col_name);
    // auto copy_key_duration = get_column<uint64_t>("duration");

    // Take this out 
    // can offload all
    // step7_do_process(key_col_name);
    // Take this out

    // data copy
    auto &copy_index        = get_index();
    auto &copy_key_col      = get_column<short>(key_col_name);
    auto &copy_key_duration = get_column<uint64_t>("duration");

    std::vector<size_t> local_index;
    local_index.reserve(copy_index.size());
    std::vector<short> local_key_col;
    local_key_col.reserve(copy_key_col.size());
    std::vector<uint64_t> local_key_duration;
    local_key_duration.reserve(copy_key_duration.size());

    uint64_t idx_base = remoteAddr((void *)&copy_index[0]);
    uint64_t col_base = remoteAddr((void *)&copy_key_col[0]);
    uint64_t duration_base = remoteAddr((void *)&copy_key_duration[0]);

    size_t N = copy_key_col.size();

    rring_init(rids, size_t, (2 << 20), 32, (size_t) ((char*)rbuf + (8<<20)), idx_base);
    rring_init(rcol, short, (2 << 20), 32, (size_t) ((char*)rbuf + (72<<20)), col_base);
    rring_init(rduration, uint64_t, (2 << 20), 32, (size_t) ((char*)rbuf + (132<<20)), duration_base);

    rring_outer_loop_with(rcol, N);
    rring_outer_loop_with(rduration, N);
    rring_outer_loop(rids, size_t, N) {
        rring_prefetch_with(rids, rcol, 8);
        rring_prefetch_with(rids, rduration, 8);
        rring_prefetch(rids, 8);

        rring_inner_preloop(rcol, short);
        rring_inner_preloop(rduration, uint64_t);
        rring_inner_preloop(rids, size_t);

        rring_sync(rids);

        rring_inner_loop(rids, j) {
            size_t index = _inner_rids[j];
            short col = _inner_rcol[j];
            uint64_t d = _inner_rduration[j];
            // printf("%lu %d %d\n", index, fby, rget);
            local_index.push_back(index);
            local_key_col.push_back(col);
            local_key_duration.push_back(d);
        }
        rring_outer_loop_with_post(rcol);
        rring_outer_loop_with_post(rduration);
    }

    // printf("data copy done\n");
    step7_process_after_copy(key_col_name, local_index, local_key_col, local_key_duration);
}

int main()
{
    init_client();
    cache_init();
    channel_init();
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    void * df  = load_data();
    load_trip_timestamp();
    // specially loaded column at remote now

    times[0] = std::chrono::steady_clock::now();
    analyze_trip_durations_of_timestamps<short>("pickup_day");
    times[1] = std::chrono::steady_clock::now();
    analyze_trip_durations_of_timestamps<short>("pickup_month");
    times[2] = std::chrono::steady_clock::now();
    printf("Step 7: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());

    printf("Step 8: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[2] - times[1])
        .count());    
}

