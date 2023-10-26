#include <stdio.h>
#include <stdlib.h>
#include "common.h"

void init_client() {
    char* url = getenv("SERVER_URL");
    if (!url) {
        printf("Set SERVER_URL env before running\n");
        exit(1);
    }
    init(TRANS_TYPE_RC, url);
}

void init_server() {
    char* url = getenv("SERVER_URL");
    if (!url) {
        printf("Set SERVER_URL env before running\n");
        exit(1);
    }
    init(TRANS_TYPE_RC_SERVER, url);
}

