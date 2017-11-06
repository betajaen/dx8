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
    files           {
      "*.c",
      "*.h",
      "*.inc"
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
