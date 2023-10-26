num_thread = 8
n_ahead = 2

A_rsize = (130 << 20)
A_local = (64 << 20)
A_slots = A_local // 8192

ACs = ['const int A_line = 4 * 512 * 4;',
       f'const int A_local_size = {A_local};',
       f'const int A_total_size = {A_rsize};',
       'const int A_slots = A_local_size / A_line;'
    ]

CCs = []

for i in range(num_thread):
    ca = f'using CA{i} = DirectCache<{i*2}*A_slots,{i*2}*A_total_size,{i*2}*A_local_size,A_slots,A_line,{i*2}>;'
    car = f'using CAR{i} = CacheReq<CA{i}>;'
    ACs += [ca, car]
    cc = f'using CC{i} = DirectCache<{i*2+1}*A_slots,{i*2+1}*A_total_size,{i*2+1}*A_local_size,A_slots,A_line,{i*2+1}>;'
    ccr = f'using CCR{i} = CacheReq<CC{i}>;'
    CCs += [cc, ccr]
    
settings = '\n'.join(ACs + CCs)

setup = []
getLocal = []
setValue = []
for i in range(num_thread):
    setup.append(f'  float *rA{i} = (float *) CAR{i}::alloc(sizeof(float) * M * K);')
    getLocal.append(f'    float *wA{i} = CAR{i}::get_mut<float>(pin2(rA{i}, m, 0));')
    setValue.append(f'        *pin2(wA{i}, i, j) = *pin2(bufA, m+i, j);')

setup_str = '\n'.join(setup)
get_local_str = '\n'.join(getLocal)
set_val_str = '\n'.join(setValue)

prepare_thread = [
	'  Tensor_float_2 B = make_tensor_float_2(bufB, shapeB);'
]
for i in range(num_thread):
    tA = f'  Tensor_float_2 A{i} = make_tensor_float_2(rA{i}, shapeA);'
    tC = f'  Tensor_float_2 C{i};'
    pi = f'  T_pack p{i} = {{&C{i}, &A{i}, &B}};'
    tid = f'pthread_t t{i};'
    prepare_thread += [tA, tC, pi, tid]

prepare_str = '\n'.join(prepare_thread)

threads = []
for i in range(num_thread):
    routine = f'pthread_create(&t{i}, NULL, _mlir_ciface_main_graph<CC{i},CA{i},CCR{i},CAR{i},{i}>, &p{i});'
    threads.append(routine)

for i in range(num_thread):
    threads.append(f'pthread_join(t{i}, NULL);')


run = '\n'.join(threads)

template = f'''
#include "common.h"
#include "tensor.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <immintrin.h>
#include "cache.hpp"
#include <pthread.h>
#include "util.hpp"

#define M 64512
#define K 512
#define N 512

DECL_TENSOR(float, 2);
DEF_TENSOR_UTILS(float)

{settings}

struct T_pack {{
  Tensor_float_2 *C;
  Tensor_float_2 *A;
  Tensor_float_2 *B;
}};

const static int64_t strides2[2] = {{N, 1}};
static inline float *pin2(float *buf, int64_t a, int64_t b) {{
  return buf + a * strides2[0] + b;
}}

const int n_ahead = {n_ahead};
const uint64_t n_blocks = M / 4;

template<typename C1, typename C2,
         typename CR1, typename CR2, int t>
void* _mlir_ciface_main_graph(void *data) {{
  T_pack *p = (T_pack *) data;
  int64_t oshape[] = {{M, N}};
  int64_t num_ele = 1;
  for (int i = 0; i < 2; ++ i)
    num_ele *= oshape[i];

  // float *oC = (float *) aligned_alloc(4096, sizeof(float) * num_ele);
  float *rC = (float *) CR1::alloc(sizeof(float) * num_ele);
  // for (int64_t i = 0; i < M; i += 4) {{
  //   float *lC = CR1::template get_mut<float>(pin2(rC, i, 0));
  //   memset(lC, 0, 8192);
  // }}
  int C_offs[n_ahead+1];
  uint64_t C_tags[n_ahead+1];

  // prologue
  for (int i = 0; i < n_ahead; ++ i) {{
    C_tags[i] = C1::Op::tag((uint64_t)(pin2(rC, i*4, 0)));
    C_offs[i] = C1::select(C_tags[i]);
    CR1::request(C_offs[i], C_tags[i]);
  }}
  for (int i = 0; i < n_blocks; ++i) {{
    // prefetch
    if (i < n_blocks - n_ahead) {{
      int idxn = (i + n_ahead) % (n_ahead + 1);
      C_tags[idxn] = C1::Op::tag((uint64_t)(pin2(rC, (i+n_ahead)*4, 0)));
      C_offs[idxn] = C1::select(C_tags[idxn]);

      CR1::request(C_offs[idxn], C_tags[idxn]);
    }}

    //sync current
    int idx = i % (n_ahead + 1);
    auto &token = C1::Op::token(C_offs[idx]);
    token.add(Token::Dirty);
    wait_qid(C1::Value::qid, token.seq);

    // work
    float *lC = C1::Op::template paddr<float>(C_offs[idx], (uint64_t)pin2(rC, i*4, 0));
    memset(lC, 0, 8192);
  }}

  __m256 alloca[4];
  __m256 ap;
  __m256 bv;
  __m256 mul;

  float *lB = p->B->_aligned_ptr;
  float *rA = p->A->_aligned_ptr;

  int A_offs[n_ahead+1];
  uint64_t A_tags[n_ahead+1];

  // prologue
  for (int h = 0; h < n_ahead; ++ h) {{
    C_tags[h] = C1::Op::tag((uint64_t)(pin2(rC, h*4, 0)));
    C_offs[h] = C1::select(C_tags[h]);
    CR1::request(C_offs[h], C_tags[h]);

    A_tags[h] = C2::Op::tag((uint64_t)(pin2(rA, h*4, 0)));
    A_offs[h] = C2::select(A_tags[h]);
    CR2::request(A_offs[h], A_tags[h]);
  }} 

  for (int64_t b = 0; b < n_blocks; ++ b) {{
    // prefetch
    if (b < n_blocks - n_ahead) {{
      int idxn = (b + n_ahead) % (n_ahead + 1);
      C_tags[idxn] = C1::Op::tag((uint64_t)(pin2(rC, (b+n_ahead)*4, 0)));
      C_offs[idxn] = C1::select(C_tags[idxn]);
      CR1::request(C_offs[idxn], C_tags[idxn]);

      A_tags[idxn] = C2::Op::tag((uint64_t)(pin2(rA, (b+n_ahead)*4, 0)));
      A_offs[idxn] = C2::select(A_tags[idxn]);
      CR2::request(A_offs[idxn], A_tags[idxn]);
    }}
    //sync current
    int idx = b % (n_ahead + 1);
    auto &token = C1::Op::token(C_offs[idx]);
    token.add(Token::Dirty);
    wait_qid(C1::Value::qid, token.seq);

    token = C2::Op::token(A_offs[idx]);
    wait_qid(C2::Value::qid, token.seq);

    // work
    float *lC = C1::Op::template paddr<float>(C_offs[idx], (uint64_t)pin2(rC, b*4, 0));
    float *lA = C2::Op::template paddr<float>(A_offs[idx], (uint64_t)pin2(rA, b*4, 0));

    for (int64_t n = 0; n < N; n += 8) {{
      for (int64_t k = 0; k < K; k += 8) {{
        // load C [4x8]
        for (int i = 0; i < 4; ++ i) {{
          alloca[i] = _mm256_loadu_ps(pin2(lC, i, n));
        }}

        // C[4x8] += A[4x8] @ B[8x8]
        for (int i = 0; i < 8; i += 4) {{
          for (int64_t mm = 0; mm < 4; ++ mm) {{
            for (int64_t kk = k + i; kk < k + i + 4; ++kk) {{
              ap = _mm256_broadcast_ss(pin2(lA, mm, kk));
              bv = _mm256_loadu_ps(pin2(lB, kk, n));
              mul = _mm256_mul_ps(ap, bv);
              alloca[mm] = _mm256_add_ps(mul, alloca[mm]); 
            }}
          }}
        }}

        // Store C [4x8]
        for (int i = 0; i < 4; ++ i) {{
          _mm256_storeu_ps(pin2(lC, i, n), alloca[i]);
        }}
      }}
    }}
  }}
  
  Tensor_float_2 output = make_tensor_float_2(rC, oshape);
  *(p->C) = output;
  printf("%d done\\n", t);
  return NULL; 
}}

void * rdma_poll_rountine(void *) {{
  poll_all();
  return NULL;
}}

int main () {{
  uint64_t ts = microtime();
  init_client();
  pthread_t pool_t;
  pthread_create(&pool_t, NULL, rdma_poll_rountine, NULL);


  int64_t shapeA[] = {{M, K}};
  float *bufA = read_tensor_float("/users/Zijian/new_rt/apps/bench-matmul-mt/A.dat", shapeA, 2);

  int64_t shapeB[] = {{K, N}};
  float *bufB = read_tensor_float("/users/Zijian/new_rt/apps/bench-matmul-mt/B.dat", shapeB, 2);

{setup_str}

  for (int64_t m = 0; m < M; m += 4) {{
{get_local_str}
    for (int64_t i = 0; i < 4; ++ i) {{
      for (int64_t j = 0; j < N; ++ j) {{
{set_val_str}
      }}
    }}
  }}

  printf("After setup\\n");
  
{prepare_str}

  // int64_t shapeC[] = {{M, N}};
  // float *C_truth = read_tensor_float("/users/Zijian/new_runtime/cpy_new_rt/apps/bench-matmul-new/C.dat", shapeC, 2);

  uint64_t start = microtime();
  {run}
  uint64_t end = microtime();
  printf("run at: %.5f s\\n", (float)(start-ts)/1e6);
  printf("time: %.5f s\\n", (float)(end-start)/1e6);

  for (int i = 0; i < 2; ++ i)
    printf("%ld\\n", C0.shapes[i]);
  return 0;
}}


'''

print(template)