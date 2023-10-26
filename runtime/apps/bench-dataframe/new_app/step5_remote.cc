#include <vector>
#include <chrono>
#include "internal.h"
#include <cassert>
#include <cstdio>
#include <cmath>
#include "cache.hpp"
#include "simple_time.hpp"

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
        size_t ie = *ridx_R::get<size_t>(&_indices[i]);
        double by_e = *rhvs_R::get<double>(&by_col[i]);
        int from_e = *rvid_R::get<int>(&from_col[i]);
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
        double *hvs_p = rhvs_R::get_mut<double>(&haversine_distance_vec[i]);
        hvs_p[0] = haversine(
                *rplat_R::get<double>(&pickup_latitude_vec[i]), 
                *rplon_R::get<double>(&pickup_longitude_vec[i]),
                *rdlat_R::get<double>(&dropoff_latitude_vec[i]),
                *rdlon_R::get<double>(&dropoff_longitude_vec[i]));
    }
    vec_set_size(haversine_distance_vec, N);
    // load_column("haversine_distance", std::move(haversine_distance_vec));
                    
    auto sel_functor = [&](const uint64_t&, const double& dist) -> bool { return dist > 100; };

    std::vector<int> sel_whatever;
    get_vid_by_haversine(sel_functor, sel_whatever);
    printf("Number of rows that have haversine_distance > 100 KM = %lu\n", sel_whatever.size());
    printf("\n");
}

int main()
{
    ext_setup();
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    times[0] = std::chrono::steady_clock::now();
    calculate_haversine_distance_column();
    times[1] = std::chrono::steady_clock::now();
    printf("Step 5: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());
}
