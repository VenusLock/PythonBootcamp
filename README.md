
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