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
    defines         { "DX8_IS_LIBRARY", "_CRT_SECURE_NO_WARNINGS" }
    includedirs     { "./"}
    files           {
      "dx8/*.c",
      "dx8/*.h",
      "dx8/*.inc",
      "genie.lua"
  }

  project "libDX8A"
    kind            "SharedLib"
    language        "C"
    objdir          ".Obj"
    flags           { "FatalWarnings" }
    defines         { "DX8_IS_LIBRARY", "_CRT_SECURE_NO_WARNINGS" }
    includedirs     { "./"}
    files           {
      "dx8A/**.c",
      "dx8A/**.h",
      "dx8A/**.inc",
      "genie.lua"
  }

  project "libDX8-DevKit"
    kind            "SharedLib"
    language        "C"
    objdir          ".Obj"
    flags           { "FatalWarnings" }
    defines         ( "DX8_DEVKIT", "_CRT_SECURE_NO_WARNINGS")
    files           {
      "dx8/dx8_DevKit.c",
      "dx8/dx8.h",
      "genie.lua"
  }
  configuration     { "vs*" }
    postbuildcommands   { "copy /Y \"$(TargetDir)$(TargetName).dll\" \"C:/dev/dx8/Source/dx8/Assets/Plugins/libDX8-DevKit.dll\"" }

  project "libDX8-Test"
    kind            "ConsoleApp"
    language        "C"
    objdir          ".Obj"
    flags           { "FatalWarnings" }
    defines         ( "DX8_TEST", "_CRT_SECURE_NO_WARNINGS")
    links           { "libDX8" }
    files           {
      "dx8/dx8_Test.c",
      "dx8/dx8.h",
      "genie.lua"
  }

  project "DX8-Player"
    kind            "ConsoleApp"
    language        "C"
    objdir          ".Obj"

    flags           { "FatalWarnings", "NoExceptions", "NoRTTI", "WinMain" }
    defines         { }
    links           { "libDX8A", "SDL2", "SDL2main" }
    includedirs     { "./", "./Shared/References/", "./Shared/References/SDL2/include" }
    libdirs         { "./Shared/References/SDL2/lib/x64/" }

    excludes        { }

    files           {
      "Player/Runtime.c",
      "Shared/References/*.c",
      "Shared/Player/References/*.h",
      "Shared/*.c",
      "Shared/*.h",
      "genie.lua"
    }

  project "ccmp"
    kind            "ConsoleApp"
    language        "C"
    objdir          ".Obj"

    flags           { "NoExceptions", "NoRTTI" }
    defines         { }
    links           { }
    includedirs     { "cmp/References/" }
    libdirs         { }

    excludes        { }

    files           {
      "ccmp/References/**.c",
      "ccmp/References/**.h",
      "ccmp/*.c",
      "ccmp/*.h",
      "genie.lua"
    }
