#include <vector>
#include <cstdio>
#include <cstdlib>
#include <cstdint>

using namespace std;

typedef size_t size_type;

class Visitor {
 public:
  uint64_t sum = 0;
  void pre() {}
  void post() {}
  void operator()(int a, int b) {sum += a; sum += b;}  
};

typedef uint64_t index_type;
typedef int dat_type;

template <typename I, typename D>
class MaxVisitor {
public:
  I index_ = 0;
  D max_ = 0;
  bool is_first = true;

  void pre() {}
  void post() {}
  void operator()(I idx, D dat) {
    if (is_first || dat > max_) {
      max_ = dat;
      index_ = idx;
      is_first = false;
    }
  }
};

template <typename I, typename D>
class MinVisitor {
public:
  I index_ = 0;
  D min_ = 0;
  bool is_first = true;

  void pre() {}
  void post() {}
  void operator()(I idx, D dat) {
    if (is_first || dat < min_) {
      min_ = dat;
      index_ = idx;
      is_first = false;
    }
  }
};

template<typename I, typename D, typename V>
V visit (std::vector<I>& indices_, std::vector<D>& vec, V &visitor)  {
  const size_type idx_s = indices_.size();
  const size_type min_s = std::min<size_type>(vec.size(), idx_s);
  size_type       i = 0;

  visitor.pre();
  for (; i < min_s; ++i) {
    visitor (indices_[i], vec[i]);
  }
  visitor.post();

  return (visitor);
}


int main () {

  vector<dat_type> v {0, 1, 2, 3, 4, 5};
  vector<index_type> indices {0, 1, 2, 3, 4, 5};

  MaxVisitor<index_type, dat_type> maxVst;
  MinVisitor<index_type, dat_type> minVst;

  (void) visit(indices, v, maxVst);
  (void) visit(indices, v, minVst);

  printf("Max vst = %lu %d\n", maxVst.index_, maxVst.max_);
  printf("Min vst = %lu %d\n", minVst.index_, minVst.min_);

  return 0;
}