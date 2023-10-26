#include "Runtime/utils.h"
#include <iostream>

using namespace std;

int main () {
  StridedMemRefType<float, 2> m1;
  cout << m1.sizes << " " << m1.strides << endl;

  DynamicMemRefType<float> m2(m1);
  cout << m2.rank << " " << m2.sizes << " " << m2.strides << endl;

  return 0;
}