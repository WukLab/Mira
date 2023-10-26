#include <vector>
#include <unordered_set>
#include <chrono>
#include "internal.h"

size_t get_vid_unique_values() {
    auto &vec = *vendor_id_col;
    size_t N = vec.size();
    // TODO: disagg this variable
    std::vector<int> result;
    result.reserve(N);

    for (size_t i = 0; i < N; i++)  {
        int e = vec[i];
        if (step1_firstTime(e))
            result.push_back(e);
    }

    return(result.size());
}


void print_number_vendor_ids_and_unique()
{
    printf("print_number_vendor_ids_and_unique()\n");
    printf("number of vendor_ids in the train dataset: %ld\n", 
        vendor_id_col->size());
    printf("Number of unique vendor_ids in the train dataset: %ld\n\n",
        get_vid_unique_values());
}

int main()
{
    ext_setup();
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    times[0] = std::chrono::steady_clock::now();
    print_number_vendor_ids_and_unique();
    times[1] = std::chrono::steady_clock::now();
    printf("Step 1: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());
}

