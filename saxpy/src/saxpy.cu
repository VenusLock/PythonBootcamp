
#include <stdio.h>
#include <stdlib.h>

#include <cuda_runtime.h>

__global__ void saxpy(int n, float a, float* x, float* y) {

	int i = blockIdx.x * blockDim.x + threadIdx.x;
        if (i < n) y[i] = a * x[i] + y[i];
} 


int main(int argc, char** argv) {