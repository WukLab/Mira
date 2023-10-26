#ifndef _INTERNAL_H__
#define _INTERNAL_H__

#include <vector>

typedef size_t size_type;
struct SimpleTime;

template<typename T>
std::vector<T>& get_column(const char * name);
template<typename T>
void load_column(const char *name, std::vector<T> &&vec);

template <typename T>
void vec_set_size(std::vector<T> &v, size_t s);

void * load_data();
extern template std::vector<char>& get_column<char>(const char *name);
extern template std::vector<short>& get_column<short>(const char *);
extern template std::vector<int>& get_column<int>(const char *name);
extern template std::vector<uint64_t>& get_column<uint64_t>(const char *name);
extern template std::vector<double>& get_column<double>(const char *name);

extern std::vector<size_t>& get_index();
extern template void vec_set_size<uint64_t>(std::vector<uint64_t> &v, size_t s); 
extern template void vec_set_size<double>(std::vector<double> &v, size_t s);

extern template void
load_column<uint64_t>(const char *name, std::vector<uint64_t> &&vec);
extern template void
load_column<double>(const char *name, std::vector<double> &&vec);

extern bool step1_firstTime(int i);

extern void step21_passage_count(int pid);
extern void step21_count_result();

extern void step22_passage_count(int pid);
extern void step22_count_result();

extern bool step4_firstTime(int i);

extern void load_trip_timestamp();
extern void load_duration_trip_timestamp();

extern void step7_do_process(const char* key_col_name);

extern void step7_process_after_copy(const char *key_col_name,
                                     std::vector<size_t> &index,
                                     std::vector<short> &key_col,
                                     std::vector<uint64_t> &duration);

extern void ext_setup();

extern std::vector<int> *vendor_id_col;
extern std::vector<SimpleTime> *pick_date_col;
extern std::vector<SimpleTime> *drop_date_col;
extern std::vector<int> *psg_cnt_col;
extern std::vector<double> *pick_long_col;
extern std::vector<double> *pick_lat_col;
extern std::vector<char> *store_fwd_col;
extern std::vector<double> *drop_long_col;
extern std::vector<double> *drop_lat_col;
extern std::vector<size_t> *index_col;
extern std::vector<uint64_t> *duration_col;
extern std::vector<double> *haversine_col;
extern std::vector<short> *pick_day_col;
extern std::vector<short> *pick_month_col;


#endif
