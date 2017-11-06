﻿using System;
using System.Runtime.InteropServices;
using UnityEngine;

namespace DX8
{

  public static class Library
  {
#if UNITY_EDITOR
    public const String DllPath = "C:\\dev\\DX8Tests\\DX8\\DX8.dll";
    public const String Name = "libDX8-DevKit";
#else
    public const String Name = "DX8";
#endif

#if UNITY_EDITOR_WIN || UNITY_STANDALONE_WIN
    static class Dll
    {
      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern int Initialise();
    
      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern int Shutdown();
    
      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern int Step(float deltaTime);
    }
#else
    static class Dll
    {
      internal static extern int Initialise(IntPtr name, ref ApiInterface api)  { return 1; }
      internal static extern int Shutdown()                                     { return 1; }
      internal static extern int Step(float deltaTime)                          { return 1; }
    }
#endif
    
    internal static int Initialise()
    {
      int result = Dll.Initialise();
      return result;
    }

    internal static int Shutdown()
    {
      return Dll.Shutdown();
    }
    
    internal static int Step(float deltaTime)
    {
      return Dll.Step(deltaTime);
    }
    
  }

  public class CRuntime : MonoBehaviour
  {
    public  bool                   ReloadNeeded;
    public  bool                   IsOpen;

#if UNITY_EDITOR
    static System.IO.FileSystemWatcher DllWatcher;
#endif

    [UnityEngine.RuntimeInitializeOnLoadMethod]
    static void Init()
    {
      GameObject Go = new GameObject("__DX8Runtime");
      Go.AddComponent<CRuntime>();
      Go.isStatic = true;
    }

    void OnApplicationQuit()
    {
      if (IsOpen)
      {
        int r = Library.Shutdown();
        if (r == 0)
        {
          IsOpen = false;
          Debug.Log("Unloaded Library");
        }
        else
        {
          Debug.LogErrorFormat("Did not unload Library; Error Code {0}", r);
        }
      }
    }

    void Reload()
    {
      int r;
      
      if (IsOpen)
      {
        r = Library.Shutdown();
        if (r == 0)
        {
          IsOpen = false;
          Debug.Log("Unloaded Library");
        }
        else
        {
          Debug.LogErrorFormat("Did not unload Library; Error Code {0}", r);
        }
      }
      
      r = Library.Initialise();
      Debug.LogFormat("Initialise said {0}", r);

      if (r == 0)
      {
        IsOpen = true;
      }
      else
      {
        switch(r)
        {
          case 9000:
          {
            Debug.LogErrorFormat("Did not unload Library; (Internal Error) - ApiInterface Pointer is Null");
          }
          break;
          case 9001:
          {
            Debug.LogError("API version out date. Rebuild API Bindings and/or Rebuild DX8.dll");
          }
          break;
          case 10001:
          {
            Debug.LogError("Could not copy library. Check DX8_rt.dll is not un-use. Maybe Restart Unity?");
          }
          break;
          case 10002:
          {
            Debug.LogError("Could not load library. Check DX8_rt.dll exists. Maybe Restart Unity?");
          }
          break;
          default:
          {
            Debug.LogErrorFormat("Did not unload Library; Error Code {0}", r);
          }
          break;
        }
      }
    }

    void Start()
    {
#if UNITY_EDITOR
      String path = @"C:\dev\dx8\Source\libDX8\Build";
      DllWatcher = new System.IO.FileSystemWatcher(path, "*.dll");
      DllWatcher.Changed += new System.IO.FileSystemEventHandler(OnDllChanged);
      DllWatcher.EnableRaisingEvents = true;
#endif
      ReloadNeeded = true;
    }
    
#if UNITY_EDITOR
    private void OnDllChanged(System.Object sender, System.IO.FileSystemEventArgs e)
    {
      String dllName = System.IO.Path.GetFileNameWithoutExtension(e.FullPath);
      if (dllName == "DX8")
      {
        ReloadNeeded = true;
      }
    }
#endif
    
    void FixedUpdate()
    {
      if (IsOpen)
      {
        int r = Library.Step(Time.fixedDeltaTime);
        Debug.Log(r);
      }
    }

    void Update()
    {
      if (ReloadNeeded)
      {
        ReloadNeeded = false;
        Reload();
      }
    }

    private void OnGUI()
    {
      if (GUI.Button(new Rect(0,0,100, 25), "Reload"))
      {
        ReloadNeeded = true;
      }
    }

  }
  
}
