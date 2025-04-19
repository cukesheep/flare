#include <stdexcept>
#include <iostream>

#include<render/render.h>
#include<window/window.h>

int main(){
    flare::render::Render* render=new flare::render::Render(flare::window::WindowInfo{"flare",800,600});
    try
    {
        render->Init();
        render->mainLoop();
        render->Cleanup();
    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\n';
    }
    

    return 0;
}