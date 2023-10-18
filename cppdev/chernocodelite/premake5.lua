workspace "cherno"
    architecture "x86_64"
    configurations { "Debug", "Release" }

project "cherno"
    kind "ConsoleApp"
    language "C++"

    files { "src/**.h", "src/**.cpp", "src/**.c" }

    includedirs { "include", "src" }
    --defines { "" }
    --links { "" }

    targetdir "bin/%{prj.name}-%{cfg.architecture}-%{cfg.buildcfg}"
    objdir "bin-obj/%{prj.name}-%{cfg.architecture}-%{cfg.buildcfg}"

    --postbuildcommands { "" }

    filter { "configurations:Debug" }
        defines { "_DEBUG" }
        symbols "On"

    filter { "configurations:Release" }
        defines { "_RELEASE" }
        optimize "On"