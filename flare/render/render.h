#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <string>

#include "window/window.h"

namespace flare::render{
	class Render{
		public:
			Render(window::WindowInfo windowInfo);

			void Init();
			void mainLoop();
			void Cleanup();

		private:
			window::Window* window;
			window::WindowInfo windowInfo;
	};
}