#include <vector>
#include <chrono>
#include "internal.h"
#include "rvector.h"
#include "cache.h"
#include "common.h"
#include "offload.h"
#include "simple_time.hpp"

// total num_eles approx 128 * 1024 * 1024
const size_t s1_nb = 512 * 1024;
const size_t s1_n_block = 256;  


// total 30 GB -> local X * 30
rring_init(rvid,       int,        s1_nb * sizeof(int),        s1_n_block, 0, 8192);
rring_init(rpickdate,  SimpleTime, s1_nb * sizeof(SimpleTime), s1_n_block, 0, 8192 + (1ULL << 30));
rring_init(rdropdate,  SimpleTime, s1_nb * sizeof(SimpleTime), s1_n_block, 0, 8192 + (2ULL << 30));
rring_init(rpsgcnt,    int,        s1_nb * sizeof(int),        s1_n_block, 0, 8192 + (3ULL << 30));
rring_init(rtripdist,  double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (4ULL << 30));
rring_init(rplon,      double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (5ULL << 30));
rring_init(rplat,      double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (6ULL << 30));
rring_init(rrateid,    int,        s1_nb * sizeof(int),        s1_n_block, 0, 8192 + (7ULL << 30));
rring_init(rflag,      char,       s1_nb * sizeof(char),       s1_n_block, 0, 8192 + (8ULL << 30));
rring_init(rdlon,      double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (9ULL << 30));
rring_init(rdlat,      double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (10ULL << 30));
rring_init(rptype,     int,        s1_nb * sizeof(int),        s1_n_block, 0, 8192 + (11ULL << 30));
rring_init(rfare,      double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (12ULL << 30));
rring_init(rextra,     double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (13ULL << 30));
rring_init(rmta,       double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (14ULL << 30));
rring_init(rtip,       double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (15ULL << 30));
rring_init(rtolls,     double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (16ULL << 30));
rring_init(rimpv,      double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (17ULL << 30));
rring_init(rtotal,     double,     s1_nb * sizeof(double),     s1_n_block, 0, 8192 + (18ULL << 30));
rring_init(rids,       size_t,     s1_nb * sizeof(size_t),     s1_n_block, 0, 8192 + (19ULL << 30));

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

    rring_outer_loop(rvid, int, N) {

        rring_prefetch(rvid, 16);
        rring_inner_preloop(rvid, int);
        rring_sync(rvid);

        rring_inner_loop(rvid, j) {
            T e = _inner_rvid[j];
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

    void * df  = load_data();

_lbase_rvid = (uint64_t) rbuf;
_lbase_rpickdate = (uint64_t) rbuf + (1ULL << 30);
_lbase_rdropdate = (uint64_t) rbuf + (2ULL << 30);
_lbase_rpsgcnt = (uint64_t) rbuf + (3ULL << 30);
_lbase_rtripdist = (uint64_t) rbuf + (4ULL << 30);
_lbase_rplon = (uint64_t) rbuf + (5ULL << 30);
_lbase_rplat = (uint64_t) rbuf + (6ULL << 30);
_lbase_rrateid = (uint64_t) rbuf + (7ULL << 30);
_lbase_rflag = (uint64_t) rbuf + (8ULL << 30);
_lbase_rdlon = (uint64_t) rbuf + (9ULL << 30);
_lbase_rdlat = (uint64_t) rbuf + (10ULL << 30);
_lbase_rptype = (uint64_t) rbuf + (11ULL << 30);
_lbase_rfare = (uint64_t) rbuf + (12ULL << 30);
_lbase_rextra = (uint64_t) rbuf + (13ULL << 30);
_lbase_rmta = (uint64_t) rbuf + (14ULL << 30);
_lbase_rtip = (uint64_t) rbuf + (15ULL << 30);
_lbase_rtolls = (uint64_t) rbuf + (16ULL << 30);
_lbase_rimpv = (uint64_t) rbuf + (17ULL << 30);
_lbase_rtotal = (uint64_t) rbuf + (18ULL << 30);
_lbase_rids = (uint64_t) rbuf + (19ULL << 30);

{
    auto &vidx = get_index();
    rvector<size_t> * rv_idx = (rvector<size_t> *) &vidx;
    size_t s = vidx.size();
    size_t c = vidx.capacity();
    rring_outer_loop(rids, size_t, c) {
    rring_inner_preloop(rids, size_t);
    rring_sync_writeonly(rids);
    rring_inner_loop(rids, j) {
        size_t nth = _t_rids * _bn_rids + j;
        _inner_rids[j] = rv_idx->head[nth];
    }
    rring_inner_wb(rids);
    }
    rring_cleanup_writeonly(rids);
    vidx.clear();
    vidx.shrink_to_fit();
    rv_idx->head = (size_t *) (4096ULL);
    rv_idx->end  = rv_idx->head + s;
    rv_idx->tail = rv_idx->head + c;
    printf("index remote\n");
}

{
    auto &vendorid = get_column<int>("VendorID");
    rvector<int> * rv_vendorid = (rvector<int> *) &vendorid;
    size_t s = vendorid.size();
    size_t c = vendorid.capacity();
    rring_outer_loop(rvid, int, c) {
    rring_inner_preloop(rvid, int);
    rring_sync_writeonly(rvid);
    rring_inner_loop(rvid, j) {
        size_t nth = _t_rvid * _bn_rvid + j;
        _inner_rvid[j] = rv_vendorid->head[nth];
    }
    rring_inner_wb(rvid);
    }
    rring_cleanup_writeonly(rvid);
    vendorid.clear();
    vendorid.shrink_to_fit();
    rv_vendorid->head = (int *) (4096ULL + (1ULL << 30));
    rv_vendorid->end  = rv_vendorid->head + s;
    rv_vendorid->tail = rv_vendorid->head + c;
    printf("VendorID remote\n");
}
#if 0
{
    auto &pickupvec = get_column<SimpleTime>("tpep_pickup_datetime");
    rvector<SimpleTime> * rv_pick = (rvector<SimpleTime> *) &pickupvec;
    size_t s = pickupvec.size();
    size_t c = pickupvec.capacity();
    rring_outer_loop(rpickdate, SimpleTime, c) {
    rring_inner_preloop(rpickdate, SimpleTime);
    rring_sync_writeonly(rpickdate);
    rring_inner_loop(rpickdate, j) {
        size_t nth = _t_rpickdate * _bn_rpickdate + j;
        _inner_rpickdate[j] = rv_pick->head[nth];
    }
    rring_inner_wb(rpickdate);
    }
    rring_cleanup_writeonly(rpickdate);
    pickupvec.clear();
    pickupvec.shrink_to_fit();
    rv_pick->head = (SimpleTime *) (4096ULL + (2ULL << 30));
    rv_pick->end  = rv_pick->head + s;
    rv_pick->tail = rv_pick->head + c;
    printf("pickup remote\n");
}


{
    auto &dropvec = get_column<SimpleTime>("tpep_dropoff_datetime");
    rvector<SimpleTime> * rv_drop = (rvector<SimpleTime> *) &dropvec;
    size_t s = dropvec.size();
    size_t c = dropvec.capacity();
    rring_outer_loop(rdropdate, SimpleTime, c) {
    rring_inner_preloop(rdropdate, SimpleTime);
    rring_sync_writeonly(rdropdate);
    rring_inner_loop(rdropdate, j) {
        size_t nth = _t_rdropdate * _bn_rdropdate + j;
        _inner_rdropdate[j] = rv_drop->head[nth];
    }
    rring_inner_wb(rdropdate);
    }
    rring_cleanup_writeonly(rdropdate);
    dropvec.clear();
    dropvec.shrink_to_fit();
    rv_drop->head = (SimpleTime *) (4096ULL + (3ULL << 30));
    rv_drop->end  = rv_drop->head + s;
    rv_drop->tail = rv_drop->head + c;
    printf("dropoff remote\n");
}

{
    auto &psgvec = get_column<int>("passenger_count");
    rvector<int> * rv_psg = (rvector<int> *) &psgvec;
    size_t s = psgvec.size();
    size_t c = psgvec.capacity();
    rring_outer_loop(rpsgcnt, int, c) {
    rring_inner_preloop(rpsgcnt, int);
    rring_sync_writeonly(rpsgcnt);
    rring_inner_loop(rpsgcnt, j) {
        size_t nth = _t_rpsgcnt * _bn_rpsgcnt + j;
        _inner_rpsgcnt[j] = rv_psg->head[nth];
    }
    rring_inner_wb(rpsgcnt);
    }
    rring_cleanup_writeonly(rpsgcnt);
    psgvec.clear();
    psgvec.shrink_to_fit();
    rv_psg->head = (int *) (4096ULL + (4ULL << 30));
    rv_psg->end  = rv_psg->head + s;
    rv_psg->tail = rv_psg->head + c;
    printf("psg cnt remote\n");
}

{
    auto &distvec = get_column<double>("trip_distance");
    rvector<double> * rv_dist = (rvector<double> *) &distvec;
    size_t s = distvec.size();
    size_t c = distvec.capacity();
    rring_outer_loop(rtripdist, double, c) {
    rring_inner_preloop(rtripdist, double);
    rring_sync_writeonly(rtripdist);
    rring_inner_loop(rtripdist, j) {
        size_t nth = _t_rtripdist * _bn_rtripdist + j;
        _inner_rtripdist[j] = rv_dist->head[nth];
    }
    rring_inner_wb(rtripdist);
    }
    rring_cleanup_writeonly(rtripdist);
    distvec.clear();
    distvec.shrink_to_fit();
    rv_dist->head = (double *) (4096ULL + (5ULL << 30));
    rv_dist->end  = rv_dist->head + s;
    rv_dist->tail = rv_dist->head + c;
    printf("trip dist remote\n");
}

{
    auto &plonvec = get_column<double>("pickup_longitude");
    rvector<double> * rv_plon = (rvector<double> *) &plonvec;
    size_t s = plonvec.size();
    size_t c = plonvec.capacity();
    rring_outer_loop(rplon, double, c) {
    rring_inner_preloop(rplon, double);
    rring_sync_writeonly(rplon);
    rring_inner_loop(rplon, j) {
        size_t nth = _t_rplon * _bn_rplon + j;
        _inner_rplon[j] = rv_plon->head[nth];
    }
    rring_inner_wb(rplon);
    }
    rring_cleanup_writeonly(rplon);
    plonvec.clear();
    plonvec.shrink_to_fit();
    rv_plon->head = (double *) (4096ULL + (6ULL << 30));
    rv_plon->end  = rv_plon->head + s;
    rv_plon->tail = rv_plon->head + c;
    printf("pickup lon remote\n");
}

{
    auto &platvec = get_column<double>("pickup_latitude");
    rvector<double> * rv_plat = (rvector<double> *) &platvec;
    size_t s = platvec.size();
    size_t c = platvec.capacity();
    rring_outer_loop(rplat, double, c) {
    rring_inner_preloop(rplat, double);
    rring_sync_writeonly(rplat);
    rring_inner_loop(rplat, j) {
        size_t nth = _t_rplat * _bn_rplat + j;
        _inner_rplat[j] = rv_plat->head[nth];
    }
    rring_inner_wb(rplat);
    }
    rring_cleanup_writeonly(rplat);
    platvec.clear();
    platvec.shrink_to_fit();
    rv_plat->head = (double *) (4096ULL + (7ULL << 30));
    rv_plat->end  = rv_plat->head + s;
    rv_plat->tail = rv_plat->head + c;
    printf("pickup lat remote\n");
}
{
    auto &ratevec = get_column<int>("RatecodeID");
    rvector<int> * rv_rate = (rvector<int> *) &ratevec;
    size_t s = ratevec.size();
    size_t c = ratevec.capacity();
    rring_outer_loop(rrateid, int, c) {
    rring_inner_preloop(rrateid, int);
    rring_sync_writeonly(rrateid);
    rring_inner_loop(rrateid, j) {
        size_t nth = _t_rrateid * _bn_rrateid + j;
        _inner_rrateid[j] = rv_rate->head[nth];
    }
    rring_inner_wb(rrateid);
    }
    rring_cleanup_writeonly(rrateid);
    ratevec.clear();
    ratevec.shrink_to_fit();
    rv_rate->head = (int *) (4096ULL + (8ULL << 30));
    rv_rate->end  = rv_rate->head + s;
    rv_rate->tail = rv_rate->head + c;
    printf("ratecodeID remote\n");
}
{
    auto &flag_vec = get_column<char>("store_and_fwd_flag");
    rvector<char> * rv_flag = (rvector<char> *) &flag_vec;
    size_t s = flag_vec.size();
    size_t c = flag_vec.capacity();
    rring_outer_loop(rflag, char, c) {
    rring_inner_preloop(rflag, char);
    rring_sync_writeonly(rflag);
    rring_inner_loop(rflag, j) {
        size_t nth = _t_rflag * _bn_rflag + j;
        _inner_rflag[j] = rv_flag->head[nth];
    }
    rring_inner_wb(rflag);
    }
    rring_cleanup_writeonly(rflag);
    flag_vec.clear();
    flag_vec.shrink_to_fit();
    rv_flag->head = (char *) (4096ULL + (9ULL << 30));
    rv_flag->end  = rv_flag->head + s;
    rv_flag->tail = rv_flag->head + c;
    printf("store and fwd flag remote\n");
}
{
    auto &dlon_vec = get_column<double>("dropoff_longitude");
    rvector<double> * rv_dlon = (rvector<double> *) &dlon_vec;
    size_t s = dlon_vec.size();
    size_t c = dlon_vec.capacity();
    rring_outer_loop(rdlon, double, c) {
    rring_inner_preloop(rdlon, double);
    rring_sync_writeonly(rdlon);
    rring_inner_loop(rdlon, j) {
        size_t nth = _t_rdlon * _bn_rdlon + j;
        _inner_rdlon[j] = rv_dlon->head[nth];
    }
    rring_inner_wb(rdlon);
    }
    rring_cleanup_writeonly(rdlon);
    dlon_vec.clear();
    dlon_vec.shrink_to_fit();
    rv_dlon->head = (double *) (4096ULL + (10ULL << 30));
    rv_dlon->end  = rv_dlon->head + s;
    rv_dlon->tail = rv_dlon->head + c;
    printf("dropoff lon remote\n");
}
{
    auto &dlat_vec = get_column<double>("dropoff_latitude");
    rvector<double> * rv_dlat = (rvector<double> *) &dlat_vec;
    size_t s = dlat_vec.size();
    size_t c = dlat_vec.capacity();
    rring_outer_loop(rdlat, double, c) {
    rring_inner_preloop(rdlat, double);
    rring_sync_writeonly(rdlat);
    rring_inner_loop(rdlat, j) {
        size_t nth = _t_rdlat * _bn_rdlat + j;
        _inner_rdlat[j] = rv_dlat->head[nth];
    }
    rring_inner_wb(rdlat);
    }
    rring_cleanup_writeonly(rdlat);
    dlat_vec.clear();
    dlat_vec.shrink_to_fit();
    rv_dlat->head = (double *) (4096ULL + (11ULL << 30));
    rv_dlat->end  = rv_dlat->head + s;
    rv_dlat->tail = rv_dlat->head + c;
    printf("dropoff lat remote\n");
}
{
    auto &type_vec = get_column<int>("payment_type");
    rvector<int> * rv_type = (rvector<int> *) &type_vec;
    size_t s = type_vec.size();
    size_t c = type_vec.capacity();
    rring_outer_loop(rptype, int, c) {
    rring_inner_preloop(rptype, int);
    rring_sync_writeonly(rptype);
    rring_inner_loop(rptype, j) {
        size_t nth = _t_rptype * _bn_rptype + j;
        _inner_rptype[j] = rv_type->head[nth];
    }
    rring_inner_wb(rptype);
    }
    rring_cleanup_writeonly(rptype);
    type_vec.clear();
    type_vec.shrink_to_fit();
    rv_type->head = (int *) (4096ULL + (12ULL << 30));
    rv_type->end  = rv_type->head + s;
    rv_type->tail = rv_type->head + c;
    printf("payment type remote\n");
}
{
    auto &fare_vec = get_column<double>("fare_amount");
    rvector<double> * rv_fare = (rvector<double> *) &fare_vec;
    size_t s = fare_vec.size();
    size_t c = fare_vec.capacity();
    rring_outer_loop(rfare, double, c) {
    rring_inner_preloop(rfare, double);
    rring_sync_writeonly(rfare);
    rring_inner_loop(rfare, j) {
        size_t nth = _t_rfare * _bn_rfare + j;
        _inner_rfare[j] = rv_fare->head[nth];
    }
    rring_inner_wb(rfare);
    }
    rring_cleanup_writeonly(rfare);
    fare_vec.clear();
    fare_vec.shrink_to_fit();
    rv_fare->head = (double *) (4096ULL + (13ULL << 30));
    rv_fare->end  = rv_fare->head + s;
    rv_fare->tail = rv_fare->head + c;
    printf("fare amount remote\n");
}
{
    auto &extra_vec = get_column<double>("extra");
    rvector<double> * rv_extra = (rvector<double> *) &extra_vec;
    size_t s = extra_vec.size();
    size_t c = extra_vec.capacity();
    rring_outer_loop(rextra , double, c) {
    rring_inner_preloop(rextra, double);
    rring_sync_writeonly(rextra);
    rring_inner_loop(rextra, j) {
        size_t nth = _t_rextra * _bn_rextra + j;
        _inner_rextra[j] = rv_extra->head[nth];
    }
    rring_inner_wb(rextra);
    }
    rring_cleanup_writeonly(rextra);
    extra_vec.clear();
    extra_vec.shrink_to_fit();
    rv_extra->head = (double *) (4096ULL + (14ULL << 30));
    rv_extra->end  = rv_extra->head + s;
    rv_extra->tail = rv_extra->head + c;
    printf("extra remote\n");
}
{
    auto &mta_vec = get_column<double>("mta_tax");
    rvector<double> * rv_mta = (rvector<double> *) &mta_vec;
    size_t s = mta_vec.size();
    size_t c = mta_vec.capacity();
    rring_outer_loop(rmta, double, c) {
    rring_inner_preloop(rmta, double);
    rring_sync_writeonly(rmta);
    rring_inner_loop(rmta, j) {
        size_t nth = _t_rmta * _bn_rmta + j;
        _inner_rmta[j] = rv_mta->head[nth];
    }
    rring_inner_wb(rmta);
    }
    rring_cleanup_writeonly(rmta);
    mta_vec.clear();
    mta_vec.shrink_to_fit();
    rv_mta->head = (double *) (4096ULL + (15ULL << 30));
    rv_mta->end  = rv_mta->head + s;
    rv_mta->tail = rv_mta->head + c;
    printf("mta tax\n");
}
{
    auto &tip_vec = get_column<double>("tip_amount");
    rvector<double> * rv_tip = (rvector<double> *) &tip_vec;
    size_t s = tip_vec.size();
    size_t c = tip_vec.capacity();
    rring_outer_loop(rtip, double, c) {
    rring_inner_preloop(rtip, double);
    rring_sync_writeonly(rtip);
    rring_inner_loop(rtip, j) {
        size_t nth = _t_rtip * _bn_rtip + j;
        _inner_rtip[j] = rv_tip->head[nth];
    }
    rring_inner_wb(rtip);
    }
    rring_cleanup_writeonly(rtip);
    tip_vec.clear();
    tip_vec.shrink_to_fit();
    rv_tip->head = (double *) (4096ULL + (16ULL << 30));
    rv_tip->end  = rv_tip->head + s;
    rv_tip->tail = rv_tip->head + c;
    printf("tip amount\n");
}
{
    auto &tolls_vec = get_column<double>("tolls_amount");
    rvector<double> * rv_tolls = (rvector<double> *) &tolls_vec;
    size_t s = tolls_vec.size();
    size_t c = tolls_vec.capacity();
    rring_outer_loop(rtolls, double, c) {
    rring_inner_preloop(rtolls, double);
    rring_sync_writeonly(rtolls);
    rring_inner_loop(rtolls, j) {
        size_t nth = _t_rtolls * _bn_rtolls + j;
        _inner_rtolls[j] = rv_tolls->head[nth];
    }
    rring_inner_wb(rtolls);
    }
    rring_cleanup_writeonly(rtolls);
    tolls_vec.clear();
    tolls_vec.shrink_to_fit();
    rv_tolls->head = (double *) (4096ULL + (17ULL << 30));
    rv_tolls->end  = rv_tolls->head + s;
    rv_tolls->tail = rv_tolls->head + c;
    printf("tolls amount\n");
}
{
    auto &impv_vec = get_column<double>("improvement_surcharge");
    rvector<double> * rv_impv = (rvector<double> *) &impv_vec;
    size_t s = impv_vec.size();
    size_t c = impv_vec.capacity();
    rring_outer_loop(rimpv, double, c) {
    rring_inner_preloop(rimpv, double);
    rring_sync_writeonly(rimpv);
    rring_inner_loop(rimpv, j) {
        size_t nth = _t_rimpv * _bn_rimpv + j;
        _inner_rimpv[j] = rv_impv->head[nth];
    }
    rring_inner_wb(rimpv);
    }
    rring_cleanup_writeonly(rimpv);
    impv_vec.clear();
    impv_vec.shrink_to_fit();
    rv_impv->head = (double *) (4096ULL + (18ULL << 30));
    rv_impv->end  = rv_impv->head + s;
    rv_impv->tail = rv_impv->head + c;
    printf("imp surcharge\n");
}
{
    auto &total_vec = get_column<double>("total_amount");
    rvector<double> * rv_total = (rvector<double> *) &total_vec;
    size_t s = total_vec.size();
    size_t c = total_vec.capacity();
    rring_outer_loop(rtotal, double, c) {
    rring_inner_preloop(rtotal, double);
    rring_sync_writeonly(rtotal);
    rring_inner_loop(rtotal, j) {
        size_t nth = _t_rtotal * _bn_rtotal + j;
        _inner_rtotal[j] = rv_total->head[nth];
    }
    rring_inner_wb(rtotal);
    }
    rring_cleanup_writeonly(rtotal);
    total_vec.clear();
    total_vec.shrink_to_fit();
    rv_total->head = (double *) (4096ULL + (19ULL << 30));
    rv_total->end  = rv_total->head + s;
    rv_total->tail = rv_total->head + c;
    printf("total amount\n");
}
#endif

    std::chrono::time_point<std::chrono::steady_clock> times[10];
    times[0] = std::chrono::steady_clock::now();
    print_number_vendor_ids_and_unique();
    times[1] = std::chrono::steady_clock::now();
    printf("Step 1: %ld us\n", 
        std::chrono::duration_cast<std::chrono::microseconds>(times[1] - times[0])
        .count());
}

