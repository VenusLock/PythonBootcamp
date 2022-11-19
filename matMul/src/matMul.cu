
/*
 ============================================================================
 Name        : matMul.cu
 Author      : taras-sereda
 Version     :
 Copyright   : Your copyright notice
 Description : CUDA compute reciprocals
 ============================================================================
 */
#include <stdlib.h>
#include <stdio.h>

#include <cuda_runtime.h>

#define BLOCK_SIZE 32

typedef struct {

	int width;
	int height;
	float *elements;
} Matrix;

__global__ void matMulKernel(Matrix A, Matrix B, Matrix C) {

	int col = blockDim.x * blockIdx.x + threadIdx.x;
	int row = blockDim.y * blockIdx.y + threadIdx.y;

	float Cval = 0;

	if (row < A.height && col < B.width) {
		for (int e=0; e<A.width; e++){
			Cval += A.elements[A.width * row + e] *
					B.elements[B.width * e + col];
		}
		C.elements[C.width * row + col] = Cval;
	}
}

void init_matrix(float *elements, int width, int height) {