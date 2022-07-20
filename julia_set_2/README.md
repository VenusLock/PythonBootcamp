
compilation on arch linux

### Requirements:

yay -S glu freeglut

### Compilation:

CPU version
`g++ julia_set.cpp -o julia_set -lGLU -lGL -lglut`

GPU version

`nvcc julia_set.cu -o julia_set_gpu -lGLU -lGL -lglut`


### Notes:
