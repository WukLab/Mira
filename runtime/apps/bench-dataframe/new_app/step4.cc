#include <vector>
#include <unordered_set>
#include <chrono>
#include "internal.h"


template <typename F, typename T>
void get_vid_by_storefwd(F &sel_func, std::vector<T> &to) {
    const std::vector<size_t> &_indices = *index_col;
    const std::vector<char> &by_col = *store_fwd_col;
    const std::vector<int> &from_col = *vendor_id_col;
    const size_type         col_s = by_col.size();

    // TODO: measure col_indices size
    // make sure this do not trigger realloc
    // and consider remotelize
    to.reserve(col_s);
    for (size_type i = 0; i < col_s; ++i) {
        size_type id = _indices[i];
        char by_e = by_col[i];
        int from_e = from_col[i];
        if (sel_func (id, by_e)) {
            to.push_back(from_e);
        }
    }
    return;
}

void calculate_distribution_store_and_fwd_flag()
{
    printf("calculate_distribution_store_and_fwd_flag()\n");

    auto sel_N_saff_functor = [&](const uint64_t&, const char& saff) -> bool {
        return saff == 'N';
    };

    std::vector<int> sel_whatever;
    get_vid_by_storefwd(sel_N_saff_functor, sel_whatever);

    printf("%f\n", static_cast<double>(sel_whatever.size()) / get_index().size());

    auto sel_Y_saff_functor = [&](const uint64_t&, const char& saff) -> bool {
        return saff == 'Y';
    };

    std::vector<int> sel_vendor_ids;
    get_vid_by_storefwd(sel_Y_saff_functor, sel_vendor_ids);

    std::vector<int> unique_vendor_id_vec;
    size_t N = sel_vendor_ids.size();
    for (size_t i = 0; i < N; i++)  {
        int e = sel_vendor_ids[i];
        if (step4_firstTime(e))
            unique_vendor_id_vec.push_back(e);
    }
    printf("{");
    for (auto& vector_id : unique_vendor_id_vec) {
        printf("%d, ", vector_id);
    }
    printf("}\n\n");
}

int main()
{
    ext_setup();
    std::chrono::time_point<std::chrono::steady_clock> times[10];
    times[0] = std::chrono::steady_clock::now();
    calculate_distribution_store_and_fwd_flag();
    times[1] = std::chrono::steady_clock::now();
    printf("Step 4: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());
}
