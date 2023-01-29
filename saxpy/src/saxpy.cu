
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
           
            printf("Device Number: %d\n", i); 
            printf("  Device Name: %s\n", prop.name);
            printf("  Memory Clock Rate (Khz): %d\n", prop.memoryClockRate);
            printf("  Memory Bus Width (bits): %d\n", prop.memoryBusWidth);
            printf("  Peak Memory Bandwidth (GB/s): %f\n",
                    2.0*prop.memoryClockRate*(prop.memoryBusWidth/8)/1.0e6);
        }	