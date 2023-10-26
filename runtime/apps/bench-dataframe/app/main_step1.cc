#include <vector>
#include <chrono>
#include "internal.h"
#include "rvector.h"
#include "cache.h"
#include "common.h"
#include "offload.h"

template<typename T>
size_t get_col_unique_values(const std::vector<T> & vec) {
    size_t N = vec.size();
    // TODO: disagg this variable
    std::vector<T>              result;
    result.reserve(N);

    // for (size_t i = 0; i < N; i++)  {
    //     T e = vec[i];
    //     if (step1_firstTime(e))
    //         result.push_back(e);
    // }
    void *p = (void *)&vec[0];
    // printf("%lu\n", remoteAddr(p));
    rring_init(vids, int, (2 << 20), 32, (size_t) ((char*)rbuf + (8 << 20)), remoteAddr(p));

    rring_outer_loop(vids, int, N) {

        rring_prefetch(vids, 4);
        rring_inner_preloop(vids, int);
        rring_sync(vids);

        rring_inner_loop(vids, j) {
            T e = _inner_vids[j];
            if (step1_firstTime(e))
                result.push_back(e);
        }
    }
    return(result.size());
}

void print_number_vendor_ids_and_unique()
{
    printf("print_number_vendor_ids_and_unique()\n");
    printf("number of vendor_ids in the train dataset: %ld\n", 
        get_column<int>("VendorID").size());

    // rvector<int> *vids = (rvector<int> *) &get_column<int>("VendorID");
    // * ((rvector<int> *) offload_arg_buf) = *vids;
    // size_t unique_count = *(size_t *) call_offloaded_service(1, sizeof(*vids), sizeof(size_t));

    printf("Number of unique vendor_ids in the train dataset: %ld\n\n",
        get_col_unique_values(get_column<int>("VendorID")));
}

int main()
{
    init_client();
    cache_init();
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    void * df  = load_data();
    times[0] = std::chrono::steady_clock::now();
    print_number_vendor_ids_and_unique();
    times[1] = std::chrono::steady_clock::now();
    printf("Step 1: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());
}

