//
// Created by cukesheep on 2025/7/3.
//
#include "glad/glad.h"

#include "window.h"



void error_callback(int error, const char* description)
{
    fprintf(stderr, "Error: %s\n", description);
}

void framebuffer_size_callback(GLFWwindow* window,int width,int height) {
    glViewport(0,0,width,height);
}

Window::Window(const std::string& title,int width,int height): WindowService() {
    //remember to move it to log class
    glfwSetErrorCallback(error_callback);

    if (!glfwInit()) {
        throw std::runtime_error("failed to initialize GLFW!");
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,1);
    glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);
#if defined(__APPLE__)
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT,GL_TRUE);
#endif

    window_=glfwCreateWindow(width,height,title.c_str(),nullptr,nullptr);
    if (!window_) {
        throw std::runtime_error("failed to create window!");
    }

    glfwMakeContextCurrent(window_);

    if (!gladLoadGLLoader(reinterpret_cast<GLADloadproc>(glfwGetProcAddress))) {
        throw std::runtime_error("failed to initialize glad!");
    }

    glViewport(0,0,width,height);

    glfwSetWindowSizeCallback(window_,framebuffer_size_callback);
}

GLFWwindow * const Window::glWindow() {
    return nullptr;
}

void Window::mainLoop() const {
    while (!glfwWindowShouldClose(window_)) {
        glfwSwapBuffers(window_);
        glfwPollEvents();
    }
}
