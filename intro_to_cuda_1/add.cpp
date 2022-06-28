
#include <iostream>
#include <math.h>

void add(int n, float *x, float *y)
{
    for (int i=0; i < n; i++)
        y[i] = x[i] + y[i];
}

int main(void)
{
    int N = 1 << 20; // ~1M elements, more preciesly 2^20 = 1048576 elements.:)
    float *x = new float[N];
    float *y = new float[N];

    // init x and y arrays on the host
    for (int i = 0; i < N; i++) {
        x[i] = 1.0f;