#include <vector>
#include <chrono>
#include <memory>
#include <string>
#include <cstdio>
#include <stdarg.h>
#include <random>


using namespace std;
static const int64_t kRandSeed = 27491095;

int main(int argc, char **argv) {
  // auto s = chrono::high_resolution_clock::now();
  // double k = atof(argv[1]);
  // printf("%f\n", k);

  // uniform_int_distribution<int> r(0, 10000);
  // std::mt19937 rng(kRandSeed);
  // printf("%d\n", r(rng));

  // std::mt19937 frng;
  // std::uniform_real_distribution<float> fr(0, 1.0f);
  // frng.seed(kRandSeed + 1);
  // float f = fr(frng);
  // printf("%f\n", f);

  // int lz = __builtin_clzl(kRandSeed);
  // printf("%d\n", lz);

  // double in = atof(argv[1]);
  // printf("%f\n", __builtin_ceil(in));

  vector<int> v;
  v.reserve(10);
  printf("%d\n", v.capacity());

  // auto e = chrono::high_resolution_clock::now();
  // double us = chrono::duration_cast<chrono::duration<double, std::micro>>(e - s).count();
  // printf("time %f\n", us);
  return 0;

  // std::chrono::time_point<std::chrono::steady_clock> time0 = std::chrono::steady_clock::now();
  // vector<int> a = {1,2,3,4,5};
  // printf("%zu\n", a.size());
  // for (int i = 0; i < a.size(); ++ i) {
  //   printf("%d\n", a[i]);
  // }

  // std::chrono::time_point<std::chrono::steady_clock> time1 = std::chrono::steady_clock::now();
  // auto gap = std::chrono::duration_cast<std::chrono::microseconds>(time1 - time0).count();
  // printf("gap = %lu\n", gap);

  // C c = { (uintptr_t)(1) };
  // printf("%s\n", c.des);

  // std::string ss = "ABCDE";
  // printf("%zu\n", ss.size());
  // printf("%s\n", ss.c_str());

  // int i = 2;
  // int &b = i;
  // int &c = b;

  // EB eb(c);
  // printf("eb = %d\n", eb.a);
  // for (int i = 0; i < 10; i++) {
  //   printf("%d\n", eb.ary[i]);
  // }

  // ([&]() {
  //   printf("no ctor %d\n", i);
  // }) ();

  // auto pss = [&]() {
  //   printf("copy %d\n", i);
  // };
  // pss();

  // i = atoi(argv[1]);
  // pss();

  // union Data data;        

  // data.i = 10;
  // data.f = 220.5;
  // strcpy( data.str, "C Programming");

  // printf( "data.i : %d\n", data.i);
  // printf( "data.f : %f\n", data.f);
  // printf( "data.str : %s\n", data.str);

  // std::vector<std::string> str_col1 = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J" };
  // printf("size: %d\n", str_col1.size());
  // for (auto s : str_col1) {
  //   printf("%s\n", s.c_str());
  // }

  // int n = atoi(argv[1]);

  // printf("%d\n", _T_min<int>(n, 10));
  // int *t = new int(2);
  // printf("t = %d\n", *t);

  // int aass[3][3] = { 0, 1, 2, 3 };
  // for (int i = 0; i < 3; ++ i) {
  //   for (int j = 0; j < 3; ++ j) {
  //     printf("aass = %d\n", aass[i][j]);
  //   }
  // }

  // B *bbs = new B[3] { {0.0, 0.1}, {2.0} };
  // for (int i = 0; i < 2; ++ i) {
  //   for (int j = 0; j < 3; ++ j) {
  //     printf("bbs = %f\n", bbs[i].x[j]);
  //   }
  // }

  // int *ts = new int[n] { 1,2,3 } ;
  // for (int i = 0; i < 5; ++ i) {
  //   printf("ts = %d\n", ts[i]);
  // }

  // int tt = {n};
  // printf("tt = %d\n", tt);

  // int t2d[2][2] = { {1,2} };
  // for (int i = 0; i < 2; ++ i) {
  //   for (int j = 0; j < 2; ++ j) {
  //     printf("a2d = %d\n", t2d[i][j]);
  //   }
  // }

  // A a = {1};
  // a.demo(n);
  // printf("after %d\n", a.a);
  // printf("a = %d\n", a.a);

  // A *aa = new A(2);
  // printf("aa = %d\n", aa->a);

  // A saa[2] = {{1}};
  // printf("saa = %d\n", saa[0].a);

  // A *aaa = new A[n] {{1}, {2}, {3}};
  // for (int i = 0; i < n; ++ i) {
  //   printf("aaa = %d\n", aaa[i].a);
  // }

  // B *b = new B{};
  // C c = {
  //   .i1_t = {1,n},
  //   .b = {0} 
  // };


  // void *a = NULL;
  // void *b = nullptr;
  // nullptr_t c = nullptr;
  // nullptr_t d = NULL;
  // isNUll(a);
  // isNUll(b);
  // isNUll(c);
  // isNUll(d);

  return 0;
}