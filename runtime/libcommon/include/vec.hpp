#ifndef _VEC_H_
#define _VEC_H_

#include <cstdint>
#include <memory>
#include <type_traits>
#include <vector>

#include <stdexcept>

#include "cache.h"

static uint64_t offset_vec = 0;
inline static uint64_t get_new_vec_offset(uint64_t s) { return (offset_vec += s); }

static CacheTable *ctable = 0;
inline void RCacheVector_init_cache_table(CacheTable *c) {
    if (!ctable) ctable = c;
}

template <typename T>
class RCacheVector {
 private:
    using Index_t = uint64_t;
    using Pattern_t = int64_t;

    template <typename U>
    friend class RCacheVector;

    class CIterator {
    private:
        RCacheVector<T> *_vec;
        uint64_t _i;
        friend class RCacheVector;

        CIterator(RCacheVector<T> *vec, uint64_t i) : _vec(vec), _i(i) {}

    public:
        using difference_type = int64_t;
        using iterator_category = std::random_access_iterator_tag;

        CIterator &operator++() {_i += 1; return *this;}
        CIterator operator++(int) {CIterator it = CIterator(_vec, _i); _i += 1; return it;}
        CIterator &operator+=(difference_type dis) {_i += dis; return *this;};
        CIterator operator+(difference_type dis) const {return CIterator(_vec, _i+dis);}
        CIterator &operator--() {_i-=1; return *this;}
        CIterator operator--(int) {CIterator it = CIterator(_vec, _i); _i -= 1; return it;}
        difference_type operator-(const CIterator &other) const {return _i - other._i;}
        bool operator==(const CIterator &other) const {return (_vec == other._vec && _i == other._i);}
        bool operator!=(const CIterator &other) const {return !(*this == other);}
        bool operator<(const CIterator &other) const {return (_vec == other._vec && _i < other._i);}
        bool operator<=(const CIterator &other) const {return (_vec == other._vec && _i <= other._i);}
        bool operator>(const CIterator &other) const {return (_vec == other._vec && _i > other._i);}
        bool operator>=(const CIterator &other) const {return (_vec == other._vec && _i >= other._i);}
        T operator*() const {return _vec->nth_element(_i);}
    };

    const uint32_t _data_size = sizeof(T);

    uint32_t _chunk_num_entries;  // #data per cache line
    uint64_t _offset;             // starting offset of the data in remote

    uint64_t _capacity;
    uint64_t _size = 0;

    std::pair<Index_t, Index_t> which_chunk(Index_t i) {
        return std::make_pair(i / _chunk_num_entries, i % _chunk_num_entries);
    }

    uint64_t where_offset(uint64_t i) {
        auto [chunk_idx, chunk_offset] = which_chunk(i);
        return chunk_idx * ctable->cache_line_size + chunk_offset*_data_size;
    }

   public:
    explicit RCacheVector() : RCacheVector(0) {}

   RCacheVector(uint64_t atleast_cap) {
      if (!ctable) throw std::runtime_error("RCacheVector_init_cache_table first");

      _chunk_num_entries = ctable->cache_line_size / _data_size;
      if (!_chunk_num_entries) throw std::runtime_error("cache line size too small");
      auto num_entries_to_alloc = (atleast_cap) ? (atleast_cap-1) / _chunk_num_entries + 1 : 0;
      _capacity = num_entries_to_alloc * _chunk_num_entries;
      _offset =
          get_new_vec_offset(num_entries_to_alloc * ctable->cache_line_size);
    }

    RCacheVector &operator=(const RCacheVector &other) {
        // TODO: release old offset
        _chunk_num_entries = other._chunk_num_entries;
        _capacity = other._capacity;
        _offset = get_new_vec_offset(_capacity/_chunk_num_entries * ctable->cache_line_size);
        _size = other._size;

        auto old_offset = other._offset;
        for (int i = 0; i < _size; ++i) {
            // TODO: better copy
            cache_write_n(ctable, _offset+where_offset(i), reinterpret_cast<T*>(cache_access(ctable, old_offset+where_offset(i))), _data_size);
        }
    }
    RCacheVector(RCacheVector &&other) {
        // TODO: release old offset
        _chunk_num_entries = other._chunk_num_entries;
        _offset = other._offset;
        _capacity = other._capacity;
        _size = other._size;
    }
    RCacheVector &operator=(RCacheVector &&other) {
        // TODO: release old offset
        _chunk_num_entries = other._chunk_num_entries;
        _offset = other._offset;
        _capacity = other._capacity;
        _size = other._size;
    }
    ~RCacheVector() {
        // TODO: release old offset
    }

    uint64_t capacity() const { return _capacity; }
    uint64_t size() const {return _size;}
    bool empty() const {return !_size;}
    void push_back(T &&t) {
        if (_capacity == _size + 1) [[unlikely]] {
            resize(_capacity*2+1);
        }

        cache_write_n(ctable, _offset + where_offset(_size), &t, _data_size);

        _size += 1;

        // TODO: prefech
        // TODO: batch write to remote
        // TODO: smarter remote?
    }
    void push_back( const T& t ) {
        if (_capacity == _size + 1) [[unlikely]] {
            resize(_capacity*2+1);
        }

        cache_write_n(ctable, _offset + where_offset(_size), &const_cast<T&>(t), _data_size);

        _size += 1;

        // same TODO above
    }
    void pop_back() {if(_size) _size-=1;}
    void reserve(uint64_t count) {
        if (count <= _capacity) return;
        resize(count);
    }
    void resize(uint64_t atleast_cap) {
        if (atleast_cap <= _capacity) return;
        uint64_t old_offset = _offset;

        auto num_entries_to_alloc = (atleast_cap) ? (atleast_cap-1) / _chunk_num_entries + 1 : 0;
        _capacity = num_entries_to_alloc * _chunk_num_entries;
        _offset = get_new_vec_offset(num_entries_to_alloc * ctable->cache_line_size);

        for (int i = 0; i < _size; ++i) {
            // TODO: better copy
            cache_write_n(ctable, _offset+where_offset(i), reinterpret_cast<T*>(cache_access(ctable, old_offset+where_offset(i))), _data_size);
        }

        // TODO: release old offset
    }

    // return copy only
    T nth_element(uint64_t i) {
        return *reinterpret_cast<T*>(cache_access(ctable, _offset+where_offset(i)));
    }
    T front() { return nth_element(0); }
    const T back() { return nth_element(_size-1); }
    T at(uint64_t i) { return nth_element(i); }

    // T& operator[](int i) {
        // throw std::runtime_error("not supported");
    // }

    // the only mutator
    void update(uint64_t i, T&& t) {
        if (i >= _size) throw std::runtime_error("update out of index");

        cache_write_n(ctable, _offset+where_offset(i), &t, _data_size);
    }

    // CIterator begin() {return CIterator(this,0);}
    // CIterator end() {return CIterator(this, _size);}
    const CIterator begin() const {return CIterator(const_cast<RCacheVector<T>*>(this),0);}
    const CIterator end() const {return CIterator(const_cast<RCacheVector<T>*>(this), _size);}
    const CIterator cbegin() const {return CIterator(const_cast<RCacheVector<T>*>(this), 0);}
    const CIterator cend() const {return CIterator(const_cast<RCacheVector<T>*>(this), _size);}

    // void disable_prefetch();
    // void enable_prefetch();
    // void static_prefetch(Index_t start, Index_t step, uint32_t num);
};

#endif
