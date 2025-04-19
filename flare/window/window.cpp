#include "window/window.h"

flare::window::Window::Window(std::string title, int width, int height)
{
    this->Width = width;
    this->Height = height;
    this->title = title;

    createWindow();
}

flare::window::Window::~Window()
{
    glfwDestroyWindow(window);
}

GLFWwindow *const flare::window::Window::GetWindow()
{
    return this->window;
}

void framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
    glViewport(0,0,width,height);
}

void error_callback(int error, const char* description)
{
    fprintf(stderr, "Error: %s\n", description);
}

void flare::window::Window::createWindow()
{
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    #if defined(__APPLE__)
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    #endif
    
    //set error callback
    glfwSetErrorCallback(error_callback);
    
    window = glfwCreateWindow(Width, Height, title.c_str(), nullptr, nullptr);
    if (window == nullptr)
    {
        throw std::runtime_error("failed to create window!");
    }
    glfwMakeContextCurrent(window);
    
    if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)){
        throw std::runtime_error("failed to initialize GLAD!");
    }
    
    glViewport(0,0,Width,Height);
    
    glfwSetFramebufferSizeCallback(window,framebuffer_size_callback);
}

