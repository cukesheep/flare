//
// Created by cukesheep on 2025/7/3.
//
#include<iostream>

#include "service_locator/service_locator.h"
#include "window/window.h"

int main() {
    auto* window=new Window("flare",800,600);
    ServiceLocator::provide<Window>(window);

    window=ServiceLocator::get<Window>();

    window->mainLoop();

    return 0;
}
