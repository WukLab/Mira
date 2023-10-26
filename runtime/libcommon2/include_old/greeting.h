#ifndef _GREETING_
#define _GREETING_

#include <stdint.h>

#define duration_t uint64_t 

// req layout:
// | ------------> header <--------------   |
// | addr (64b) | size (32b) | type (32b)   | payload
// CL: cache line payloud
// type: 0 write | 1 read
struct req {
    duration_t timestamp; 
    uint64_t addr;
    uint32_t size;
    uint32_t type;
};

// followed by payload

#endif
