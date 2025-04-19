#include "render/render.h"

flare::render::Render::Render(window::WindowInfo windowInfo)
{
	this->windowInfo=windowInfo;
}

void flare::render::Render::Init()
{
	window=new window::Window(windowInfo.title,windowInfo.width,windowInfo.height);
}

void flare::render::Render::mainLoop()
{
	while(!glfwWindowShouldClose(window->GetWindow())){
		glfwSwapBuffers(window->GetWindow());
		glfwPollEvents();
	}
}

void flare::render::Render::Cleanup()
{
	free(window);
	glfwTerminate();
}
