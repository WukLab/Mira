#include <vector>
#include <unordered_set>
#include <iostream>
#include <chrono>
#include "internal.h"

template<typename T>
std::vector<T> get_col_unique_values(std::vector<T> & vec) {
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
    // TODO: disagg this variable
    std::vector<T>              result;

    result.reserve(vec.size());
    for (int i = 0; i < vec.size(); i++)  {
        const auto  insert_ret = table.emplace(vec[i]);

        if (insert_ret.second)
            result.push_back(vec[i]);
    }

    return(result);
}

void print_number_vendor_ids_and_unique()
{
    std::cout << "print_number_vendor_ids_and_unique()" << std::endl;
    std::cout << "Number of vendor_ids in the train dataset: "
              << get_column_int("VendorID").size() << std::endl;
    std::cout << "Number of unique vendor_ids in the train dataset:"
              << get_col_unique_values(get_column_int("VendorID")).size() << std::endl;
    std::cout << std::endl;
}

int main()
{
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    void * df  = load_data();
    times[0] = std::chrono::steady_clock::now();
    print_number_vendor_ids_and_unique();
    times[1] = std::chrono::steady_clock::now();
    std::cout << "Step 1: "
        << std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count()
        << " us" << std::endl;
}

