#include "common.h"
#include "ringbuf.h"

int main(int argc, char **argv)
{
  init(TRANS_TYPE_SHM_EXECUTOR, argv[1]);
  execute_transfer();
  return 0;
}
