
#include <GL/glew.h> // include GLEW and new version of GL on Windows
#include <GLFW/glfw3.h> // GLFW helper library for window management
#include <iostream> //for cout

int main (int argc, char** argv) 
{
  // start GL context and O/S window using the GLFW helper library
  if (!glfwInit ()) 
    {
      std::cerr<<"ERROR: could not start GLFW3"<<std::endl;
      return 1;
    } 

  //Setting window properties
  glfwWindowHint (GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint (GLFW_CONTEXT_VERSION_MINOR, 2);
  glfwWindowHint (GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);