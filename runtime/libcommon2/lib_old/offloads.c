#include "remote_pool.h"

#define MAX_SERVICES 1024

static rpc_service_t __services[1024];

rpc_service_t *services = &__services[0];

void __service_sum(void *, void*);
// void __step1_get_col_unique_values(void*, void*);
// void __step2_get_data_by_sel(void*, void*);
// void __step3_visit_min(void*, void*);
// void __step3_visit_max(void*, void*);
// void __step3_visit_mean(void*, void*);
// void __step4_get_data_by_sel(void*, void*);
// void __step5_haversine_vec_load(void*, void*);
// void __step5_get_data_by_sel(void *, void *);
// void __step7_group_df(void *, void *);

void init_rpc_services() {
    // __services[0] = __service_sum;
    // __services[1] = __step1_get_col_unique_values;
    // __services[2] = __step2_get_data_by_sel;
    // __services[3] = __step3_visit_min;
    // __services[4] = __step3_visit_max;
    // __services[5] = __step3_visit_mean;
    // __services[6] = __step4_get_data_by_sel;
    // __services[7] = __step5_haversine_vec_load;
    // __services[8] = __step5_get_data_by_sel;
    // __services[9] = __step7_group_df;
}
