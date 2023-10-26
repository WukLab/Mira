#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

typedef struct arc {
  char payload[16];
  uint64_t i;
  uint64_t j;
  struct arc* next; 
  struct arc* prev;
  unsigned hit;
  int x;
  int y;
} arc_t;


// base is the starting point of the complete struct
// buf is the continuous buffer where selected field are gathered
typedef void (*assem_lambda_t)(void *base, void *buf, uint16_t size);

assem_lambda_t *assemFns;

// Full struct assembly is waste of time
// use asm = 0 to decay to conventional transfer
void from_mlir_assem_arc_all(void *base, void *dest, uint16_t size) {
  memcpy(dest, base, size);
}
void from_mlir_dis_assem_arc_all(void *base, void *src, uint16_t size) {
  memcpy(base, src, size);
}

typedef struct {
  unsigned hit;
  int x;
  int y;
} arc_x_y_hit_t;

void from_MLIR_assem_arc_x_y_hit(void *base, void *dest, uint16_t size) {
  arc_t *arc_buf = (arc_t*) base;
  arc_x_y_hit_t * x_y_hit_buf = (arc_x_y_hit_t*) dest;
  for (int i = 0; i < size / sizeof(arc_x_y_hit_t); ++ i) {
    x_y_hit_buf[i].x = arc_buf[i].x;
    x_y_hit_buf[i].y = arc_buf[i].y;
    x_y_hit_buf[i].hit = arc_buf[i].hit;
  }
}

void from_MLIR_dis_assem_arc_x_y_hit(void *base, void *src, uint16_t size) {
  arc_t *arc_buf = (arc_t*) base;
  arc_x_y_hit_t * x_y_hit_buf = (arc_x_y_hit_t*) src;
  for (int i = 0; i < size / sizeof(arc_x_y_hit_t); ++ i) {
    arc_buf[i].x =   x_y_hit_buf[i].x;
    arc_buf[i].y =   x_y_hit_buf[i].y;
    arc_buf[i].hit = x_y_hit_buf[i].hit;
  }
}

typedef struct {
  char payload[16];
  uint64_t i;
  uint64_t j;
  struct arc* next; 
  struct arc* prev;
  unsigned hit;
} arc_except_x_y_t;

void from_MLIR_assem_arc_except_x_y(void *base, void *dest, uint16_t size) {
  arc_t *arc_buf = (arc_t*) base;
  arc_except_x_y_t * arc_asm = (arc_except_x_y_t*) dest;
  for (int i = 0; i < size / sizeof(*arc_asm); ++ i) {
    memcpy(
      arc_asm[i].payload,
      arc_buf[i].payload,
      sizeof(char) * 16
    );
    arc_asm[i].i = arc_buf[i].i;
    arc_asm[i].j = arc_buf[i].j;
    arc_asm[i].next = arc_buf[i].next;
    arc_asm[i].prev = arc_buf[i].prev;
    arc_asm[i].hit = arc_buf[i].hit;
  }
}

void from_MLIR_dis_assem_arc_except_x_y(void *base, void *src, uint16_t size) {
  arc_t *arc_buf = (arc_t*) base;
  arc_except_x_y_t * arc_asm = (arc_except_x_y_t*) src;
  for (int i = 0; i < size / sizeof(*arc_asm); ++ i) {
    memcpy(
      arc_buf[i].payload,
      arc_asm[i].payload,
      sizeof(char) * 16
    );
    arc_buf[i].i = arc_asm[i].i;
    arc_buf[i].j = arc_asm[i].j;
    arc_buf[i].next = arc_asm[i].next;
    arc_buf[i].prev = arc_asm[i].prev;
    arc_buf[i].hit = arc_asm[i].hit;
  }
}

void init_assem_lambdas() {
  assemFns = malloc(sizeof(*assemFns) * 7);
  assemFns[1] = from_mlir_assem_arc_all;
  assemFns[2] = from_mlir_dis_assem_arc_all;
  assemFns[3] = from_MLIR_assem_arc_x_y_hit;
  assemFns[4] = from_MLIR_dis_assem_arc_x_y_hit;
  assemFns[5] = from_MLIR_assem_arc_except_x_y;
  assemFns[6] = from_MLIR_dis_assem_arc_except_x_y;
}
