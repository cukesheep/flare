#include <exception>
#include <iostream>
#include "flare/Render/Render.h"

int main(){
    flare::Render* render=new flare::Render(800,600,"flare");
    try{
        render->run();
    }catch(const std::exception& e){
        std::cerr<<e.what()<<std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}