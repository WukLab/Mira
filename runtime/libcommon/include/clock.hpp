#ifndef _CLOCK_H_
#define _CLOCK_H_

#include <iostream>
#include <thread>
#include <chrono>

using namespace std;
using namespace std::chrono;

template <class duration_type>
inline void stop_watch(unsigned d)
{
  auto spin_start = high_resolution_clock::now();
  while (duration_cast<duration_type>(high_resolution_clock::now() - spin_start).count() < d);
}

#endif