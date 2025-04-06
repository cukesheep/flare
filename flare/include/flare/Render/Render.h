#pragma once

#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include <GLFW/glfw3native.h>
#include <string>
#include <vector>
#include <optional>
#include <vulkan/vulkan.h>

namespace flare
{
	struct QueueFamilyIndices {
		std::optional<uint32_t> graphicsFamily;
		std::optional<uint32_t> presentFamily;

		bool isCompelete() { return graphicsFamily.has_value() && presentFamily.has_value(); }
	};

	class Render
	{
	public:
		void run();
		Render(uint32_t windowWidth, uint32_t windowHeight, std::string windowTitle);

	private:
		void initWindow();
		void initVulkan();
		void mainLoop();
		void cleanup();

		//init vulkan
		void createInstance();
		std::vector<const char*> getRequiredExtensions();
		bool checkValidationLayerSupport();
		void setupDebugMessenger();
		void populateDebugMessengerCreateInfo(VkDebugUtilsMessengerCreateInfoEXT& createInfo);

		const std::vector<const char*> validationLayers = {
			"VK_LAYER_KHRONOS_validation"
		};

#ifdef NDEBUG
		const bool enableValidationLayers = false;
#else
		const bool enableValidationLayers = true;
#endif

		VkInstance instance;
		VkDebugUtilsMessengerEXT debugMessenger;

		//physical device
		void pickPhysicalDevice();
		bool isDeviceSuitalbe(VkPhysicalDevice device);
		QueueFamilyIndices findQueueFamilies(VkPhysicalDevice device);

		VkPhysicalDevice physicalDevice = VK_NULL_HANDLE;

		//logical device
		void createLogicalDevice();
		std::vector<const char*> getRequiredDeviceExtensions();

		VkDevice device;
		VkQueue graphicsQueue;
		VkQueue presentQueue;

		//surface
		void createSurface();

		VkSurfaceKHR surface;

		//swapchain
		const std::vector<const char*> deviceExtensions = {
			VK_KHR_SWAPCHAIN_EXTENSION_NAME
		};

		bool checkDeviceExtensionSupport(VkPhysicalDevice device);

		void createSwapChain();

		GLFWwindow* window;
		uint32_t windowWidth;
		uint32_t windowHeight;
		std::string appName;
	};
}