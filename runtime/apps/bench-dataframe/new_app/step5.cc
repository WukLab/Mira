#include <vector>
#include <chrono>
#include "internal.h"
#include <cassert>
#include <cstdio>
#include <cmath>

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
