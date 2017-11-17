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
      internal static extern int GetRam(int name, int addr);

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
      internal static extern int GetRam(int name, int addr)   { return 0xCD; }
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
    
    internal static int GetRam(int name, int addr)
    {
      return Dll.GetRam(name, addr);
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
    public  string                 FloppyPath = @"C:\dev\dx8\ROMS\floppy_test.bin.fd";
    public  int                    LastSteps = 0;
    public  Texture2D              Crt;
    public  bool IsOff = false;
    public  bool InspectShared = false;
    public  bool HigherBank = false;
    public  int  InspectAddress = 0;

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
        IsOff = true;
        IsRunning = true;
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

      if (GUI.Button(new Rect(300, 0, 100, 25), "Turn On"))
      {
        TurnOn();
      }
      
      if (GUI.Button(new Rect(400, 0, 100, 25), "Save Crt"))
      {
        System.IO.File.WriteAllBytes("crt.png", Crt.EncodeToPNG());
      }
      
      if (GUI.Button(new Rect(500, 0, 100, 25), "FD Insert"))
      {
        LoadFloppy();
        Library.Call(Api.InsertDisk, 0);
      }
      
      if (GUI.Button(new Rect(600, 0, 100, 25), "FD Remove"))
      {
        Library.Call(Api.RemoveDisk, 0);
      }

      InspectShared = GUI.Toggle(new Rect(0, 100, 100, 25), InspectShared, string.Format("Inspect ${0:X4}", InspectAddress));

      if (InspectShared)
      {
        GUI.changed = false;
        string strV = GUI.TextField(new Rect(0, 125, 100, 25), String.Format("{0:X4}", InspectAddress));
        if (GUI.changed)
        {
          int newAddress = 0;
          if (int.TryParse(strV, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out newAddress))
          {
            InspectAddress = newAddress;
          }
        }
        if (GUI.Button(new Rect(100, 125, 25, 25), "<"))
        {
          InspectAddress -= 16;
        }
        if (GUI.Button(new Rect(125, 125, 25, 25), ">"))
        {
          InspectAddress += 16;
        }
        if (GUI.Button(new Rect(100, 150, 25, 25), "<<"))
        {
          InspectAddress -= 40;
        }
        if (GUI.Button(new Rect(125, 150, 25, 25), ">>"))
        {
          InspectAddress += 40;
        }
        if (GUI.Button(new Rect(150, 125, 50, 25), "0000"))
        {
          InspectAddress = 0x0000;
        }
        if (GUI.Button(new Rect(200, 125, 50, 25), "0800"))
        {
          InspectAddress = 0x0800;
        }
        if (GUI.Button(new Rect(150, 150, 50, 25), "8000"))
        {
          InspectAddress = 0x8000;
        }
        if (GUI.Button(new Rect(200, 150, 50, 25), "F800"))
        {
          InspectAddress = 0xF800;
        }
      }

      GUI.Label(new Rect(0, 50, Screen.width, 90), String.Format(
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

       if (InspectShared)
       {
         for(int i=0;i < 16;i++)
         {
          //int val = Api.
          int val = Library.GetRam(Api.SharedAddr, i + InspectAddress);
          GUI.Label(new Rect(i * 25, 75, 25, 25), String.Format("{0:X2}", val));
         }
       }
       int s = 2;
       int sw = 320 * s;
       int sh = 256 * s;
        GUI.DrawTexture(new Rect(Screen.width / 2 - sw / 2, Screen.height / 2 + sh / 2, sw, -sh), Crt);
    }

    void RunOnce(float timeSec)
    {
      if (IsOff)
      {
        TurnOn();
        IsOff = false;
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
    
    void LoadFloppy()
    {
      byte[] fd = System.IO.File.ReadAllBytes(FloppyPath);
      IntPtr romPtr = Marshal.AllocHGlobal(fd.Length);
      Marshal.Copy(fd, 0, romPtr, fd.Length);
      
      int r = Library.SetData(Api.FloppyDisk, romPtr, fd.Length);
      Debug.LogFormat("Loaded Floppy = {0}, Length: {1}", r, fd.Length);
      Marshal.FreeHGlobal(romPtr);
    }


    void TurnOn()
    {
      byte[] data = System.IO.File.ReadAllBytes(RomPath);
      IntPtr romPtr = Marshal.AllocHGlobal(data.Length);
      Marshal.Copy(data, 0, romPtr, data.Length);
      
      int r = Library.SetData(Api.Rom, romPtr, data.Length);
      Debug.LogFormat("Loaded Program = {0}, Length: {1}", r, data.Length);
      Marshal.FreeHGlobal(romPtr);

      Library.Call(Api.HardReset, 0);
    }

  }
  
}
