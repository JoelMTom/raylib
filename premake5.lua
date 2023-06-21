baseName = path.getbasename(os.getcwd())

project (baseName)
kind "StaticLib"
language "C"
staticruntime "off"

	targetdir "%{wks.location}/build/bin/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}/dependencies/%{prj.name}" 
	objdir "%{wks.location}/build/bin-int/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}/dependencies/%{prj.name}" 

files {
	"src/*.h",
	"src/*.c",
}


includedirs {
	"src/external/glfw/include",
}

defines 
{
	"NDEBUG",
	"PLATFORM_DESKTOP",
	"GRAPHICS_API_OPENGL_33",
	"_CRT_SECURE_NO_WARNINGS",
}


links 
{
	"winmm"
}

