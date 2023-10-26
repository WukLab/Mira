#ifndef _CACHE_HPP_
#define _CACHE_HPP_

#include <infiniband/verbs.h>
#include <stdint.h>
#include <map>
#include <unordered_map>
#include <set>
#include <list>
#include <tsl/robin_map.h>
#include <tsl/unordered_dense.h>

#include "common.h"
#include "rdmaop.hpp"
#include "cache_token.hpp"
#include "pqueue.hpp"
#include "tlb.hpp"
#include "queue.h"


// Common cache operations
template <int offset, uint64_t rbuf, uint64_t buf, uint64_t linesize, int qid,
          uint16_t reqwr_opts = REQWR_OPT_QUEUE_UPDATE>
struct CacheOp {
    static constexpr uint64_t tagmask = ~(linesize - 1);
    static inline uint64_t tag(uint64_t vaddr) {
        return vaddr & tagmask;
    }

    // meta data
    // static Token _tokens[slots];
    static inline Token &token(int off) { return tokens[off+offset]; }

    // translate
    template <typename T>
    static inline T * paddr(int off, uint64_t vaddr) {
        return (T*)(_rbuf + buf + off * linesize + vaddr % linesize);
    }
    
    // cache info
    static inline uint16_t rid() { return qi[qid].rid; }
    static inline uint16_t sid() { return qi[qid].sid; }

    // rdma
    // TODO: wrid
    static inline void rdma(int i, int off, uint64_t tag, ibv_wr_opcode opcode,
            ibv_send_wr * next, bool with_seq) {
        // COULD be an option. do this later
        uint64_t wrid = 0;
        if (with_seq) {
            wrid = reqwr_opts | qid;
            uint32_t sid = ++qi[qid].sid;
            tokens[off+offset].seq = sid;
            wrid |= (sid << 16);
        }
        // printf("rdma req: %lx, %d, %lx\n", tag, off, rbuf + tag);
        build_rdma_wr(i, wrid, buf + off * linesize, rbuf + tag, 
                linesize, opcode, next);
    };
};

// This set of caches are built for single threaded. 
template <uint64_t _buf_offset, int _slots, int _linesize, int _qid>
struct CacheValues {
    static constexpr int linesize = _linesize;
    static constexpr int qid = _qid;
    static constexpr uint64_t bytes = _linesize * (uint64_t)_slots;
};

template <int offset, uint64_t rbuf, uint64_t buf, int slots, int linesize, int qid>
struct DirectCache {
    using Op = CacheOp<offset, rbuf, buf, linesize, qid>;
    using Value = CacheValues<buf,slots,linesize,qid>;

    static inline int select(uint64_t vaddr) {
        int res = (vaddr / linesize) % slots;
        return res;
    }
};

static uint32_t settick;
template <int offset, uint64_t rbuf, uint64_t buf, int slots, int linesize, int qid,
          int num_ways>
struct SetAssocativeCache {
    using Op = CacheOp<offset, rbuf, buf, linesize, qid>;
    using Value = CacheValues<buf,slots,linesize,qid>;

    static constexpr int waysize = linesize * num_ways;
    static constexpr int waymask = ~(num_ways - 1);

    static inline int select(uint64_t vaddr) {
#if 0
        int wayslot = ((vaddr / linesize) % slots) & waymask;
        auto &token0 = Op::token(wayslot);
        int min = token0.meta2, t = wayslot;
        for (int i = 0; i < num_ways; i++) {
            auto &token = Op::token(wayslot + i);
            if (token.valid() && token.tag == vaddr) {
                t = wayslot + i;
                break;
            } 
            if (token.meta2 < min) { min = token.meta2, t = wayslot + i; } 
        }
        
        // LRU
        Op::token(t).meta2 = settick++;
        return t;
#endif
        // LFU
        int wayslot = ((vaddr / linesize) % slots) & waymask;
        auto &token0 = Op::token(wayslot);
        int min = token0.pad0, t = wayslot;
        for (int i = 0; i < num_ways; i++) {
            auto &token = Op::token(wayslot + i);
            if (token.valid() && token.tag == vaddr) {
                token.pad0++;
                return wayslot + i;
            } 
            if (token.pad0 < min) { min = token.pad0, t = wayslot + i; } 
        }
        
        Op::token(t).pad0 = 1;
        return t;
    }
};

#if 1

struct pageinfo {
    int stamp;
    int off;
    bool operator< (const pageinfo& a) const {
        return this->stamp < a.stamp;
    } 
};

static std::list<pageinfo> plist{};
static tsl::robin_map<uint64_t, decltype(plist)::iterator, ankerl::unordered_dense::hash<uint64_t>> pgtable;
constexpr uint64_t num_entry = (1ULL << 30) / 64;
// static decltype(plist)::iterator pgtable_ary[num_entry];


static int lrutick = 0;
static uint64_t sid = 0;

template <int offset, uint64_t rbuf, uint64_t buf, int slots, int linesize, int qid>
struct FullLRUCache {
    using Op = CacheOp<offset, rbuf, buf, linesize, qid>;
    using Value = CacheValues<buf,slots,linesize,qid>;
#if 1
    // vaddr is tag 
    static inline int select(uint64_t vaddr) {
        lrutick ++;
        const auto &l = pgtable.find(vaddr);
        int off = -1;
        if (l != pgtable.end()) {
            off = l->second->off;
            plist.splice(plist.cbegin(), plist, l->second);
        } else {
            // populate the initial slots first
            // DO NOT early eviction
            if (sid < slots) {
                // insert new
                off = sid ++;
                auto it = plist.insert(plist.cbegin(), {lrutick, off});
                pgtable[vaddr] = it;
            } else {
                // Evict from global LRU
                const auto &vic = std::prev(plist.end());
                auto &tvic = Op::token(vic->off);
                pgtable.erase(tvic.tag);
                off = vic->off;
                plist.splice(plist.cbegin(), plist, vic);
                pgtable[vaddr] = vic;
            }
        }
        return off;
    }

#endif
#if 0
        static inline int select(uint64_t vaddr) {
        lrutick ++;
        uint64_t idx = vaddr / linesize;
        const auto &l = pgtable_ary[idx];
        int off = -1;
        if (l != plist.end()) {
            off = l->off;
            plist.splice(plist.cbegin(), plist, l);
            // l->second = plist.begin();
        } else {
            // populate the initial slots first
            // DO NOT early eviction
            if (sid < slots) {
                // insert new
                off = sid ++;
                auto it = plist.insert(plist.cbegin(), {lrutick, off});
                pgtable[idx] = it;
            } else {
                // Evict from global LRU
                auto vic = std::prev(plist.end());
                auto &tvic = Op::token(vic->off);
                pgtable[tvic.tag / linesize] = plist.end();
                off = vic->off;
                // auto it = plist.insert(plist.cbegin(), {lrutick, off});
                plist.splice(plist.cbegin(), plist, vic);
                vic->stamp = lrutick;

                pgtable[idx] = vic;
                // plist.erase(vic);
            }
        }
        return off;
    }
#endif
};
#endif


#define C_PART 0
// TODO: bool?
// bool ignore
template <typename C, bool need_mt = false,
         typename Tlb = NoTlb,
         bool opt_writeback = true, bool opt_sync = false>
struct CacheReq {

static inline int cache_request_impl(int wr_offset, uint64_t tag, int offset,
        ibv_send_wr *req, bool send) {
    auto &token = C::Op::token(offset);

    struct ibv_send_wr *badwr = NULL;
    req = _pwr + wr_offset;
    C::Op::rdma(wr_offset, offset, tag, IBV_WR_RDMA_READ, NULL, send);

#if C_PART
    if (tag <= 0x40000000UL)
       (volatile uint64_t *)counters[512]++;
    else {
       (volatile uint64_t *)counters[513]++;
    }
#endif

    if constexpr (opt_writeback) {
        // only enable if we want write back
        if (token.dirty()) { // build req 0 (write)
            C::Op::rdma(wr_offset + 1, offset, token.tag,
                    IBV_WR_RDMA_WRITE, req, false);
            req = _pwr + wr_offset + 1;

            // if counter_512...
#if C_PART
            if (token.tag <= 0x40000000UL) {
               (volatile uint64_t *)counters[512]--;
            }
            else {
                (volatile uint64_t *)counters[513]--;
            }
#endif

            // update b
            Tlb::invalid(tag);
        }
    }

    // the associated id is send id
    if (send) {
        // should already updated in RDMA function
        int ret = ibv_post_send(qp, req, &badwr);
        // if (ret != 0) {
        //     printf("RDMA post send ret %d\n", ret); 
        //     exit(ret);
        // }
    }

    // update tag
    token.tag = tag;
    // Update flags, we have 2 mode, sync or not 
    if constexpr (!opt_sync)
        C::Op::token(offset).set(Token::Valid);
    else {
        C::Op::token(offset).set(Token::Sync);
    }

    return offset;
}

static void request_poll(int offset, uint64_t tag) {
    cache_request_impl(C::Value::qid * 2, tag, offset, NULL, true);
    poll_qid(C::Value::qid, C::Op::token(offset).seq);
    // wait_qid(C::Value::qid, C::Op::token(offset).seq);
}

static int request(int offset, uint64_t tag) {
    return cache_request_impl(C::Value::qid * 2, tag, offset, NULL, true);
}

static int request(int offset, uint64_t tag, bool send) {
    return cache_request_impl(C::Value::qid * 2, tag, offset, NULL, send);
}

// only work in mode
template<typename T, int miss_counter = 0, int hit_counter = 0>
static inline T * get(void * vaddr) {
    uint64_t tag = C::Op::tag((uint64_t)vaddr);
    // TODO: this is not thread safe
    // if (Tlb::lookup(tag))
        // return Tlb::offset();

    int off = C::select(tag);
    Token &token = C::Op::token(off);

    auto ret = C::Op::template paddr<T>(off, (uint64_t)vaddr);
    if (token.valid() && token.tag == tag) {
        if constexpr (hit_counter) counters[hit_counter]++;
        // Tlb::update(token,tag);
        return ret;
    }

    if constexpr (miss_counter) counters[miss_counter]++;
    if constexpr (need_mt) pthread_spin_lock(&token.lock);
    request_poll(off, tag);

    // printf("Sync cache[%d] <%d|r:%d,s:%d>\n", C::Value::qid,
    //         C::Op::token(off).seq, C::Op::rid(), C::Op::sid());
    // poll_qid(C::Value::qid, C::Op::token(off).seq);
    return ret;
}

template<typename T, int miss_counter = 0, int hit_counter = 0>
static inline T * get_mut(void * vaddr) {
    uint64_t tag = C::Op::tag((uint64_t)vaddr);
    int off = C::select(tag);
    auto &token = C::Op::token(off);

    auto ret = C::Op::template paddr<T>(off, (uint64_t)vaddr);

    if (token.valid() && token.tag == tag) {
        if constexpr (hit_counter) counters[hit_counter]++;
        token.add(Token::Dirty);
        return ret;
    }
    if constexpr (miss_counter) counters[miss_counter]++;
    if constexpr (need_mt) pthread_spin_lock(&token.lock);
    request_poll(off, tag);
    // poll_qid(C::Value::qid, token.seq);

    token.add(Token::Dirty);
    return ret;
}

static inline void release(void * vaddr) {
    uint64_t tag = C::Op::tag((uint64_t)vaddr);
    int off = C::select(tag);
    auto &token = C::Op::token(off);
    pthread_spin_unlock(&token.lock);
}

static inline void * alloc(size_t size) {
    void * target = (void *)qi[C::Value::qid].addr;
    qi[C::Value::qid].addr += size;
    return target;
}

#if 0
template <typename C, typename Tlb, int size,
         bool opt_writeback = true, bool opt_tlb = false>
void cache_request_batch(const uint64_t *arr, int *offsets) {
    for (int i = 0; i < size; i++){
        // TODO: chain the requests!
        offset[i] = cache_request_impl<C,Tlb,opt_writeback, opt_tlb>(i*2);
    }
}
#endif

};

// lifetime and lightning values: non-persistent
// Create a function handling lightinig values. 

#endif

