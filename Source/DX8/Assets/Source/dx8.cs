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
    
    public class KeyState
    {
      public KeyState(KeyCode main, KeyCode modifier)
      {
        mainKey = main;
        modifierKey = modifier;
      }

      public bool Update()
      {
        wasDown = down;
        
        down = false;

        bool mainState = Input.GetKey(mainKey);

        if (modifierKey == KeyCode.None)
        {
          down = mainState;
        }
        else if (modifierKey == KeyCode.LeftShift || modifierKey == KeyCode.RightShift)
        {
          bool modDown = Input.GetKey(KeyCode.LeftShift) | Input.GetKey(KeyCode.RightShift);

          down = (mainState && modDown);
        }
        else if (modifierKey == KeyCode.LeftControl || modifierKey == KeyCode.RightControl)
        {
          bool modDown = Input.GetKey(KeyCode.LeftControl) | Input.GetKey(KeyCode.RightControl);

          down = (mainState && modDown);
        }

        return wasDown != down;
      }

      public KeyCode mainKey, modifierKey;
      public bool wasDown, down;

      public bool Released {
        get { 
          return wasDown && !down;
        }
      }
      
      public bool Pressed {
        get { 
          return !wasDown && down;
        }
      }

      public bool Held {
        get {
          return down && wasDown;
        }
      }

    }

    public KeyState[] KeyStates = new KeyState[Api.Key_COUNT];

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

        SetupKeys();
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
          Debug.Log(Time.fixedDeltaTime);
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
        
        SendKeys();

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

      if (Library.GetValue(Api.CpuHalt) == 1 && GUI.Button(new Rect(700, 0, 100, 25), "Resume"))
      {
        Library.SetValue(Api.CpuHalt, 0);
      }
      
      if (Library.GetValue(Api.CpuHalt) == 0 && GUI.Button(new Rect(700, 0, 100, 25), "Halt"))
      {
        Library.SetValue(Api.CpuHalt, 1);
      }

      InspectShared = GUI.Toggle(new Rect(0, 125, 100, 25), InspectShared, string.Format("Inspect ${0:X4}", InspectAddress));

      if (InspectShared)
      {
        GUI.changed = false;
        string strV = GUI.TextField(new Rect(0, 150, 100, 25), String.Format("{0:X4}", InspectAddress));
        if (GUI.changed)
        {
          int newAddress = 0;
          if (int.TryParse(strV, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out newAddress))
          {
            InspectAddress = newAddress;
          }
        }
        if (GUI.Button(new Rect(100, 150, 25, 25), "<"))
        {
          InspectAddress -= 16;
        }
        if (GUI.Button(new Rect(125, 150, 25, 25), ">"))
        {
          InspectAddress += 16;
        }
        if (GUI.Button(new Rect(100, 175, 25, 25), "<<"))
        {
          InspectAddress -= 40;
        }
        if (GUI.Button(new Rect(125, 175, 25, 25), ">>"))
        {
          InspectAddress += 40;
        }
        if (GUI.Button(new Rect(150, 150, 50, 25), "0000"))
        {
          InspectAddress = 0x0000;
        }
        if (GUI.Button(new Rect(200, 150, 50, 25), "0800"))
        {
          InspectAddress = 0x0800;
        }
        if (GUI.Button(new Rect(150, 175, 50, 25), "8000"))
        {
          InspectAddress = 0x8000;
        }
        if (GUI.Button(new Rect(200, 175, 50, 25), "7800"))
        {
          InspectAddress = 0x7800;
        }
        if (GUI.Button(new Rect(150, 200, 50, 25), "+"))
        {
          InspectAddress = 0x7800 + 0x300;
        }
      }

      GUI.Label(new Rect(0, 50, Screen.width, 90), String.Format(
        "A={0:X2} X={1:X2} Y={2:X2} Z={3:X2} W={4:X2} Pc={5:X4}, St={6:X2}, Fl={7:X2}, Steps={8}, Opcode={9:X2}, Operand={10:X4} GpuTimer={11} Halt={12}",
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
          Library.GetValue(Api.GpuTimer),
          Library.GetValue(Api.CpuHalt)
       ));

       if (InspectShared)
       {
         for(int i=0;i < 16;i++)
         {
          //int val = Api.
          int val = Library.GetRam(Api.SharedAddr, i + InspectAddress);
          GUI.Label(new Rect(i * 25, 75, 25, 25), String.Format("{0:X2}", val));
          if (val > ' ' && val < 127)
            GUI.Label(new Rect(i * 25, 100, 25, 25), String.Format("{0}", (char) val));
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
    
    void SetupKeys()
    {
      KeyStates[Api.Key_0]    = new KeyState(KeyCode.Alpha0, KeyCode.None);
      KeyStates[Api.Key_1]    = new KeyState(KeyCode.Alpha1, KeyCode.None);
      KeyStates[Api.Key_2]    = new KeyState(KeyCode.Alpha2, KeyCode.None);
      KeyStates[Api.Key_3]    = new KeyState(KeyCode.Alpha3, KeyCode.None);
      KeyStates[Api.Key_4]    = new KeyState(KeyCode.Alpha4, KeyCode.None);
      KeyStates[Api.Key_5]    = new KeyState(KeyCode.Alpha5, KeyCode.None);
      KeyStates[Api.Key_6]    = new KeyState(KeyCode.Alpha6, KeyCode.None);
      KeyStates[Api.Key_7]    = new KeyState(KeyCode.Alpha7, KeyCode.None);
      KeyStates[Api.Key_8]    = new KeyState(KeyCode.Alpha8, KeyCode.None);
      KeyStates[Api.Key_9]    = new KeyState(KeyCode.Alpha9, KeyCode.None);
      
      KeyStates[Api.Key_Exclaim]            = new KeyState(KeyCode.Exclaim, KeyCode.None);
      KeyStates[Api.Key_DoubleQuote]        = new KeyState(KeyCode.DoubleQuote, KeyCode.None);
      KeyStates[Api.Key_Hash]               = new KeyState(KeyCode.Hash, KeyCode.None);
      KeyStates[Api.Key_PoundSign]          = new KeyState(KeyCode.Dollar, KeyCode.None);
      KeyStates[Api.Key_Percentage]         = new KeyState(KeyCode.Alpha5, KeyCode.LeftShift);
      KeyStates[Api.Key_Ampersand]          = new KeyState(KeyCode.Ampersand, KeyCode.None);
      KeyStates[Api.Key_SingleQuote]        = new KeyState(KeyCode.Quote, KeyCode.None);
      KeyStates[Api.Key_LeftParentheses]    = new KeyState(KeyCode.LeftParen, KeyCode.None);
      KeyStates[Api.Key_RightParentheses]   = new KeyState(KeyCode.RightParen, KeyCode.None);
      KeyStates[Api.Key_At]                 = new KeyState(KeyCode.At, KeyCode.None);

      KeyStates[Api.Key_LowercaseA]    = new KeyState(KeyCode.A, KeyCode.None);
      KeyStates[Api.Key_LowercaseB]    = new KeyState(KeyCode.B, KeyCode.None);
      KeyStates[Api.Key_LowercaseC]    = new KeyState(KeyCode.C, KeyCode.None);
      KeyStates[Api.Key_LowercaseD]    = new KeyState(KeyCode.D, KeyCode.None);
      KeyStates[Api.Key_LowercaseE]    = new KeyState(KeyCode.E, KeyCode.None);
      KeyStates[Api.Key_LowercaseF]    = new KeyState(KeyCode.F, KeyCode.None);
      KeyStates[Api.Key_LowercaseG]    = new KeyState(KeyCode.G, KeyCode.None);
      KeyStates[Api.Key_LowercaseH]    = new KeyState(KeyCode.H, KeyCode.None);
      KeyStates[Api.Key_LowercaseI]    = new KeyState(KeyCode.I, KeyCode.None);
      KeyStates[Api.Key_LowercaseJ]    = new KeyState(KeyCode.J, KeyCode.None);
      KeyStates[Api.Key_LowercaseK]    = new KeyState(KeyCode.K, KeyCode.None);
      KeyStates[Api.Key_LowercaseL]    = new KeyState(KeyCode.L, KeyCode.None);
      KeyStates[Api.Key_LowercaseM]    = new KeyState(KeyCode.M, KeyCode.None);
      KeyStates[Api.Key_LowercaseN]    = new KeyState(KeyCode.N, KeyCode.None);
      KeyStates[Api.Key_LowercaseO]    = new KeyState(KeyCode.O, KeyCode.None);
      KeyStates[Api.Key_LowercaseP]    = new KeyState(KeyCode.P, KeyCode.None);
      KeyStates[Api.Key_LowercaseQ]    = new KeyState(KeyCode.Q, KeyCode.None);
      KeyStates[Api.Key_LowercaseR]    = new KeyState(KeyCode.R, KeyCode.None);
      KeyStates[Api.Key_LowercaseS]    = new KeyState(KeyCode.S, KeyCode.None);
      KeyStates[Api.Key_LowercaseT]    = new KeyState(KeyCode.T, KeyCode.None);
      KeyStates[Api.Key_LowercaseU]    = new KeyState(KeyCode.U, KeyCode.None);
      KeyStates[Api.Key_LowercaseV]    = new KeyState(KeyCode.V, KeyCode.None);
      KeyStates[Api.Key_LowercaseW]    = new KeyState(KeyCode.W, KeyCode.None);
      KeyStates[Api.Key_LowercaseX]    = new KeyState(KeyCode.X, KeyCode.None);
      KeyStates[Api.Key_LowercaseY]    = new KeyState(KeyCode.Y, KeyCode.None);
      KeyStates[Api.Key_LowercaseZ]    = new KeyState(KeyCode.Z, KeyCode.None);
      
      KeyStates[Api.Key_UppercaseA]    = new KeyState(KeyCode.A, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseB]    = new KeyState(KeyCode.B, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseC]    = new KeyState(KeyCode.C, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseD]    = new KeyState(KeyCode.D, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseE]    = new KeyState(KeyCode.E, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseF]    = new KeyState(KeyCode.F, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseG]    = new KeyState(KeyCode.G, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseH]    = new KeyState(KeyCode.H, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseI]    = new KeyState(KeyCode.I, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseJ]    = new KeyState(KeyCode.J, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseK]    = new KeyState(KeyCode.K, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseL]    = new KeyState(KeyCode.L, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseM]    = new KeyState(KeyCode.M, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseN]    = new KeyState(KeyCode.N, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseO]    = new KeyState(KeyCode.O, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseP]    = new KeyState(KeyCode.P, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseQ]    = new KeyState(KeyCode.Q, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseR]    = new KeyState(KeyCode.R, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseS]    = new KeyState(KeyCode.S, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseT]    = new KeyState(KeyCode.T, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseU]    = new KeyState(KeyCode.U, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseV]    = new KeyState(KeyCode.V, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseW]    = new KeyState(KeyCode.W, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseX]    = new KeyState(KeyCode.X, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseY]    = new KeyState(KeyCode.Y, KeyCode.LeftShift);
      KeyStates[Api.Key_UppercaseZ]    = new KeyState(KeyCode.Z, KeyCode.LeftShift);

      
      KeyStates[Api.Key_Plus]          = new KeyState(KeyCode.Plus, KeyCode.None);
      KeyStates[Api.Key_Minus]         = new KeyState(KeyCode.Minus, KeyCode.None);
      KeyStates[Api.Key_Multiply]      = new KeyState(KeyCode.Asterisk, KeyCode.None);
      KeyStates[Api.Key_Equals]        = new KeyState(KeyCode.Equals, KeyCode.None);
      KeyStates[Api.Key_Comma]         = new KeyState(KeyCode.Comma, KeyCode.None);
      KeyStates[Api.Key_Period]        = new KeyState(KeyCode.Period, KeyCode.None);
      KeyStates[Api.Key_SemiColon]     = new KeyState(KeyCode.Semicolon, KeyCode.None);

      KeyStates[Api.Key_Space]         = new KeyState(KeyCode.Space, KeyCode.None);
      
      KeyStates[Api.Key_LeftSquareBracket]     = new KeyState(KeyCode.LeftBracket, KeyCode.None);
      KeyStates[Api.Key_RightSquareBracket]    = new KeyState(KeyCode.RightBracket, KeyCode.None);
      KeyStates[Api.Key_LeftBrace]             = new KeyState(KeyCode.LeftBracket, KeyCode.LeftShift);
      KeyStates[Api.Key_RightBrace]            = new KeyState(KeyCode.RightBracket, KeyCode.LeftShift);
      KeyStates[Api.Key_QuestionMark]          = new KeyState(KeyCode.Question, KeyCode.None);
      KeyStates[Api.Key_LeftAngleBracket]      = new KeyState(KeyCode.Less, KeyCode.None);
      KeyStates[Api.Key_RightAngleBracket]     = new KeyState(KeyCode.Greater, KeyCode.None);
      KeyStates[Api.Key_Colon]                 = new KeyState(KeyCode.Colon, KeyCode.None);

      KeyStates[Api.Key_Break]                 = new KeyState(KeyCode.Escape, KeyCode.None);
      KeyStates[Api.Key_Delete]                = new KeyState(KeyCode.Backspace, KeyCode.None);
      KeyStates[Api.Key_Control]               = new KeyState(KeyCode.LeftControl, KeyCode.None);
      KeyStates[Api.Key_LeftArrow]             = new KeyState(KeyCode.LeftArrow, KeyCode.None);
      KeyStates[Api.Key_RightArrow]            = new KeyState(KeyCode.RightArrow, KeyCode.None);
      KeyStates[Api.Key_UpArrow]               = new KeyState(KeyCode.UpArrow, KeyCode.None);
      KeyStates[Api.Key_DownArrow]             = new KeyState(KeyCode.DownArrow, KeyCode.None);
      KeyStates[Api.Key_CapsLock]              = new KeyState(KeyCode.Semicolon, KeyCode.None);
      KeyStates[Api.Key_LeftShift]             = new KeyState(KeyCode.LeftShift, KeyCode.None);
      KeyStates[Api.Key_RightShift]            = new KeyState(KeyCode.RightShift, KeyCode.None);
      KeyStates[Api.Key_Reset]                 = new KeyState(KeyCode.Escape, KeyCode.LeftControl);
      KeyStates[Api.Key_Function1]             = new KeyState(KeyCode.F1, KeyCode.None);
      KeyStates[Api.Key_Function2]             = new KeyState(KeyCode.F2, KeyCode.None);
      KeyStates[Api.Key_Function3]             = new KeyState(KeyCode.F3, KeyCode.None);
      KeyStates[Api.Key_Function4]             = new KeyState(KeyCode.F4, KeyCode.None);
      KeyStates[Api.Key_Program1]              = new KeyState(KeyCode.F1, KeyCode.LeftControl);
      KeyStates[Api.Key_Program2]              = new KeyState(KeyCode.F2, KeyCode.LeftControl);
      KeyStates[Api.Key_Program3]              = new KeyState(KeyCode.F3, KeyCode.LeftControl);
      KeyStates[Api.Key_Program4]              = new KeyState(KeyCode.F4, KeyCode.LeftControl);


    }

    void SendKeys()
    {
      for(int i=0;i < KeyStates.Length;i++)
      {
        
      }
    }

  }
  
}
