#include <vector>
#include <iostream>
#include <chrono>
#include "internal.h"
#include "rvector.h"
#include "cache.h"
#include "common.h"
#include "simple_time.hpp"

template<typename T> void sel_load
(std::vector<size_t>& indices, const std::vector<T> &vec, std::vector<T>& new_col)  {
    const size_type vec_size = vec.size();

    new_col.reserve(std::min(indices.size(), vec_size));

    size_t s = indices.size();
    for (size_t i = 0; i < s; i++)  {
        size_t citer = indices[i];
        const size_type index =
            citer >= 0 ? citer : static_cast<size_t>(s) + citer;

        if (index < vec_size) {
            new_col.push_back(vec[index]);
        }
        else
            break;
    }

    return;
}

template <typename K, typename T, typename F>
void get_data_by_sel (const char *name, F &sel_func, std::vector<T>& newvec) {
    auto &indices_ = get_index();

    const std::vector<T>    &vec = get_column<T>(name);
    const size_type         idx_s = indices_.size();
    const size_type         col_s = vec.size();
    std::vector<size_type>  col_indices;

    // TODO: measure col_indices size
    // make sure this do not trigger realloc
    // and consider remotelize
    col_indices.reserve(idx_s);
    newvec.reserve(col_s);


    // for (size_type i = 0; i < col_s; ++i)
    //     if (sel_func (indices_[i], vec[i])) {
    //     }
    const std::vector<int> &target_col = get_column<int>("passenger_count");

    uint64_t idx_base = remoteAddr((void *)&indices_[0]);
    uint64_t vec_base = remoteAddr((void *)&vec[0]);
    uint64_t tgt_base = remoteAddr((void *)&target_col[0]);

    // printf("%lu\n", remoteAddr(p));
    rring_init(rids, size_t, (2 << 20), 4, (size_t) ((char*)rbuf + (8<<20)), idx_base);
    rring_init(r_filter_by, int, (2 << 20), 32, (size_t) ((char*)rbuf + (16<<20)), vec_base);
    rring_init(r_get_from, int, (2 << 20), 32, (size_t) ((char*)rbuf + (80<<20)), tgt_base);

    rring_outer_loop_with(r_filter_by, col_s);
    rring_outer_loop_with(r_get_from, col_s);
    rring_outer_loop(rids, size_t, col_s) {
        rring_prefetch_with(rids, r_filter_by, 4);
        rring_prefetch_with(rids, r_get_from, 4);
        rring_prefetch(rids, 2);

        rring_inner_preloop(r_filter_by, int);
        rring_inner_preloop(r_get_from, int);
        rring_inner_preloop(rids, size_t);

        rring_sync(rids);

        rring_inner_loop(rids, j) {
            size_t index = _inner_rids[j];
            int fby = _inner_r_filter_by[j];
            int rget = _inner_r_get_from[j];
            // printf("%lu %d %d\n", index, fby, rget);
            if (sel_func (index, fby)) {
                // dummy
                size_t nth = _t_rids * _bn_rids + j;
                col_indices.push_back(nth);

                newvec.push_back(rget);
            }
        }
        rring_outer_loop_with_post(r_get_from);
        rring_outer_loop_with_post(r_filter_by);
    }

    // std::vector<int> new_vendor_id;
    // std::vector<int> &vids = get_column<int>("VendorID");
    // uint64_t vid_base = remoteAddr((void *)&vids[0]);
    // dummy_reader(new_vendor_id, (2<<20), 16, 8, sel_size, vid_base);

    const size_t sel_size = newvec.size();

    std::vector<SimpleTime> new_pickup_datetime;
    std::vector<SimpleTime> &pdt = get_column<SimpleTime>("tpep_pickup_datetime");
    uint64_t pdt_base = remoteAddr((void *)&pdt[0]);
    dummy_reader(new_pickup_datetime, (2<<20), 16, 8, sel_size, pdt_base);

    std::vector<SimpleTime> new_dropoff_datetime;
    std::vector<SimpleTime> &ddt = get_column<SimpleTime>("tpep_dropoff_datetime");
    uint64_t ddt_base = remoteAddr((void *)&ddt[0]);
    dummy_reader(new_dropoff_datetime, (2<<20), 16, 8, sel_size, ddt_base);

    // std::vector<int> new_psg_count;
    // std::vector<int> &psg = get_column<int>("passenger_count");
    // uint64_t psg_base = remoteAddr((void *)&psg[0]);
    // dummy_reader(new_psg_count, (2<<20), 16, 8, sel_size, psg_base);

    std::vector<double> new_trip_dist;
    std::vector<double> &trip_dist = get_column<double>("trip_distance");
    uint64_t trip_dist_base = remoteAddr((void *)&trip_dist[0]);
    dummy_reader(new_trip_dist, (2<<20), 16, 8, sel_size, trip_dist_base);

    std::vector<double> new_plon;
    std::vector<double> &plon = get_column<double>("pickup_longitude");
    uint64_t plon_base = remoteAddr((void *)&plon[0]);
    dummy_reader(new_plon, (2<<20), 16, 8, sel_size, plon_base);

    std::vector<double> new_plat;
    std::vector<double> &plat = get_column<double>("pickup_latitude");
    uint64_t plat_base = remoteAddr((void *)&plat[0]);
    dummy_reader(new_plat, (2<<20), 16, 8, sel_size, plat_base);

    std::vector<int> new_rate;
    std::vector<int> &rate = get_column<int>("RatecodeID");
    uint64_t rate_base = remoteAddr((void *)&rate[0]);
    dummy_reader(new_rate, (2<<20), 16, 8, sel_size, rate_base);

    std::vector<char> new_flag;
    std::vector<char> &flag = get_column<char>("store_and_fwd_flag");
    uint64_t flag_base = remoteAddr((void *)&flag[0]);
    dummy_reader(new_flag, (2<<20), 16, 8, sel_size, flag_base);

    std::vector<double> new_dlon;
    std::vector<double> &dlon = get_column<double>("dropoff_longitude");
    uint64_t dlon_base = remoteAddr((void *)&dlon[0]);
    dummy_reader(new_dlon, (2<<20), 16, 8, sel_size, dlon_base);

    std::vector<double> new_dlat;
    std::vector<double> &dlat = get_column<double>("dropoff_latitude");
    uint64_t dlat_base = remoteAddr((void *)&dlat[0]);
    dummy_reader(new_dlat, (2<<20), 16, 8, sel_size, dlat_base);

    std::vector<int> new_ptype;
    std::vector<int> &payment = get_column<int>("payment_type");
    uint64_t payment_base = remoteAddr((void *)&dlat[0]);
    dummy_reader(new_ptype, (2<<20), 16, 8, sel_size, payment_base);

    std::vector<double> new_famount;
    std::vector<double> &fare = get_column<double>("fare_amount");
    uint64_t fare_base = remoteAddr((void *)&fare[0]);
    dummy_reader(new_famount, (2<<20), 16, 8, sel_size, fare_base);

    std::vector<double> new_extra;
    std::vector<double> &extra = get_column<double>("extra");
    uint64_t extra_base = remoteAddr((void *)&extra[0]);
    dummy_reader(new_extra, (2<<20), 16, 8, sel_size, extra_base);

    std::vector<double> new_mta;
    std::vector<double> &mta = get_column<double>("mta_tax");
    uint64_t mta_base = remoteAddr((void *)&mta[0]);
    dummy_reader(new_mta, (2<<20), 16, 8, sel_size, mta_base);

    std::vector<double> new_tip;
    std::vector<double> &tip = get_column<double>("tip_amount");
    uint64_t tip_base = remoteAddr((void *)&tip[0]);
    dummy_reader(new_tip, (2<<20), 16, 8, sel_size, tip_base);

    std::vector<double> new_tolls;
    std::vector<double> &tolls = get_column<double>("tolls_amount");
    uint64_t tolls_base = remoteAddr((void *)&tolls[0]);
    dummy_reader(new_tolls, (2<<20), 16, 8, sel_size, tolls_base);

    std::vector<double> new_impv;
    std::vector<double> &impv = get_column<double>("improvement_surcharge");
    uint64_t impv_base = remoteAddr((void *)&impv[0]);
    dummy_reader(new_impv, (2<<20), 16, 8, sel_size, impv_base);

    std::vector<double> new_total;
    std::vector<double> &total = get_column<double>("total_amount");
    uint64_t total_base = remoteAddr((void *)&total[0]);
    dummy_reader(new_total, (2<<20), 16, 8, sel_size, total_base);

 
    return;
}

void print_passage_counts_by_vendor_id(int vendor_id)
{
    printf("print_passage_counts_by_vendor_id(vendor_id), vendor_id = %d\n", vendor_id);

    auto sel_vendor_functor = [&](const uint64_t&, const int& vid) -> bool {
        return vid == vendor_id;
    };

    std::vector<int> passage_count_vec;
    get_data_by_sel<int>("VendorID", sel_vendor_functor, passage_count_vec);

    size_t s = passage_count_vec.size();
    printf("newvec size %lu\n", s);
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
    init_client();
    cache_init();
    channel_init();
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    void * df  = load_data();
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
