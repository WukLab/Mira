#include "cache_token.hpp"
#include <pthread.h>

pthread_mutex_t polllock;

Token tokens[NUM_TOKENS];
uint64_t counters[NUM_COUNTERS];

