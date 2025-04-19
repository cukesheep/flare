#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <string>

namespace flare::window
{
    struct WindowInfo
    {
        std::string title;
        int width;
        int height;
    };

    class Window
    {
    public:
        int Width;
        int Height;

        Window(std::string title, int width, int height);
        ~Window();

        GLFWwindow *const GetWindow();

    private:
        GLFWwindow *window;
        std::string title;

        void createWindow();
    };
}