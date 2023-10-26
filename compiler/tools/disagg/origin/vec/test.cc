#include <vector>
#include <cstdio>
// #include "rvec.h"

using namespace std;

int sum(vector<int> *v) {
  int s = 0;
  for (int i = 0; i < v->size(); ++ i) {
    s += v->at(i);
  }
  return s;
}

int main () {
  vector<int> v {0, 1, 2, 3, 4, 5};
  // remotelize(v);

  printf("%zu\n", v.size());

  v.push_back(1);
  int s = sum(&v);
  printf("%d\n", s);

  return 0;
}