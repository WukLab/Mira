#include <stdint.h>

extern int foo(bool a);
bool valid(uint8_t flags) {
  return flags & 0x15;
}

int main(int argc, char **argv) {
  bool a = valid(argc);
  if (!a)
    foo(a + 1);
  return foo(a);
}