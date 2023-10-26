#define BUF_SIZE 512U
#define N_TRIALs (4U << 20)
#define BUDGET 32

typedef struct Payload {
  char buf[BUF_SIZE];
} payload_t;