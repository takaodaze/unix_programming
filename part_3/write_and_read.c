#include <unistd.h>

void my_write() {
  if ((write(1, "Here is some data\n", 18)) != 18) {
    write(2, "A write error has occurred on file decriptor 1\n", 47);
  }
}

void my_read() {
  char buffer[128];
  int nread;
  nread = read(0, buffer, 128);

  if (nread == -1)
    write(2, "A read error has occurrend\n", 26);

  if ((write(1, buffer, nread)) != nread)
    write(2, "A write error has occurred\n", 27);
}

int main() {
  /* my_write(); */
  my_read();
  return 0;
}
