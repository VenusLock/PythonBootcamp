
#include <GL/glew.h> // include GLEW and new version of GL on Windows
#include <GLFW/glfw3.h> // GLFW helper library for window management
#include <iostream> //for cout

int main (int argc, char** argv) 
{
  // start GL context and O/S window using the GLFW helper library
  if (!glfwInit ()) 
    {