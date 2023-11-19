project "VulkanMemoryAllocator"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"src/Common.cpp",
		"src/Common.h",
		"src/SparseBindingTest.cpp",
		"src/SparseBindingTest.h",
		"src/Tests.cpp",
		"src/Tests.h",
		"src/VmaUsage.cpp",
		"src/VmaUsage.h",
		"src/VulkanSample.cpp",
		"include/vk_mem_alloc.h"
	}
	
	includedirs
	{
		"include",
		"%{VULKAN_SDK}/Include"
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		systemversion "latest"
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		
	filter "configurations:Dist"
		runtime "Release"
		optimize "on"