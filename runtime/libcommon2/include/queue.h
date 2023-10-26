#ifndef _QUEUE_H_
#define _QUEUE_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NUM_QUEUES 256
/* inflight, should be less than MAX(uint16_t) / 2 */
#define MAX_QUEUE_INFLIGHT ((uint16_t)1024)
#define MAX_CACHE_SIZE (1 << 20)

struct queue_info {
    uint16_t sid;
    uint16_t rid;
    uint32_t meta;
    uint64_t addr;
};

extern struct queue_info qi[NUM_QUEUES];

struct  __attribute__((__packed__)) _wr_id {
    uint8_t qid; // defines the type of the cache
    union {
        struct {
            uint8_t cls : 4;
            uint8_t options : 4;
        };
        uint8_t cache_info;
    };
    uint16_t seq;
    uint32_t meta;
};
enum {
    REQWR_OPT_QUEUE_UPDATE = 0x1000, // by default, we update
    REQWR_OPT_META_UPDATE = 0x2000,
};

enum {
    REQWR_CLS_TAG_MOD_META = 0,
    REQWR_CLS_SEQ_MOD_META = 1,
    REQWR_CLS_TAG = 2,
};

#ifdef __cplusplus
}
#endif

#endif /* _QUEUE_H_ */
