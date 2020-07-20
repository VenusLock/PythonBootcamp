
#### HowTos

1. Compile pytorch CUDA extension with multiple Compute Capabilities as well as PTX. https://pytorch.org/docs/stable/cpp_extension.html
`env TORCH_CUDA_ARCH_LIST="6.1 7.5 8.6+PTX" python setup.py install`
#### Quering device properties.

`cudaDeviceGetAttribute   `argued being [faster](https://developer.nvidia.com/blog/cuda-pro-tip-the-fast-way-to-query-device-properties/]) , though it's  too verbose

```
  int maxBlockDimX;
  int maxBlockDimY;
  int maxBlockDimZ;
  cudaDeviceGetAttribute(&maxBlockDimX, cudaDevAttrMaxBlockDimX, devIdx);
  cudaDeviceGetAttribute(&maxBlockDimY, cudaDevAttrMaxBlockDimY, devIdx);
  cudaDeviceGetAttribute(&maxBlockDimZ, cudaDevAttrMaxBlockDimZ, devIdx);
  printf("  %d %d %d \n", maxBlockDimX, maxBlockDimY, maxBlockDimZ);
```

vs. `cudaGetDeviceProperties`

```
  cudaDeviceProp prop;
  cudaGetDeviceProperties(&prop, devIdx);
  printf("  Max Threads Dim: %d %d %d\n", prop.maxThreadsDim[0], prop.maxThreadsDim[1], prop.maxThreadsDim[2]);
```



- [reference of CUDA device properties](https://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__DEVICE.html)

- [Hemi](https://github.com/harrism/hemi) - library for writting reusable CPU and GPU code. single kernel function executable on both device types. More in this [blog post](https://developer.nvidia.com/blog/simple-portable-parallel-c-hemi-2/).



1. Compile CUDA kernels