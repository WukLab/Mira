
// extern functions
struct DF;
struct rvector_int;
StdDataFrame<uint64_t> load_data();
std::vector<int> load_column__int_(DF * df, const char *name);

/*
get_column_x -> returns the same vector.
get_index -> returns the same vector.

remotable: vector.iter.?
*/

// detamplate functions
std::vector<int>& get_col_unique_values__int_();
std::vector<int>& get_index__int_();
//visit
template<typename V>
V visit (const char *name, V &visitor)  {

    std::vector<int>& indices_ = get_index();

    auto            &vec = get_column<T>(name);
    const size_t    idx_s = indices_.size();
    const size_t    min_s = std::min<size_t   >(vec.size(), idx_s);
    size_t          i = 0;

    visitor.pre();
    for (; i < min_s; ++i)
        visitor (indices_[i], vec[i]);
    for (; i < idx_s; ++i)  {
        T   nan_val = _get_nan<T>();

        visitor (indices_[i], nan_val);
    }
    visitor.post();

    return (visitor);
}

std::vector<int> get_col_unique_values__int_(std::vector<int> &vec) const  {

    auto                    hash_func =
        [](std::reference_wrapper<const T> v) -> std::size_t  {
            return(std::hash<T>{}(v.get()));
    };
    auto                    equal_func =
        [](std::reference_wrapper<const T> lhs,
           std::reference_wrapper<const T> rhs) -> bool  {
            return(lhs.get() == rhs.get());
    };

    std::unordered_set<
        typename std::reference_wrapper<T>::type,
        decltype(hash_func),
        decltype(equal_func)>   table(vec.size(), hash_func, equal_func);
    bool                        counted_nan = false;
    std::vector<T>              result;

    result.reserve(vec.size());
    for (auto citer : vec)  {
        const auto  insert_ret = table.emplace(std::ref(citer));

        if (insert_ret.second)
            result.push_back(citer);
    }

    return(result);
}




// Download dataset at https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page.
// The following code is implemented based on the format of 2016 datasets.
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

// Func 1
void print_number_vendor_ids_and_unique(StdDataFrame<uint64_t>& df)
{
    std::cout << "print_number_vendor_ids_and_unique()" << std::endl;
    std::cout << "Number of vendor_ids in the train dataset: "
              << df.get_column<int>("VendorID").size() << std::endl;
    std::cout << "Number of unique vendor_ids in the train dataset:"
              << df.get_col_unique_values<int>("VendorID").size() << std::endl;
    std::cout << std::endl;
}

// Func 2
void print_passage_counts_by_vendor_id(StdDataFrame<uint64_t>& df, int vendor_id)
{
    std::cout << "print_passage_counts_by_vendor_id(vendor_id), vendor_id = " << vendor_id
              << std::endl;

    auto sel_vendor_functor = [&](const uint64_t&, const int& vid) -> bool {
        return vid == vendor_id;
    };
    auto sel_df =
        df.get_data_by_sel<int, decltype(sel_vendor_functor), int, SimpleTime, double, char>(
            "VendorID", sel_vendor_functor);
    auto& passage_count_vec = sel_df.get_column<int>("passenger_count");
    std::map<int, int> passage_count_map;
    for (auto passage_count : passage_count_vec) {
        passage_count_map[passage_count]++;
    }
    for (auto& [passage_count, cnt] : passage_count_map) {
        std::cout << "passage_count= " << passage_count << ", cnt = " << cnt << std::endl;
    }
    std::cout << std::endl;
}

// Func 3
void calculate_trip_duration(StdDataFrame<uint64_t>& df)
{
    std::cout << "calculate_trip_duration()" << std::endl;

    auto& pickup_time_vec  = df.get_column<SimpleTime>("tpep_pickup_datetime");
    auto& dropoff_time_vec = df.get_column<SimpleTime>("tpep_dropoff_datetime");
    assert(pickup_time_vec.size() == dropoff_time_vec.size());

    // Option 2: remotelize this
    std::vector<uint64_t> duration_vec;
    for (uint64_t i = 0; i < pickup_time_vec.size(); i++) {
        auto pickup_time_second  = pickup_time_vec[i].to_second();
        auto dropoff_time_second = dropoff_time_vec[i].to_second();
        duration_vec.push_back(dropoff_time_second - pickup_time_second);
    }
    df.load_column("duration", std::move(duration_vec), nan_policy::dont_pad_with_nans);
    // Option 1: just remotelize
    remotelize<int>(get_column__int_("duration"));

    MaxVisitor<uint64_t> max_visitor;
    MinVisitor<uint64_t> min_visitor;
    MeanVisitor<uint64_t> mean_visitor;
    visit(get_column__int_("duration"), max_visitor);
    visit(get_column__int_("duration"), min_visitor);
    visit(get_column__int_("duration"), mean_visitor);
    std::cout << "Mean duration = " << mean_visitor.get_result() << " seconds" << std::endl;
    std::cout << "Min duration = " << min_visitor.get_result() << " seconds" << std::endl;
    std::cout << "Max duration = " << max_visitor.get_result() << " seconds" << std::endl;
    std::cout << std::endl;
}
