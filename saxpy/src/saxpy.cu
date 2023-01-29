
#include <stdio.h>
#include <stdlib.h>

#include <cuda_runtime.h>

__global__ void saxpy(int n, float a, float* x, float* y) {

	int i = blockIdx.x * blockDim.x + threadIdx.x;
        if (i < n) y[i] = a * x[i] + y[i];
} 


int main(int argc, char** argv) {

        int nDevices; 
        cudaGetDeviceCount(&nDevices);  

        printf("Number of GPU devices %d\n", nDevices);

        for (int i = 0; i < nDevices; i++) {
       
            cudaDeviceProp prop;
            cudaGetDeviceProperties(&prop, i);
           