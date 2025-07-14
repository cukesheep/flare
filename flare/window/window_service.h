//
// Created by cukesheep on 2025/7/3.
//

#ifndef WINDOW_SERVICE_H
#define WINDOW_SERVICE_H
#include "service_locator/service.h"

#include<GLFW/glfw3.h>

class WindowService:public Service {
protected:
    ~WindowService() = default;

    // ~WindowService()=default;
public:

    virtual GLFWwindow* const glWindow()=0;
};
#endif //WINDOW_SERVICE_H
