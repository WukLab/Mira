#include <infiniband/verbs.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "queue.h"
#include "cache.hpp"
#include "rdmaop.hpp"

struct ibv_send_wr _pwr[NUM_RDMA_BATCH_WR];
struct ibv_sge _psge[NUM_RDMA_BATCH_SGE];

// Send and recv queues
struct queue_info qi[NUM_QUEUES];


