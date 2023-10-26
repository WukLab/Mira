#include <vector>
#include <unordered_set>
#include <cstdio>
#include <unordered_map>

template<typename T>
std::vector<T> get_col_unique_values(const std::vector<T> & vec) {
    auto                    hash_func =
        [](const T& v) -> std::size_t  {
            return(std::hash<T>{}(v));
    };
    auto                    equal_func =
        [](const T& lhs,
           const T& rhs) -> bool  {
            return(lhs == rhs);
    };

    std::unordered_set<T,
        decltype(hash_func),
        decltype(equal_func)>   table(vec.size(), hash_func, equal_func);
    // std::unordered_set<T> table(vec.size());

    bool                        counted_nan = false;
    // TODO: disagg this variable
    std::vector<T>              result;

    result.reserve(vec.size());
    size_t N = vec.size();

    for (size_t i = 0; i < N; i++)  {
        const auto  insert_ret = table.insert(vec[i]);

        if (insert_ret.second)
            result.push_back(vec[i]);
    }

    return(result);
}

void inspect(std::unordered_set<int> &s) {
  for (const int &i : s) {
    printf("%d ", i);
  }
  printf("\n");
}

void inspect_map(std::unordered_map<int, int> &m) {
  for (auto const &i : m) {
    printf("%d %d\n", i.first, i.second);
  }
  printf("\n");
}

int set_test() {
  std::unordered_set<int> s = { 1, 2, 3};
  inspect(s);
  s.insert(4);
  inspect(s);
  s.insert(3);
  inspect(s);
  return 0;
}

size_t a = 1;

int main()
{
  // std::vector<int> data{0, 1, 2, 2, 3, 3, 3, 4, 4, 5};

  (void) set_test();
  // printf("%ld %ld\n", a, a);

  // std::unordered_map<int, int> m;
  // m[1] = 2;
  // m[2] = 3;
  // inspect_map(m);
  // std::vector<int> uq_vec = get_col_unique_values(data);
  // for (auto &i : data) {
  //   printf("%d\n", i);
  // }

  return 0;
}

