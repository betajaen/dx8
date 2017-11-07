solution "DX8"

  configurations      { "Debug", "Release" }
  platforms           { "x64" }

  targetdir           "Build"
  debugdir            "Build"

  configuration "Debug"
    defines           { "DEBUG",  }
    flags             { "Symbols" }

  configuration "Release"
    defines           { "NDEBUG"}
    flags             { "Optimize" }

  project "libDX8"
    kind            "SharedLib"
    language        "C"
    objdir          ".Obj"
    flags           { "FatalWarnings" }
    defines         { "_CRT_SECURE_NO_WARNINGS" }
    files           {
      "*.c",
      "*.h",
      "*.inc",
      "genie.lua"
  }

  project "libDX8-DevKit"
    kind            "SharedLib"
    language        "C"
    objdir          ".Obj"
    flags           { "FatalWarnings" }
    defines         ( "DX8_DEVKIT")
    files           {
      "dx8_DevKit.c",
      "dx8.h"
  }
  configuration     { "vs*" }
    postbuildcommands   { "copy /Y \"$(TargetDir)$(TargetName).dll\" \"C:/dev/dx8/Source/dx8/Assets/Plugins/libDX8-DevKit.dll\"" }

  project "DX8-Test"
    kind            "ConsoleApp"
    language        "C"
    objdir          ".Obj"
    flags           { "FatalWarnings" }
    defines         ( "DX8_TESTS")
    files           {
      "dx8_Tests.c",
  }
