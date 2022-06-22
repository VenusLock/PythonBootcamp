
notes and code samples from https://developer.nvidia.com/blog/even-easier-introduction-cuda/



### Compilation

   - CPU code `clang++ add.cpp -o add`
   - GPU code `nvcc add.cu -o add`



### Notes

`__global__` - function specifier informs `nvcc` that function runs on CUDA and can be called from CPU code. Additionally this specifier is not recognizable by `clang++` and causes compilation error. 

`<<<numBlocks, blockSize>>>` - execution configuration of CUDA Kernel.

printf insdide kernel significantly slows down kernel execution time.

gridDim represents - number of thread-blocks. **grid** - is a collection of blocks of parallel threads. In case of 1-d indexing `gridDim.x * blockDim.x` is a total number of threads in the grid.
