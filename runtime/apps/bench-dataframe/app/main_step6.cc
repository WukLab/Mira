#include <vector>
#include <unordered_set>
#include <chrono>
#include "internal.h"
#include "rvector.h"

void analyze_trip_timestamp()
{
    std::cout << "analyze_trip_timestamp()" << std::endl;

    MaxVisitor<SimpleTime> max_visitor;
    MinVisitor<SimpleTime> min_visitor;
    df.multi_visit(std::make_pair("tpep_pickup_datetime", &max_visitor),
                   std::make_pair("tpep_pickup_datetime", &min_visitor));
    std::cout << max_visitor.get_result() << std::endl;
    std::cout << min_visitor.get_result() << std::endl;

    auto& pickup_time_vec = get_column<SimpleTime>("tpep_pickup_datetime");
    std::vector<char> pickup_hour_vec;
    std::vector<char> pickup_day_vec;
    std::vector<char> pickup_month_vec;
    std::map<char, int> pickup_hour_map;
    std::map<char, int> pickup_day_map;
    std::map<char, int> pickup_month_map;
    pickup_hour_vec.resize(pickup_time_vec.size());
    pickup_day_vec.resize(pickup_time_vec.size());
    pickup_month_vec.resize(pickup_time_vec.size());
    auto hour_it  = pickup_hour_vec.begin();
    auto day_it   = pickup_day_vec.begin();
    auto month_it = pickup_month_vec.begin();
    auto time_it  = pickup_time_vec.cbegin();

    for (uint64_t i = 0; i < pickup_time_vec.size();
         ++i, ++hour_it, ++day_it, ++month_it, ++time_it) {
        auto time = *time_it;
        pickup_hour_map[time.hour_]++;
        *hour_it = time.hour_;
        pickup_day_map[time.day_]++;
        *day_it = time.day_;
        pickup_month_map[time.month_]++;
        *month_it = time.month_;
    }
    
    // TODO: move this part to external
    df.load_column("pickup_hour", std::move(pickup_hour_vec), nan_policy::dont_pad_with_nans);
    df.load_column("pickup_day", std::move(pickup_day_vec), nan_policy::dont_pad_with_nans);
    df.load_column("pickup_month", std::move(pickup_month_vec), nan_policy::dont_pad_with_nans);

    std::cout << "Print top 10 rows." << std::endl;
    auto top_10_df = df.get_data_by_idx<int, SimpleTime, double, char>(
        Index2D<StdDataFrame<uint64_t>::IndexType>{0, 9});
    top_10_df.write<std::ostream, int, SimpleTime, double, char>(std::cout, false, io_format::json);
    std::cout << std::endl;

    for (auto& [hour, cnt] : pickup_hour_map) {
        std::cout << "pickup_hour = " << static_cast<int>(hour) << ", cnt = " << cnt << std::endl;
    }
    std::cout << std::endl;
    for (auto& [day, cnt] : pickup_day_map) {
        std::cout << "pickup_day = " << static_cast<int>(day) << ", cnt = " << cnt << std::endl;
    }
    std::cout << std::endl;
    for (auto& [month, cnt] : pickup_month_map) {
        std::cout << "pickup_month = " << static_cast<int>(month) << ", cnt = " << cnt << std::endl;
    }
    std::cout << std::endl;
}


int main()
{
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    void * df  = load_data();
    times[0] = std::chrono::steady_clock::now();
    analyze_trip_timestamp();
    times[1] = std::chrono::steady_clock::now();
    printf("Step 1: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());
}

