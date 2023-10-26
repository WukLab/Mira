#include <DataFrame/DataFrame.h>
#include "rvector.h"
#include "simple_time.hpp"
#include "common.h"
#include <unordered_set>
#include <vector>
#include "internal.h"

using namespace hmdf;

static StdDataFrame<uint64_t> df;
// /mnt/data/df_csv/yellow_tripdata_2016-01.csv

std::vector<int> *vendor_id_col;
std::vector<SimpleTime> *pick_date_col;
std::vector<SimpleTime> *drop_date_col;
std::vector<int> *psg_cnt_col;
std::vector<double> *pick_long_col;
std::vector<double> *pick_lat_col;
std::vector<char> *store_fwd_col;
std::vector<double> *drop_long_col;
std::vector<double> *drop_lat_col;
std::vector<size_t> *index_col;
std::vector<uint64_t> *duration_col;
std::vector<double> *haversine_col;
std::vector<short> *pick_day_col;
std::vector<short> *pick_month_col;

void * load_data()
{   
    StdDataFrame<uint64_t>::set_thread_level(1);
    df = read_csv<-1, int, SimpleTime, SimpleTime, int, double, double, double, int, char, double,
                    double, int, double, double, double, double, double, double, double>(
        "/mnt/data/df_csv/all.csv", "VendorID", "tpep_pickup_datetime", "tpep_dropoff_datetime",
        "passenger_count", "trip_distance", "pickup_longitude", "pickup_latitude", "RatecodeID",
        "store_and_fwd_flag", "dropoff_longitude", "dropoff_latitude", "payment_type",
        "fare_amount", "extra", "mta_tax", "tip_amount", "tolls_amount", "improvement_surcharge",
        "total_amount");

    // remotelize
    // std::vector<std::string> names {
    //     "VendorID", "tpep_pickup_datetime", "tpep_dropoff_datetime",
    //     "passenger_count", "trip_distance", "pickup_longitude", "pickup_latitude", "RatecodeID",
    //     "store_and_fwd_flag", "dropoff_longitude", "dropoff_latitude", "payment_type",
    //     "fare_amount", "extra", "mta_tax", "tip_amount", "tolls_amount", "improvement_surcharge",
    //     "total_amount"};

    // remotelize(df.get_index());
    // printf("index remote\n");
    // remotelize(df.get_column<int>("VendorID"));
    // printf("VendorID remote\n");
    // remotelize(df.get_column<SimpleTime>("tpep_pickup_datetime"));
    // printf("pickup remote\n");
    // remotelize(df.get_column<SimpleTime>("tpep_dropoff_datetime"));
    // printf("dropoff remote\n");
    // remotelize(df.get_column<int>("passenger_count"));
    // printf("psg cnt remote\n");
    // remotelize(df.get_column<double>("trip_distance"));
    // printf("trip dist remote\n");
    // remotelize(df.get_column<double>("pickup_longitude"));
    // printf("pickup lon remote\n");
    // remotelize(df.get_column<double>("pickup_latitude"));
    // printf("pickup lat remote\n");
    // remotelize(df.get_column<int>("RatecodeID"));
    // printf("ratecodeID remote\n");
    // remotelize(df.get_column<char>("store_and_fwd_flag"));
    // printf("store and fwd flag remote\n");
    // remotelize(df.get_column<double>("dropoff_longitude"));
    // printf("dropoff lon remote\n");
    // remotelize(df.get_column<double>("dropoff_latitude"));
    // printf("dropoff lat remote\n");
    // remotelize(df.get_column<int>("payment_type"));
    // printf("payment type remote\n");
    // remotelize(df.get_column<double>("fare_amount"));
    // printf("fare amount remote\n");
    // remotelize(df.get_column<double>("extra"));
    // printf("extra remote\n");
    // remotelize(df.get_column<double>("mta_tax"));
    // printf("mta tax\n");
    // remotelize(df.get_column<double>("tip_amount"));
    // printf("tip amount\n");
    // remotelize(df.get_column<double>("tolls_amount"));
    // printf("tolls amount\n");
    // remotelize(df.get_column<double>("improvement_surcharge"));
    // printf("imp surcharge\n");
    // remotelize(df.get_column<double>("total_amount"));
    // printf("total amount\n");

    return static_cast<void *>(&df);
}

template<typename T>
std::vector<T>& get_column(const char * name) {
    return df.get_column<T>(name);
}

template<typename T>
void load_column(const char *name, std::vector<T> &&vec) {
    df.load_column(name, std::move(vec), nan_policy::dont_pad_with_nans);
    remotelize(df.get_column<T>(name));
}

template std::vector<char> &       get_column<char>(const char *);
template std::vector<short> &      get_column<short>(const char *);
template std::vector<int> &        get_column<int>(const char *);
template std::vector<uint64_t> &   get_column<uint64_t>(const char *);
template std::vector<SimpleTime> & get_column<SimpleTime>(const char *);
template std::vector<double>& get_column<double>(const char *name);

template void load_column<uint64_t>(const char *name, std::vector<uint64_t> &&vec);
template void load_column<double>(const char *name, std::vector<double> &&vec);

std::vector<size_t>& get_index() {
    return df.get_index();
}

template <typename T>
void vec_set_size(std::vector<T> &v, size_t s) {
  rvector<T> * rv = (rvector<T> *) &v;
  size_t c = v.capacity();
  if (s > c) {
    printf("Size larger than cap, dont do this\n");
    exit(1);
  }
  rv->end = rv->head + s;
}

template void vec_set_size<uint64_t>(std::vector<uint64_t> &v, size_t s);
template void vec_set_size<double>(std::vector<double> &v, size_t s);


static std::unordered_set<int> step1_set;
bool step1_firstTime(int i) {
    const auto insert_ret = step1_set.emplace(i);
    return insert_ret.second;
}

static std::map<int, int> passage_count_map1;
void step21_passage_count(int pid) {
    passage_count_map1[pid]++;
}

void step21_count_result() {
    for (auto const& [passage_count, cnt] : passage_count_map1) {
        std::cout << "passage_count= " << passage_count << ", cnt = " << cnt << std::endl;
    }
}

static std::map<int, int> passage_count_map2;
void step22_passage_count(int pid) {
    passage_count_map2[pid]++;
}

void step22_count_result() {
    for (auto const& [passage_count, cnt] : passage_count_map2) {
        std::cout << "passage_count= " << passage_count << ", cnt = " << cnt << std::endl;
    }
}

void prepare_duration()
{
    auto& pickup_time_vec  = *pick_date_col;
    auto& dropoff_time_vec = *drop_date_col;
    std::vector<uint64_t> &duration_vec = *duration_col;
    size_t N = pickup_time_vec.size();
    for (uint64_t i = 0; i < N; i++) {
        auto pickup_time_second  = pickup_time_vec[i].to_second();
        auto dropoff_time_second = dropoff_time_vec[i].to_second();
        // can directly change pointers.
        if (dropoff_time_second < pickup_time_second)
            duration_vec[i] = 0;
        else
            duration_vec[i] = dropoff_time_second - pickup_time_second;
    }
    vec_set_size(duration_vec, N);
}

static std::unordered_set<int> step4_set;
bool step4_firstTime(int i) {
    const auto insert_ret = step4_set.emplace(i);
    return insert_ret.second;
}

void load_trip_timestamp() {
    // StdDataFrame<uint64_t> duration_csv = read_csv<-1,uint64_t>("/mnt/data/duration.csv", "duration"); 
    StdDataFrame<uint64_t> day_csv = read_csv<-1, short>("/mnt/data/pickup_day.csv", "pickup_day");
    StdDataFrame<uint64_t> month_csv = read_csv<-1, short>("/mnt/data/pickup_month.csv", "pickup_month");
    
    // auto duration_vec = duration_csv.get_column<uint64_t>("duration");
    auto pickup_day_vec = day_csv.get_column<short>("pickup_day");
    auto pickup_month_vec = month_csv.get_column<short>("pickup_month");

    // printf("sizes %lu %lu %lu\n", duration_vec.size(), pickup_day_vec.size(), pickup_month_vec.size());

    // load_column("duration", std::move(duration_vec));
    load_column("pickup_day", std::move(pickup_day_vec));
    load_column("pickup_month", std::move(pickup_month_vec));
}

void load_duration_trip_timestamp() {
    StdDataFrame<uint64_t> duration_csv = read_csv<-1,uint64_t>("/mnt/data/duration.csv", "duration"); 
    StdDataFrame<uint64_t> day_csv = read_csv<-1, short>("/mnt/data/pickup_day.csv", "pickup_day");
    StdDataFrame<uint64_t> month_csv = read_csv<-1, short>("/mnt/data/pickup_month.csv", "pickup_month");
    
    auto duration_vec = duration_csv.get_column<uint64_t>("duration");
    auto pickup_day_vec = day_csv.get_column<short>("pickup_day");
    auto pickup_month_vec = month_csv.get_column<short>("pickup_month");

    // printf("sizes %lu %lu %lu\n", duration_vec.size(), pickup_day_vec.size(), pickup_month_vec.size());

    load_column("duration", std::move(duration_vec));
    load_column("pickup_day", std::move(pickup_day_vec));
    load_column("pickup_month", std::move(pickup_month_vec));
}

void step7_do_process(const char* key_col_name) {
    StdDataFrame<uint64_t> df_key_duration;
    auto copy_index        = df.get_index();
    auto copy_key_col      = df.get_column<short>(key_col_name);
    auto copy_key_duration = df.get_column<uint64_t>("duration");
    df_key_duration.load_data(std::move(copy_index),
                              std::make_pair(key_col_name, std::move(copy_key_col)),
                              std::make_pair("duration", std::move(copy_key_duration)));

    StdDataFrame<uint64_t> groupby_key =
        df_key_duration.groupby<GroupbyMedian, short, short, uint64_t>(GroupbyMedian(),
                                                                       key_col_name);
    auto& key_vec      = groupby_key.get_column<short>(key_col_name);
    auto& duration_vec = groupby_key.get_column<uint64_t>("duration");   

    for (uint64_t i = 0; i < key_vec.size(); i++) {
        std::cout << static_cast<int>(key_vec[i]) << " " << duration_vec[i] << std::endl;
    }
}

void step7_process_after_copy(const char *key_col_name,
                                     std::vector<size_t> &index,
                                     std::vector<short> &key_col,
                                     std::vector<uint64_t> &duration) {
    StdDataFrame<uint64_t> df_key_duration;
    df_key_duration.load_data(std::move(index),
                              std::make_pair(key_col_name, std::move(key_col)),
                              std::make_pair("duration", std::move(duration)));

    StdDataFrame<uint64_t> groupby_key =
        df_key_duration.groupby<GroupbyMedian, short, short, uint64_t>(GroupbyMedian(),
                                                                       key_col_name);
    auto& key_vec      = groupby_key.get_column<short>(key_col_name);
    auto& duration_vec = groupby_key.get_column<uint64_t>("duration");   

    for (uint64_t i = 0; i < key_vec.size(); i++) {
        std::cout << static_cast<int>(key_vec[i]) << " " << duration_vec[i] << std::endl;
    }
}

static std::vector<uint64_t> _duration_col;
static std::vector<double> _haversine_col;

#define STEP_7 0

void ext_setup() {
    (void)load_data();
    // used for step 7 only
    load_duration_trip_timestamp();

    vendor_id_col = &df.get_column<int>("VendorID");
    pick_date_col = &df.get_column<SimpleTime>("tpep_pickup_datetime");
    drop_date_col = &df.get_column<SimpleTime>("tpep_dropoff_datetime");
    psg_cnt_col = &df.get_column<int>("passenger_count");
    pick_long_col = &df.get_column<double>("pickup_longitude");
    pick_lat_col = &df.get_column<double>("pickup_latitude");
    store_fwd_col = &df.get_column<char>("store_and_fwd_flag");
    drop_long_col = &df.get_column<double>("dropoff_longitude");
    drop_lat_col = &df.get_column<double>("dropoff_latitude");

    index_col = &df.get_index();
#if STEP_7
    duration_col = &df.get_column<uint64_t>("duration");
#else
    _duration_col.reserve(pick_date_col->size());
    duration_col = &_duration_col;
#endif
    _haversine_col.reserve(pick_long_col->size());
    haversine_col = &_haversine_col;

    pick_day_col = &df.get_column<short>("pickup_day");
    pick_month_col = &df.get_column<short>("pickup_month");
}
