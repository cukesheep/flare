//
// Created by cukesheep on 2025/7/3.
//

#ifndef WINDOW_H
#define WINDOW_H
#include "window_service.h"

#include<GLFW/glfw3.h>


#include<string>

class Window final :public WindowService {
public:
    Window(const std::string& title,int width,int height);

    ~Window() = default;

    GLFWwindow * const glWindow() override;

    void mainLoop() const;

private:
    GLFWwindow* window_;
};



#endif //WINDOW_H
