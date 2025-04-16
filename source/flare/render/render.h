#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <string>

class Render {
public:
	Render(const std::string& title, int width, int height);

	void Init();
	void MainLoop();
	void Cleanup();
private:
	void initGLFW();
	void initWindow();
	void initGlad();
	void initViewport();

	GLFWwindow* window=nullptr;
	int width;
	int height;
	std::string title;
};