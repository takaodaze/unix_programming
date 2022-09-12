#include <stdio.h>
#include <stdlib.h>

int main() {
  const char *kw[] = {"Pen", "Pineapple", "Apple", "Pen"};
  unsigned ppap = -1;

  while (ppap != 0x1b) { // '00 01 10 11'
    ppap = ((ppap << 2) | (rand() & 3)) & 0xff;
    puts(kw[ppap & 3]);
  }
}
