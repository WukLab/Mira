#ifndef __REMOTE_POOL_H__
#define __REMOTE_POOL_H__

#include <stdlib.h>
#include <stdint.h>
#include "app.h"

#ifdef __cplusplus
extern "C"
{
#endif

#define MAX_OFFLOAD_FUNCTIONS (64)

/* sbuf starting from base_sbuf is occupied by remote pools */
extern uint64_t local_remote_delimiter;
void manager_init();
void start_server_service();

void add_pool(int pid, unsigned linesize);

void * deref_disagg_vaddr(uint64_t dvaddr);

typedef void (*rpc_service_t)(void *arg, void *ret);
typedef void (*assem_lambda_t)(void *base, void *buf, uint16_t size);

// populate by offload obj
extern rpc_service_t *services;
void init_rpc_services();
extern assem_lambda_t *assemFns;
void init_assem_lambdas();
extern void *step7_start;

#ifdef __cplusplus
}
#endif
#endif
