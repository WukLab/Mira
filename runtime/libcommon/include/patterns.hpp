#include <random>
#include <vector>
#include <cmath>
#include <stdlib.h>             
#include <math.h>               
#include <cassert>

using namespace std;

vector<size_t> gen_access_pattern_uniform(size_t n_access, size_t array_size,
                                          size_t tile_size, int seed = 0) {
  std::mt19937 gen(seed);
  std::uniform_int_distribution<> d(0, array_size - 1);
  vector<size_t> pattern;
  size_t t_i = 0, p_i = 0;
  while (p_i < n_access) {
    if (t_i == 0) {
      pattern.push_back(d(gen));
      p_i += 1;
      t_i = 1;
    } else if (t_i < tile_size) {
      size_t next = pattern.back() + 1;
      if (next >= array_size) {
        t_i = tile_size;
      } else {
        pattern.push_back(next);
        p_i += 1;
        t_i += 1;
      }
    } else if (t_i == tile_size) {
      t_i = 0;
    }
  }
  return pattern;
}

vector<size_t> gen_access_pattern_normal(size_t n_access, size_t array_size,
                                         size_t tile_size, double mean, double stddev = 1.0, int seed = 0) {
  std::mt19937 gen(seed);
  std::normal_distribution<> d{mean, stddev};
  vector<size_t> pattern;
  size_t t_i = 0, p_i = 0;
  while (p_i < n_access) {
    if (t_i == 0) {
      pattern.push_back(static_cast<size_t>(std::abs(d(gen))) % array_size);
      p_i += 1;
      t_i = 1;
    } else if (t_i < tile_size) {
      size_t next = pattern.back() + 1;
      if (next >= array_size) {
        t_i = tile_size;
      } else {
        pattern.push_back(next);
        p_i += 1;
        t_i += 1;
      }
    } else if (t_i == tile_size) {
      t_i = 0;
    }
  }
  return pattern;
}

// vector<size_t> gen_access_pattern_stride_tile(size_t n_access, size_t stride, size_t tile_size) {
// }


#define  FALSE          0       // Boolean false
#define  TRUE           1       // Boolean true

int      zipf(double alpha, int n);
double   rand_val(int seed);         

int zipf(double alpha, int n)
{
  static int first = TRUE;      // Static first time flag
  static double c = 0;          // Normalization constant
  static double *sum_probs;     // Pre-calculated sum of probabilities
  double z;                     // Uniform random number (0 < z < 1)
  int zipf_value;               // Computed exponential value to be returned
  int    i;                     // Loop counter
  int low, high, mid;           // Binary-search bounds

  // Compute normalization constant on first call only
  if (first == TRUE)
  {
    for (i=1; i<=n; i++)
      c = c + (1.0 / pow((double) i, alpha));
    c = 1.0 / c;

    sum_probs = (double *) malloc((n+1)*sizeof(*sum_probs));
    sum_probs[0] = 0;
    for (i=1; i<=n; i++) {
      sum_probs[i] = sum_probs[i-1] + c / pow((double) i, alpha);
    }
    first = FALSE;
  }

  // Pull a uniform random number (0 < z < 1)
  do
  {
    z = rand_val(0);
  }
  while ((z == 0) || (z == 1));

  // Map z to the value
  low = 1; high = n;
  do {
    mid = floor((low+high)/2);
    if (sum_probs[mid] >= z && sum_probs[mid-1] < z) {
      zipf_value = mid;
      break;
    } else if (sum_probs[mid] >= z) {
      high = mid-1;
    } else {
      low = mid+1;
    }
  } while (low <= high);

  // Assert that zipf_value is between 1 and N
  assert((zipf_value >=1) && (zipf_value <= n));
  return(zipf_value);
}

double rand_val(int seed)
{
  const long  a =      16807;  // Multiplier
  const long  m = 2147483647;  // Modulus
  const long  q =     127773;  // m div a
  const long  r =       2836;  // m mod a
  static long x;               // Random int value
  long        x_div_q;         // x divided by q
  long        x_mod_q;         // x modulo q
  long        x_new;           // New x value

  // Set the seed if argument is non-zero and then return zero
  if (seed > 0)
  {
    x = seed;
    return(0.0);
  }

  // RNG using integer arithmetic
  x_div_q = x / q;
  x_mod_q = x % q;
  x_new = (a * x_mod_q) - (r * x_div_q);
  if (x_new > 0)
    x = x_new;
  else
    x = x_new + m;

  // Return a random value between 0.0 and 1.0
  return((double) x / m);
}

vector<size_t> gen_access_pattern_seq(size_t n_access, size_t array_size)
{
  vector<size_t> pattern;
  size_t p = 0;
  while (p < n_access)
  {
    pattern.push_back(p % array_size);
    p ++;
  }
  return pattern;
}

vector<size_t> gen_access_pattern_zipf(size_t n_access, size_t array_size, double alpha, size_t tile_size, int seed)
{
  vector<size_t> pattern;
  rand_val(seed);
  size_t t_i = 0, p_i = 0;
  while (p_i < n_access)
  {
    if (t_i == 0)
    {
      pattern.push_back(zipf(alpha, array_size)-1);
      p_i ++;
      t_i ++;
    } 
    else if (t_i < tile_size)
    {
      size_t next = pattern.back() + 1;
      if (next >= array_size)
        t_i = tile_size;
      else
      {
        pattern.push_back(next);
        p_i ++;
        t_i ++;
      }
    }
    else if (t_i == tile_size)
      t_i = 0;
  }
  return pattern;
}