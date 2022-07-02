
#include <iostream>
#include <math.h>

__global__
void add_single_threaded(int n, float *x, float *y){
    for (int i = 0; i < n; i ++)
        y[i] = x[i] + y[i];
}

__global__
void add_multi_threaded(int n, float *x, float *y){
