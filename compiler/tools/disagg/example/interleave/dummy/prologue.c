#include <stdint.h>
#include <pthread.h>

int foo(int i);

#ifndef NUM_TOKENS
    #define NUM_TOKENS (32 * 1024 * 1024)
#endif

#define NUM_COUNTERS 1024
#define linesize 1234
#define buf 2333
#define offset 1999
#define slots 4567
#define tagmask (~(linesize - 1))

extern char *_rbuf;
// extern uint64_t buf;
// extern uint64_t linesize;

typedef struct {
    uint64_t tag;
    uint8_t flags;
    uint8_t pad0;
    uint16_t seq;
    // uint32_t meta2;
    uint32_t lock;
} Token;

extern Token tokens[NUM_TOKENS];
int* paddr(int off, uint64_t vaddr) {
  return (int*)(_rbuf + buf + off * linesize + vaddr % linesize);
}

static inline uint64_t tag(uint64_t vaddr) {
    return vaddr & tagmask;
}

static inline int select(uint64_t vaddr) {
    int res = (vaddr / linesize) % slots;
    return res;
}

uint8_t token_valid(Token *t) {
  return (t->flags & 0x1);
}

static inline Token *token(int off) { return &tokens[off+offset]; }
extern void request_poll(int off, uint64_t tag);

static inline int * get(void * vaddr) {
    uint64_t _tag = tag((uint64_t)vaddr);
    // TODO: this is not thread safe
    // if (Tlb::lookup(tag))
        // return Tlb::offset();

    int off = select(_tag);
    Token *_token = token(off);

    int *ret = paddr(off, (uint64_t)vaddr);
    if (token_valid(_token) && _token->tag == _tag) {
      return ret;
    }
    request_poll(off, _tag);
    return ret;
}

int main(int argc, char **argv) {
  void *c = NULL;
  int *a = get(c);
  return *a;
}