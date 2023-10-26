#include "DataFrame/DataFrame.h"
#include "math.h"
#include <chrono>

// #define SLOW_DOWN 9

extern "C" {
    void * deref_disagg_vaddr(uint64_t);
    extern uint64_t local_remote_delimiter;
    // c functions, without any template parameter
    void __step1_get_col_unique_values(void*, void*);
    void __step2_get_data_by_sel(void*, void*);
    void __step3_visit_min(void*, void*);
    void __step3_visit_max(void*, void*);
    void __step3_visit_mean(void*, void*);
    void __step4_get_data_by_sel(void* arg, void* ret);
    void __step5_haversine_vec_load(void*, void*);
    void __step5_get_data_by_sel(void *, void *);
    extern void *step7_start;
    extern void *sbuf;
    void __step7_group_df(void *, void *);
}

// templated, c++ imples
template<typename T>
struct __v {
    T *p1, *p2, *p3;
};

template<typename T>
static inline void trans_vec(__v<T> *v) {
    v->p1 = (T *)deref_disagg_vaddr((uint64_t)(v->p1));
    v->p2 = (T *)deref_disagg_vaddr((uint64_t)(v->p2));
    v->p3 = (T *)deref_disagg_vaddr((uint64_t)(v->p3));
}

template<typename T>
static inline void detrans_vec(__v<T> *v) {
    v->p1 = (T *)((uint64_t)((char*)(v->p1) - (char*)sbuf) - 4096);
    v->p2 = (T *)((uint64_t)((char*)(v->p2) - (char*)sbuf) - 4096);
    v->p3 = (T *)((uint64_t)((char*)(v->p3) - (char*)sbuf) - 4096);
}

template<typename T>
size_t get_col_unique_values(const std::vector<T> & vec) {
    size_t N = vec.size();
    // auto                    hash_func =
    //     [](const T& v) -> std::size_t  {
    //         return(std::hash<T>{}(v));
    // };
    // auto                    equal_func =
    //     [](const T& lhs,
    //        const T& rhs) -> bool  {
    //         return(lhs == rhs);
    // };

    // std::unordered_set<T,
    //     decltype(hash_func),
    //     decltype(equal_func)>   table(vec.size(), hash_func, equal_func);
    std::unordered_set<int> table;
    std::vector<T> result;
    result.reserve(N);
    for (size_t i = 0; i < N; i++)  {
        T e = vec[i];
        const auto insert_ret = table.emplace(e);
        if (insert_ret.second)
            result.push_back(e);
    }

#ifdef SLOW_DOWN
    for (int l = 0; l < SLOW_DOWN; ++ l) {
        std::unordered_set<int> table_l;
        std::vector<T> result_l;
        result_l.reserve(N);
        for (size_t i = 0; i < N; i++)  {
            T e = vec[i];
            const auto insert_ret = table_l.emplace(e);
            if (insert_ret.second)
                result_l.push_back(e);
        }
        if (result_l.size() == 0) {
            printf("Dummy printer\n");
        }    
    }
#endif

    return(result.size());
}

void __step1_get_col_unique_values(void* arg, void* ret) {
    __v<int> *v = (__v<int> *)arg;
    // printf("ADDR %p\n", v->p1);
    trans_vec(v);
    size_t r = get_col_unique_values(* (std::vector<int> *)v);
    // printf("Res %lu\n", r);
    memcpy(ret, &r, sizeof(size_t)); 
}

static inline bool sel_vendor_functor(const int vvid, const int vid) {
    return vvid == vid;
}

static inline size_t step2_get_data_by_sel (
                            std::vector<size_t> &indices_,
                            std::vector<int>    &vec,   
                            int                 filter_vid,
                            std::vector<int>    &passanger,
                            std::vector<int>    &newvec) {

    const size_t idx_s = indices_.size();
    const size_t col_s = vec.size();
    std::vector<size_t>  col_indices;
    printf("%lu %lu\n", idx_s, col_s);
    // newvec.reserve(col_s);
    // TODO: measure col_indices size
    // make sure this do not trigger realloc
    // and consider remotelize

    col_indices.reserve(idx_s);
    for (size_t i = 0; i < col_s; ++i) {
        if (sel_vendor_functor (filter_vid, vec[i])) {
            (void) indices_[i];
            col_indices.push_back(i);
            // printf("%d\n", passanger[i]);
            newvec.push_back(passanger[i]);
            // printf("%d\n", newvec[i]);
        }
    }
#ifdef SLOW_DOWN
    std::vector<int> dummy_vec;
    std::vector<size_t> dummy_col;
    dummy_vec.reserve(idx_s);
    dummy_col.reserve(idx_s);
    for (int i = 0; i < SLOW_DOWN; ++ i) {
        for (size_t i = 0; i < col_s; ++i) {
            // printf("%d\n", vec[i]);
            if (sel_vendor_functor (filter_vid, vec[i])) {
                (void) indices_[i];
                dummy_col.push_back(i);
                // printf("%d\n", passanger[i]);
                dummy_vec[i] = passanger[i];
            }
        }
    }
#endif
    // Target column
    return newvec.size();
}


// size_t step2_get_data_by_sel(std::vector<size_t> &indices, 
//                              std::vector<int>      &filter_by,
//                              int                 vendor_id,
//                              std::vector<int>      &target);

void __step2_get_data_by_sel(void* arg, void* ret) {
    __v<size_t>  *indices   = (__v<size_t> *)arg;
    __v<int>     *filter_by = (__v<int> *) (indices + 1);
    int          *vendor_id = (int *) (filter_by + 1);
    __v<int>     *target    = (__v<int> *) (vendor_id + 1);
    __v<int>     *rnewvec   = (__v<int> *) (target + 1);

    printf("%p %p %p %p\n", indices->p1, filter_by->p1, target->p1, rnewvec->p1);
    trans_vec(indices);
    trans_vec(filter_by);
    trans_vec(target);
    trans_vec(rnewvec);
    printf("%p %p %p %p\n", indices->p1, filter_by->p1, target->p1, rnewvec->p1);

    size_t s = step2_get_data_by_sel(
        * (std::vector<size_t> *) indices,
        * (std::vector<int> *) filter_by,
        * vendor_id,
        * (std::vector<int> *) target,
        * (std::vector<int> *) rnewvec
    );

    // std::vector<int> &lrnewvec = * (std::vector<int> *) rnewvec;
    // for (const auto & e : lrnewvec) {
    //     printf("%d\n", e);
    // }

    * (size_t *) ret = s;
    // memcpy(ret, &r, sizeof(size_t)); 
}

//================== Offload 3 ======================//

template <typename D, typename I = size_t>
class MaxVisitor {
public:
  I index_ = 0;
  D max_ = 0;
  bool is_first = true;

  void pre() {}
  void post() {}
  void operator()(I idx, D dat) {
    // printf("%lu\n", dat);
    if (is_first || dat > max_) {
      max_ = dat;
      index_ = idx;
      is_first = false;
        // printf("update max %lu\n", max_);
    }
  }
  D get_result () const  { return (max_); }
  I get_index () const  { return (index_); }
};

template <typename D, typename I = size_t>
class MinVisitor {
public:
  I index_ = 0;
  D min_ = 0;
  bool is_first = true;

  void pre() {}
  void post() {}
  void operator()(I idx, D dat) {
    if (is_first || dat < min_) {
      min_ = dat;
      index_ = idx;
      is_first = false;
    }
  }
  D get_result () const  { return (min_); }
  I get_index () const  { return (index_); }
};

template <typename D, typename I = size_t>
class MeanVisitor {
public:
  D mean_ = 0;
  size_t cnt_ = 0;

  void pre() { mean_ = 0; cnt_ = 0; }
  void post() {}
  void operator()(I idx, D dat) {
    mean_ += dat;
    cnt_ ++;
  }
  size_t get_count () const  { return (cnt_); }
  D get_sum () const  { return (mean_); }
  D get_result () const  {
    return (mean_ / D(cnt_));
  }
};

template<typename T, typename V>
V visit (std::vector<size_t> &indices_, std::vector<T> &vec, V &visitor)  {
    const size_t    idx_s = indices_.size();
    const size_t    min_s = std::min<size_t   >(vec.size(), idx_s);
    visitor.pre();
    for (size_t i = 0; i < min_s; ++i) {
        // printf("%lu\n", vec[i]);
        visitor (indices_[i], vec[i]);
    }
    visitor.post();
    return (visitor);
}

void __step3_visit_min(void* arg, void* ret) {
    __v<size_t>  *indices   = (__v<size_t> *)arg;
    __v<uint64_t> *vec = (__v<uint64_t> *) (indices + 1);

    trans_vec(indices);
    trans_vec(vec);

    MinVisitor<uint64_t> visitor;

    MinVisitor<uint64_t> ret_visitor = visit(
        * (std::vector<size_t> *) indices, 
        * (std::vector<uint64_t> *) vec, 
        visitor
    );

    * (MinVisitor<uint64_t> *) ret = ret_visitor;

#ifdef SLOW_DOWN
    for (int l = 0; l < SLOW_DOWN; ++ l) {
        MinVisitor<uint64_t> ret_visitor = visit(
            * (std::vector<size_t> *) indices, 
            * (std::vector<uint64_t> *) vec, 
            visitor
        );
        if (ret_visitor.get_index() == 0) {
            printf("err\n");
        }
    }
#endif

}

void __step3_visit_max(void* arg, void* ret) {
    __v<size_t>  *indices   = (__v<size_t> *)arg;
    __v<uint64_t> *vec = (__v<uint64_t> *) (indices + 1);

    trans_vec(indices);
    trans_vec(vec);
    MaxVisitor<uint64_t> visitor;

    MaxVisitor<uint64_t> ret_visitor = visit(
        * (std::vector<size_t> *) indices, 
        * (std::vector<uint64_t> *) vec, 
        visitor
    );

    * (MaxVisitor<uint64_t> *) ret = ret_visitor;

#ifdef SLOW_DOWN
    for (int l = 0; l < SLOW_DOWN; ++ l) {
        MaxVisitor<uint64_t> ret_visitor = visit(
            * (std::vector<size_t> *) indices, 
            * (std::vector<uint64_t> *) vec, 
            visitor
        );
        if (ret_visitor.get_index() == 0) {
            printf("err\n");
        }
    }
#endif
}


void __step3_visit_mean(void* arg, void* ret) {
    __v<size_t>  *indices   = (__v<size_t> *)arg;
    __v<uint64_t> *vec = (__v<uint64_t> *) (indices + 1);

    trans_vec(indices);
    trans_vec(vec);
    MeanVisitor<uint64_t> visitor;

    MeanVisitor<uint64_t> ret_visitor = visit(
        * (std::vector<size_t> *) indices, 
        * (std::vector<uint64_t> *) vec, 
        visitor
    );

    * (MeanVisitor<uint64_t> *) ret = ret_visitor;
#ifdef SLOW_DOWN
    for (int l = 0; l < SLOW_DOWN; ++ l) {
        MeanVisitor<uint64_t> ret_visitor = visit(
            * (std::vector<size_t> *) indices, 
            * (std::vector<uint64_t> *) vec, 
            visitor
        );
        if (ret_visitor.get_sum() == 0) {
            printf("err\n");
        }
    }
#endif
}

static inline bool sel_N_saff_functor(const char ssaff, const char saff) {
    return ssaff == saff;
}

static inline size_t step4_get_data_by_sel (
                            std::vector<size_t> &indices_,
                            std::vector<char>   &vec,   
                            char                filter_saff,
                            std::vector<int>    &vids,
                            std::vector<int>    &newvec) {

    const size_t idx_s = indices_.size();
    const size_t col_s = vec.size();
    std::vector<size_t>  col_indices;
    // newvec.reserve(col_s);  

    // TODO: measure col_indices size
    // make sure this do not trigger realloc
    // and consider remotelize
    // col_indices.reserve(idx_s);
    col_indices.reserve(idx_s);
    for (size_t i = 0; i < col_s; ++i)
        if (sel_vendor_functor (filter_saff, vec[i])) {
            (void) indices_[i];
            col_indices.push_back(i);
            newvec.push_back(vids[i]);
        }
#ifdef SLOW_DOWN
    std::vector<int> dummy_vec;
    std::vector<size_t> dummy_col;
    dummy_vec.reserve(idx_s);
    dummy_col.reserve(idx_s);

    for (int i = 0; i < SLOW_DOWN; ++ i) {
    for (size_t i = 0; i < col_s; ++i)
        if (sel_vendor_functor (filter_saff, vec[i])) {
            (void) indices_[i];
            dummy_col.push_back(i);
            dummy_vec[i] = vids[i];
        }
    }
#endif
    // Target column
    return newvec.size();
}


void __step4_get_data_by_sel(void* arg, void* ret) {
    __v<size_t>  *indices   = (__v<size_t> *)arg;
    __v<char>    *filter_by = (__v<char> *) (indices + 1);
    char         *saff      = (char *) (filter_by + 1);
    __v<int>     *target    = (__v<int> *) (saff + 1);
    __v<int>     *rnewvec   = (__v<int> *) (target + 1);

    trans_vec(indices);
    trans_vec(filter_by);
    trans_vec(target);
    trans_vec(rnewvec);

    printf("%p %p %p %p\n", indices->p1, filter_by->p1, target->p1, rnewvec->p1);

    size_t s = step4_get_data_by_sel(
        * (std::vector<size_t> *) indices,
        * (std::vector<char> *) filter_by,
        * saff,
        * (std::vector<int> *) target,
        * (std::vector<int> *) rnewvec
    );
    * (size_t *) ret = s;
    // memcpy(ret, &r, sizeof(size_t)); 
}

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

void __step5_haversine_vec_load(void* arg, void* ret) {
    __v<double>  *plon = (__v<double> *) arg;
    __v<double>  *plat = (__v<double> *) (plon + 1);
    __v<double>  *dlon = (__v<double> *) (plat + 1);
    __v<double>  *dlat = (__v<double> *) (dlon + 1);
    __v<double>  *haverd = (__v<double> *) (dlat + 1);

    trans_vec(plon);
    trans_vec(plat);
    trans_vec(dlon);
    trans_vec(dlat);
    trans_vec(haverd);

    std::vector<double> &plon_vec = * (std::vector<double> *) plon;
    std::vector<double> &plat_vec = * (std::vector<double> *) plat;
    std::vector<double> &dlon_vec = * (std::vector<double> *) dlon;
    std::vector<double> &dlat_vec = * (std::vector<double> *) dlat;
    std::vector<double> &haversine_distance_vec = * (std::vector<double> *) haverd;

    size_t N = plon_vec.size();
    for (uint64_t i = 0; i < N; i++) {
        haversine_distance_vec[i] = (haversine(plat_vec[i], plon_vec[i],
                                                   dlat_vec[i],
                                                   dlon_vec[i]));
    }

#ifdef SLOW_DOWN
    double dummy = 0.0;
    for (int l = 0; l < SLOW_DOWN; ++ l) {
        for (uint64_t i = 0; i < N; i++) {
            dummy += (haversine(plat_vec[i], plon_vec[i],
                                                    dlat_vec[i],
                                                    dlon_vec[i]));
        }
    }
    (void)dummy;
#endif

}

// c = 100
static inline bool sel_dist_functor(const double c, const double dist) {
    return dist > c;
}

static inline size_t step5_get_data_by_sel(
        std::vector<size_t> &indices_,
        std::vector<double> &vec,   
        double filter_dist,
        std::vector<int>    &vids,
        std::vector<int>    &newvec) {

    const size_t idx_s = indices_.size();
    const size_t col_s = vec.size();
    std::vector<size_t>  col_indices;

    // make sure this do not trigger realloc
    // and consider remotelize
    for (size_t i = 0; i < col_s; ++i)
        if (sel_dist_functor (filter_dist, vec[i])) {
            (void) indices_[i];
            col_indices.push_back(i);
            newvec.push_back(vids[i]);
        }

    // Target column
    return newvec.size();

}

void __step5_get_data_by_sel(void *arg, void *ret) {
    __v<size_t>  *indices   = (__v<size_t> *)arg;
    __v<double>     *filter_by = (__v<double> *) (indices + 1);
    double *dist = (double *) (filter_by + 1);
    __v<int>     *target    = (__v<int> *) (dist + 1);
    __v<int>     *rnewvec   = (__v<int> *) (target + 1);

    trans_vec(indices);
    trans_vec(filter_by);
    trans_vec(target);
    trans_vec(rnewvec);

    // printf("%f\n", *dist);

    size_t s = step5_get_data_by_sel(
        * (std::vector<size_t> *) indices,
        * (std::vector<double> *) filter_by,
        * dist,
        * (std::vector<int> *) target,
        * (std::vector<int> *) rnewvec
    );
    * (size_t *) ret = s;
}

const char* keys[2] = { "pickup_day", "pickup_month" };

void __step7_group_df(void *arg, void *ret) {
    __v<size_t>   *indices   = (__v<size_t> *)arg;
    __v<short>    *key_col   = (__v<short> *) (indices + 1);
    int *ikey = (int *) (key_col + 1);
    __v<uint64_t> *duration  = (__v<uint64_t> *) (ikey + 1);

    trans_vec(indices);
    trans_vec(key_col);
    trans_vec(duration); 
    const char *key_col_name = keys[*ikey];

    std::vector<size_t> *idx_vec = (std::vector<size_t> *) indices;
    std::vector<short> *key_col_vec = (std::vector<short> *) key_col;
    std::vector<uint64_t> *duration_vec = (std::vector<uint64_t> *) duration;

    std::vector<size_t> copy_index(*idx_vec);
    std::vector<short> copy_key_col(*key_col_vec);
    std::vector<uint64_t> copy_key_duration(*duration_vec);

    hmdf::StdDataFrame<uint64_t> df_key_duration;
    df_key_duration.load_data(std::move(copy_index),
                              std::make_pair(key_col_name, std::move(copy_key_col)),
                              std::make_pair("duration", std::move(copy_key_duration)));
    hmdf::StdDataFrame<uint64_t> groupby_key =
    df_key_duration.groupby<hmdf::GroupbyMedian, short, short, uint64_t>(hmdf::GroupbyMedian(), key_col_name);


    auto &key_map_vec      = groupby_key.get_column<short>(key_col_name);
    size_t key_vec_size = key_map_vec.size();
    auto &duration_map_vec = groupby_key.get_column<uint64_t>("duration");   
    size_t duration_vec_size = duration_map_vec.size();


    short *key_col_base = (short *) step7_start;
    uint64_t *duration_base = (uint64_t *) (key_col_base + key_vec_size);

    __v<short> key_rv = { key_col_base, key_col_base + key_vec_size, key_col_base + key_vec_size };
    __v<uint64_t> duration_rv = { duration_base, duration_base + duration_vec_size, duration_base + duration_vec_size};

    __v<short> *key_lv = (__v<short> *) &key_map_vec;
    __v<uint64_t> *duration_lv = (__v<uint64_t> *) &duration_map_vec;


    memcpy(key_rv.p1, key_lv->p1, sizeof(short) * key_vec_size);
    memcpy(duration_rv.p1, duration_lv->p1, sizeof(uint64_t) * duration_vec_size);
    printf("%p %p\n", key_rv.p1, duration_rv.p1);
    detrans_vec(&key_rv);
    detrans_vec(&duration_rv);

    __v<short> *gep_ret_key = (__v<short> *) ret;

    *gep_ret_key = key_rv;
    * (__v<uint64_t> *) (gep_ret_key + 1) = duration_rv;

#ifdef SLOW_DOWN
    for (int i = 0; i < SLOW_DOWN; ++ i) {
        std::vector<size_t> copy_index(*idx_vec);
        std::vector<short> copy_key_col(*key_col_vec);
        std::vector<uint64_t> copy_key_duration(*duration_vec);
        hmdf::StdDataFrame<uint64_t> df_key_duration_dummy;
        df_key_duration_dummy.load_data(std::move(copy_index),
                                std::make_pair(key_col_name, std::move(copy_key_col)),
                                std::make_pair("duration", std::move(copy_key_duration)));
        hmdf::StdDataFrame<uint64_t> groupby_key =
        df_key_duration.groupby<hmdf::GroupbyMedian, short, short, uint64_t>(hmdf::GroupbyMedian(), key_col_name); 
        std::vector<size_t> &idxd = groupby_key.get_index();
        if (idxd.size() == 0) 
            printf("err\n");
    }
#endif


    return;
}