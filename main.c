#include <stdio.h>

extern int foo1(int);
extern int foo2(int);

int main(int argc, char** argv) {
  printf("foo1(1): %d\n", foo1(1));
  printf("foo2(1): %d\n", foo2(1));
  return 0;
}
