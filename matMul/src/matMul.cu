
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
