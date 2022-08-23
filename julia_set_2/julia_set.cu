
// #include "../cuda_by_example/common/book.h"
#include "../cuda_by_example/common/cpu_bitmap.h"

#define DIM 1000

struct cuComplex
{
    /* Struct for representing complex numbers */
    float real;
    float imag;

    __device__
    cuComplex( float a, float b): real(a), imag(b) {}

    __device__
    float magnitude2(void) {
        return real*real + imag*imag;
    }

    __device__
    cuComplex operator*(const cuComplex& a) {
        return cuComplex(real * a.real - imag * a.imag, imag * a.real + real * a.imag);
    }

    __device__
    cuComplex operator+(const cuComplex& a) {
        return cuComplex(real + a.real, imag + a.imag);
    }

};

__device__
int julia(int x, int y) {
    const float scale = 1.5;
    float jx = scale * (float)(DIM/2 - x)/(DIM/2);