
// #include "../cuda_by_example/common/book.h"
#include "../cuda_by_example/common/cpu_bitmap.h"

#define DIM 1000

struct cuComplex
{
    /* Struct for representing complex numbers */
    float real;
    float imag;

    __device__