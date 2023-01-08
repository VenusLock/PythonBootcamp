
#include <stdio.h>
#include <stdlib.h>

#include <cuda_runtime.h>

__global__ void saxpy(int n, float a, float* x, float* y) {