
// #include "../cuda_by_example/common/book.h"
#include "../cuda_by_example/common/cpu_bitmap.h"

#define DIM 1000

struct cuComplex
{
    /* Struct for representing complex numbers */
    float real;
    float imag;
    cuComplex( float a, float b): real(a), imag(b) {}
    float magnitude2(void) {
        return real*real + imag*imag;
    }
    cuComplex operator*(const cuComplex& a) {
        return cuComplex(real * a.real - imag * a.imag, imag * a.real + real * a.imag);
    }
    cuComplex operator+(const cuComplex& a) {
        return cuComplex(real + a.real, imag + a.imag);
    }

};

int julia(int x, int y) {
    const float scale = 1.5;