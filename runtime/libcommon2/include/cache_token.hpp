#ifndef _CACHE_TOKEN_HPP_
#define _CACHE_TOKEN_HPP_

#include <stdint.h>
#include <pthread.h>

#ifndef NUM_TOKENS
    #define NUM_TOKENS (32 * 1024 * 1024)
#endif

#define NUM_COUNTERS 1024

struct Token {
    uint64_t tag;
    uint8_t flags;
    uint8_t pad0;
    uint16_t seq;
    // uint32_t meta2;
    pthread_spinlock_t lock;

    // ctor
    Token(): tag(0), flags(0), pad0(0), seq(0) {
        pthread_spin_init(&lock, 0);
    }
    
    // methods
    inline bool valid() { return flags & 0x1; } 
    inline bool dirty() { return flags & 0x2; } 
    inline bool sync() { return flags & 0x4; } 

    // since v = 0x01
    inline void set(uint8_t flag) { flags = flag; } 
    inline void add(uint8_t flag) { flags |= flag; } 
    inline void clear() { flags = 0; } 

    static const uint8_t Valid = 0x1;
    static const uint8_t Dirty = 0x2;
    static const uint8_t Sync = 0x4;
};

extern Token tokens[NUM_TOKENS];
extern uint64_t counters[NUM_COUNTERS];

#endif
