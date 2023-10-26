#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include "common.h"
#include "remote_pool.h"
#include "cache.h"
#include "helper.h"

int main(int argc, char *argv[]) {
  init_server();
	// init remote server mem
	manager_init();

  start_server_service();
	return 0;
}