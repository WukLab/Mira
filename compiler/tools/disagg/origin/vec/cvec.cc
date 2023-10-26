#include <vector>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include "rvec.h"

using namespace std;

typedef size_t size_type;

class Visitor {
 public:
  uint64_t sum = 0;
  void pre() {}
  void post() {}
  void operator()(int a, int b) {sum += a; sum += b;}  
};

typedef size_t index_type;
typedef uint64_t dat_type;

// template <typename I, typename D>
// class MaxVisitor {
// public:
//   I index_ = 0;
//   D max_ = 0;
//   bool is_first = true;

//   void pre() {}
//   void post() {}
//   void operator()(I idx, D dat) {
//     if (is_first || dat > max_) {
//       max_ = dat;
//       index_ = idx;
//       is_first = false;
//     }
//   }
// };

// template <typename I, typename D>
// class MinVisitor {
// public:
//   I index_ = 0;
//   D min_ = 0;
//   bool is_first = true;

//   void pre() {}
//   void post() {}
//   void operator()(I idx, D dat) {
//     if (is_first || dat < min_) {
//       min_ = dat;
//       index_ = idx;
//       is_first = false;
//     }
//   }
// };

// template<typename I, typename D, typename V1, typename V2>
// static inline void visit (std::vector<I>& indices_, std::vector<D>& vec, V1 &visitor1, V2 &visitor2)  {

//   const size_type idx_s = indices_.size();
//   const size_type min_s = std::min<size_type>(vec.size(), idx_s);
//   size_type       i = 0;
//   visitor1.pre();
//   for (; i < min_s; ++i) {
//     visitor1 (indices_[i], vec[i]);
//   }
//   visitor1.post();

//   visitor2.pre();
//   for (i = 0; i < min_s; ++i) {
//     visitor2 (indices_[i], vec[i]);
//   }
//   visitor2.post();

// }


size_t sum(std::vector<size_t> &vec) {
  size_t sum = 0;
  size_t n = vec.size();
  for (size_t i = 0; i < n; ++ i)
    sum += vec[i];
  return sum;
}

int k;

int main () {

  // vector<dat_type> v {0, 1, 2, 3, 4, 5};
  vector<index_type> indices {0, 1, 2, 3, 4, 5};

  // remotelize(v);
  remotelize(indices);

  // MaxVisitor<index_type, dat_type> maxVst;
  // MinVisitor<index_type, dat_type> minVst;
  // visit(indices, v, maxVst, minVst);
  int a = 0;

  int g = (&a - &k);
  printf("%d\n", g);
  // printf("Max vst = %lu %lu\n", maxVst.index_, maxVst.max_);
  // printf("Min vst = %lu %lu\n", minVst.index_, minVst.min_);

  size_t s = sum(indices);
  printf("Offload sum = %lu\n", s);

  return 0;
}