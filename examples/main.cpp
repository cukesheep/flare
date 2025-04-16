#include <iostream>
#include "flare/render/render.h"

int main() {
	std::unique_ptr<Render> render (new Render("example", 800, 600));
	render->Init();
	render->MainLoop();
	render->Cleanup();
	return 0;
}