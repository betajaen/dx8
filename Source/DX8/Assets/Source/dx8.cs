using System;
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
      internal static extern int SetValue(int name, int value);

      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern int GetValue(int name);

      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern int SetData(int name, IntPtr data, int length);

      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern int GetData(int name, IntPtr data, int length);

      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern int Call(int name, int value);
      
      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern IntPtr GetCrt();
    }
#else
    static class Dll
    {
      internal static extern int Initialise()  { return 0; }
      internal static extern int Shutdown()    { return 0; }
      internal static extern int SetValue(int name, int value)   { return 0; }
      internal static extern int GetValue(int name)   { return 0; }
      internal static extern int SetData(int name, IntPtr data, int length)   { return 0; }
      internal static extern int GetData(int name, IntPtr data, int length)   { return 0; }
      internal static extern int Call(int name, int value)   { return 0; }
      internal static extern IntPtr GetCrt()   { return IntPtr.Null; }
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
    
    internal static int SetValue(int name, int value)
    {
      return Dll.SetValue(name, value);
    }
    
    internal static int GetValue(int name)
    {
      return Dll.GetValue(name);
    }
    
    internal static int GetData(int name, IntPtr data, int length)
    {
      return Dll.GetData(name, data, length);
    }
    
    internal static int SetData(int name, IntPtr data, int length)
    {
      return Dll.SetData(name, data, length);
    }

    internal static int Call(int name, int value)
    {
      return Dll.Call(name, value);
    }

    internal static IntPtr GetCrt()
    {
      return Dll.GetCrt();
    }

  }

  public class CRuntime : MonoBehaviour
  {
    public  bool                   ReloadNeeded;
    public  bool                   IsOpen;
    public  bool                   IsRunning;
    public  string                 RomPath = @"C:\dev\dx8\ROMS\boot.bin";
    public  int                    LastSteps = 0;
    public  Texture2D              Crt;
    public  bool FirstCycle = false;


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
        FirstCycle = true;
        IsRunning = false;
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
    
    void Awake()
    {
      Crt = new Texture2D(320, 256, TextureFormat.RGB24, false);
      Crt.filterMode = FilterMode.Point;
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
        if (IsRunning)
        {
          RunOnce(Time.fixedDeltaTime);
        }
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
      
      if (IsRunning && GUI.Button(new Rect(100,0,100,25), "Pause"))
      {
        IsRunning = false;
      }
      
      if (!IsRunning && GUI.Button(new Rect(100,0,100,25), "Resume"))
      {
        IsRunning = true;
      }

      if (!IsRunning && GUI.Button(new Rect(200,0,100,25), "Step"))
      {
        RunOnce(-1.0f);
        
       Debug.LogFormat(
        "A={0:X2} X={1:X2} Y={2:X2} Z={3:X2} W={4:X2} Pc={5:X4}, St={6:X2}, Fl={7:X2}, Steps={8}, Opcode={9:X2}, Operand={10:X4} GpuTimer={11}",
          Library.GetValue(Api.A),
          Library.GetValue(Api.X),
          Library.GetValue(Api.Y),
          Library.GetValue(Api.Z),
          Library.GetValue(Api.W),
          Library.GetValue(Api.Pc),
          Library.GetValue(Api.Stack),
          Library.GetValue(Api.Flags),
          LastSteps,
          Library.GetValue(Api.LastOpcode),
          Library.GetValue(Api.LastOperand),
          Library.GetValue(Api.GpuTimer)
       );

      }
      

      if (!IsRunning && GUI.RepeatButton(new Rect(200,25,100,25), "FWD"))
      {
        RunOnce(-1.0f);
        
       Debug.LogFormat(
        "A={0:X2} X={1:X2} Y={2:X2} Z={3:X2} W={4:X2} Pc={5:X4}, St={6:X2}, Fl={7:X2}, Steps={8}, Opcode={9:X2}, Operand={10:X4} GpuTimer={11}",
          Library.GetValue(Api.A),
          Library.GetValue(Api.X),
          Library.GetValue(Api.Y),
          Library.GetValue(Api.Z),
          Library.GetValue(Api.W),
          Library.GetValue(Api.Pc),
          Library.GetValue(Api.Stack),
          Library.GetValue(Api.Flags),
          LastSteps,
          Library.GetValue(Api.LastOpcode),
          Library.GetValue(Api.LastOperand),
          Library.GetValue(Api.GpuTimer)
       );

      }

      if (!IsRunning && GUI.Button(new Rect(300,25,100,25), "Frame"))
      {
        RunOnce(1.0f / 60.0f);
      }

      if (GUI.Button(new Rect(300, 0, 100, 25), "Load"))
      {
        LoadProgram();
      }
      
      if (GUI.Button(new Rect(256, 0, 100, 25), "Save Crt"))
      {
        System.IO.File.WriteAllBytes("crt.png", Crt.EncodeToPNG());
      }

      GUI.Label(new Rect(0, 25, Screen.width, 60), String.Format(
        "A={0:X2} X={1:X2} Y={2:X2} Z={3:X2} W={4:X2} Pc={5:X4}, St={6:X2}, Fl={7:X2}, Steps={8}, Opcode={9:X2}, Operand={10:X4} GpuTimer={11}",
          Library.GetValue(Api.A),
          Library.GetValue(Api.X),
          Library.GetValue(Api.Y),
          Library.GetValue(Api.Z),
          Library.GetValue(Api.W),
          Library.GetValue(Api.Pc),
          Library.GetValue(Api.Stack),
          Library.GetValue(Api.Flags),
          LastSteps,
          Library.GetValue(Api.LastOpcode),
          Library.GetValue(Api.LastOperand),
          Library.GetValue(Api.GpuTimer)
       ));

       int s = 2;
       int sw = 320 * s;
       int sh = 256 * s;
        GUI.DrawTexture(new Rect(Screen.width / 2 - sw / 2, Screen.height / 2 + sh / 2, sw, -sh), Crt);
    }

    void RunOnce(float timeSec)
    {
      if (FirstCycle)
      {
        LoadProgram();
        FirstCycle = false;
      }
      
      int ms = (int) (timeSec * 1000.0f);
      
      if (ms == 0)
      {
        ms = 15 * 1000;
      }
      
      LastSteps = Library.Call(Api.CycleFn, ms);
      UpdateCrt();
    }

    void UpdateCrt()
    {
      if (Library.GetValue(Api.CrtDirty) == 1)
      {
        IntPtr crt = Library.GetCrt();
        Crt.LoadRawTextureData(crt, 320 * 256 * 3);
        Crt.Apply();
      }
    }

    void LoadProgram()
    {
      byte[] data = System.IO.File.ReadAllBytes(RomPath);
      IntPtr romPtr = Marshal.AllocHGlobal(data.Length);
      Marshal.Copy(data, 0, romPtr, data.Length);
        
      Library.Call(Api.HardReset, 0);
      int r = Library.SetData(Api.ProgramRam, romPtr, data.Length);
      Debug.LogFormat("Loaded Program = {0}, Length: {1}", r, data.Length);
      Marshal.FreeHGlobal(romPtr);
    }

  }
  
}
