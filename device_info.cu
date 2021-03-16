#include <iostream>
#include <stdio.h> 


#define ANSI_COLOR_RESET "\x1b[0m"
#define ANSI_COLOR_CYAN  "\x1B[36m"

int main() {  
  int nDevices;

  cudaError_t err = cudaGetDeviceCount(&nDevices);
  printf("%s\n", cudaGetErrorString(err));
  if (err != c