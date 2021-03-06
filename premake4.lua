-- A solution contains projects, and defines the available configurations
solution "Cells At Work"
   configurations { "Debug", "Release" }
   includedirs {"/usr/local/include", "include", "lib"}
   links {"SDL2", "SDL2_image", "SDL2_ttf", "SDL2_mixer" }
   libdirs {"/usr/local/lib", "lib"}
   kind "ConsoleApp"
   buildoptions {"-Wall", "-std=c++11" }
   language "C++"
 
   -- A project defines one build target
   project "cells-at-work"
      files { "src/**.h", "src/**.cpp" }
      excludes { "test/*" }
 
      configuration "Debug"
         defines { "DEBUG" }
         flags { "Symbols" }
 
      configuration "Release"
         defines { "NDEBUG" }
         flags { "Optimize" }

