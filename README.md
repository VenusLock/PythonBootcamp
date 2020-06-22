
#### HowTos

1. Compile pytorch CUDA extension with multiple Compute Capabilities as well as PTX. https://pytorch.org/docs/stable/cpp_extension.html
`env TORCH_CUDA_ARCH_LIST="6.1 7.5 8.6+PTX" python setup.py install`
#### Quering device properties.
