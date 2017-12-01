using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;

namespace DX8
{

  public static class Library
  {
#if UNITY_EDITOR
    //public const String DllPath = "C:\\dev\\DX8Tests\\DX8\\DX8.dll";
    public const String Name = "libDX8-DevKit";
#else
    public const String Name = "libDX8";
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

      [DllImport(Name, CallingConvention = CallingConvention.Cdecl)]
      internal static extern void GetSnd(IntPtr data, int length, int rate, int channels);
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
      internal static extern void GetSnd(IntPtr data, int length, int rate, int channels) {}
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
    
    internal static void GetSnd(IntPtr data, int length, int rate, int channels)
    {
      Dll.GetSnd(data, length, rate, channels);
    }
  }

  public class dx8 : MonoBehaviour
  {
    public  bool                   ReloadNeeded;
    public  bool                   IsOpen;
    public  bool                   IsRunning;
    
    public  string                 RomPath;

    public  string                 FloppyPath = @"C:\dev\dx8\ROMS\virtualtest\keytest.bin.fd";
    public  int                    LastSteps = 0;
    public  Texture2D              CrtTexture;
    public  Crt2d                  Crt2d;
    public  Crt3d                  Crt3d;
    public  bool                   IsPaused   = false;
    public  bool                   Is2dState  = false;
    public  bool                   IsKeyState = false;
    public  bool                   Mute = false;

    public  GameObject[]           ObjectsSim3d;
    public  GameObject[]           ObjectsSim2d;
    
    public  Camera                 MainCamera;
    public  Character              Character;
    
    public  Transform              FloppyDiskStack;
    public  GameObject             Prefab_FloppyDisk3d;
    public  List<FloppyDisk3dItem> Floppys;

    public  FloppySensor           FloppySensor;
    public  MeshRenderer           Light_Power;
    public  MeshRenderer           Light_Floppy;
    public  MeshRenderer           Light_CapsLock;

    public  Transform              Button_Power;
    public  Transform              Button_Eject;

    public  UserInterface          UserInterface;
    public  PausedUserInterface    PausedUserInterface;

    Color   Light_PowerCol, Light_FloppyCol, Light_FloppyColDim, Light_CapsLockCol;
    Vector3  Button_PowerOffPos, Button_EjectOutPos;


    public bool  PowerIsOn = false;
    
    public  bool IsOff = false;
    public  bool InspectShared = false;
    public  bool HigherBank = false;
    public  int  InspectAddress = 0;

    public  bool GotFocus = false;
    public  bool IsFloppyLoaded = false;

    public enum KeyMod
    {
      None,
      Shift,
      Control
    }

    public class KeyState
    {
      public KeyState(KeyCode main, KeyMod modifier)
      {
        mainKey = main;
        modifierKey = modifier;
      }

      public bool Update()
      {
        wasDown = down;
        
        down = false;

        bool mainState = Input.GetKey(mainKey);

        bool shiftDown = Input.GetKey(KeyCode.LeftShift) | Input.GetKey(KeyCode.RightShift);
        bool controlDown = Input.GetKey(KeyCode.LeftControl) | Input.GetKey(KeyCode.RightControl);

        if (modifierKey == KeyMod.None && !shiftDown && !controlDown)
        {
          down = mainState;
        }
        else if (modifierKey == KeyMod.Shift && shiftDown && !controlDown)
        {
          down = mainState;
        }
        else if (modifierKey == KeyMod.Control && !shiftDown && controlDown)
        {

          down = mainState;
        }

        return wasDown != down;
      }

      public KeyCode mainKey;
      public KeyMod modifierKey;
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

    public KeyState[] KeyStates = new KeyState[Api.Key_COUNT + 1];

#if UNITY_EDITOR
    static System.IO.FileSystemWatcher DllWatcher;
#endif
/*
    [UnityEngine.RuntimeInitializeOnLoadMethod]
    static void Init()
    {
      GameObject Go = new GameObject("__DX8Runtime");
      Go.AddComponent<dx8>();
      Go.isStatic = true;
    }
  */
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
      Physics.autoSimulation = false;

      Mute                          = PlayerPrefs.GetInt("Mute") == 1;
      Is2dState                     = PlayerPrefs.GetInt("Is2d") == 1;

      #if UNITY_EDITOR
          RomPath    = @"C:\dev\dx8\ROMS\rom\rom.bin";
      #else
          RomPath    = Application.dataPath + @"/../rom.bin";
      #endif

      Floppys = new List<FloppyDisk3dItem>(8);

      CrtTexture = new Texture2D(320, 256, TextureFormat.RGB24, false);
      CrtTexture.filterMode = FilterMode.Point;
      Color32[] col = CrtTexture.GetPixels32();
      Color32 black = new Color32(0,0,0, 255);
      for(int i=0;i < 320 * 256;i++)
        col[i] = black;

      CrtTexture.SetPixels32(col);
      CrtTexture.Apply();

      Light_PowerCol    = new Color(0.341f, 0.846f, 0.323f, 1.000f); // Light_Power.sharedMaterial.GetColor("_EmissionColor");
      Light_FloppyCol   = new Color(0.868f, 0.217f, 0.217f, 1.000f);
      Light_FloppyColDim = new Color(0.868f * 0.75f, 0.217f * 0.75f, 0.217f * 0.75f, 1.000f);
      Light_CapsLockCol = new Color(0.801f, 0.714f, 0.348f, 1.000f);

      Light_Power.sharedMaterial.SetColor("_EmissionColor", Color.black);
      Light_Floppy.sharedMaterial.SetColor("_EmissionColor", Color.black);
      Light_CapsLock.sharedMaterial.SetColor("_EmissionColor", Color.black);

      Button_PowerOffPos = Button_Power.localPosition;
      Button_EjectOutPos = Button_Eject.localPosition;
      
      Crt2d.SetTexture(CrtTexture);
      Crt3d.SetTexture(CrtTexture);

      if (Is2dState)
        Set2DState(Is2dState);

      TogglePaused();
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
      

      FindDisks();
      Update2dState(false);
      SetEjectButton(false);
      SetPowerButton(false);
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
        if (!IsPaused && PowerIsOn && IsRunning)
        {
          RunOnce(Time.fixedDeltaTime);
        }
      }
    }
    float timer;

    void Update()
    {
      if (Input.GetKeyUp(KeyCode.Tab))
      {
        TogglePaused();
        return;
      }
    
      if (IsPaused)
        return;

      if (!Physics.autoSimulation)
      {
        timer += Time.deltaTime;
        
        while (timer >= Time.fixedDeltaTime)
        {
            timer -= Time.fixedDeltaTime;
            Physics.Simulate(Time.fixedDeltaTime);
        }
      }

      if (!Is2dState && Input.GetMouseButtonUp(2))
      {
        ToggleKeyState();
      }

      if (Input.GetKeyUp(KeyCode.LeftAlt))
      {
        Toggle2DState();
      }

      if (ReloadNeeded)
      {
        ReloadNeeded = false;
        Reload();
        
      }

      if (IsOpen)
      {
        if (PowerIsOn && IsRunning && (IsKeyState || Is2dState))
        {
          SendKeys();
        }
      }
    }

#if SHOW_GUI
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
#endif

    float FloppyOnTimer = 0.0f;
    bool  ShouldLoadFloppy = false;

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

      if (ShouldLoadFloppy && !FloppySensor.IsEmpty && IsFloppyLoaded == false)
      {
        FloppyOnTimer += Time.fixedDeltaTime;
        if (FloppyOnTimer > 0.5f)
        {
          ShouldLoadFloppy = false;
          LoadFloppy();
        }
      }

      LastSteps = Library.Call(Api.CycleFn, ms);
      CheckFloppy();
      UpdateCrt();
    }

    void UpdateCrt()
    {
      if (Library.GetValue(Api.CrtDirty) == 1)
      {
        IntPtr crt = Library.GetCrt();
        CrtTexture.LoadRawTextureData(crt, 320 * 256 * 3);
        CrtTexture.Apply();
      }
    }
    
    void LoadFloppy()
    {
      if (IsFloppyLoaded)
        return;

      byte[] fd = System.IO.File.ReadAllBytes(FloppyPath);
      IntPtr romPtr = Marshal.AllocHGlobal(fd.Length);
      Marshal.Copy(fd, 0, romPtr, fd.Length);
      
      int r = Library.SetData(Api.FloppyDisk, romPtr, fd.Length);
      Debug.LogFormat("Loaded Floppy = {0}, Length: {1}", r, fd.Length);
      Marshal.FreeHGlobal(romPtr);
      
      Library.Call(Api.InsertDisk, 0);
      IsFloppyLoaded = true;
    }
    
    void UnloadFloppy()
    {
      if (!IsFloppyLoaded)
        return;
      
      Library.Call(Api.RemoveDisk, 0);
      IsFloppyLoaded = false;
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
      KeyStates[Api.Key_1]    = new KeyState(KeyCode.Alpha1, KeyMod.None);
      KeyStates[Api.Key_2]    = new KeyState(KeyCode.Alpha2, KeyMod.None);
      KeyStates[Api.Key_3]    = new KeyState(KeyCode.Alpha3, KeyMod.None);
      KeyStates[Api.Key_4]    = new KeyState(KeyCode.Alpha4, KeyMod.None);
      KeyStates[Api.Key_5]    = new KeyState(KeyCode.Alpha5, KeyMod.None);
      KeyStates[Api.Key_6]    = new KeyState(KeyCode.Alpha6, KeyMod.None);
      KeyStates[Api.Key_7]    = new KeyState(KeyCode.Alpha7, KeyMod.None);
      KeyStates[Api.Key_8]    = new KeyState(KeyCode.Alpha8, KeyMod.None);
      KeyStates[Api.Key_9]    = new KeyState(KeyCode.Alpha9, KeyMod.None);
      KeyStates[Api.Key_0]    = new KeyState(KeyCode.Alpha0, KeyMod.None);
      
      KeyStates[Api.Key_Exclaim]            = new KeyState(KeyCode.Alpha1, KeyMod.Shift);
      KeyStates[Api.Key_DoubleQuote]        = new KeyState(KeyCode.Alpha2, KeyMod.Shift);
      KeyStates[Api.Key_Hash]               = new KeyState(KeyCode.Alpha3, KeyMod.Shift);
      KeyStates[Api.Key_PoundSign]          = new KeyState(KeyCode.Alpha4, KeyMod.Shift);
      KeyStates[Api.Key_Percentage]         = new KeyState(KeyCode.Alpha5, KeyMod.Shift);
      KeyStates[Api.Key_Ampersand]          = new KeyState(KeyCode.Alpha6, KeyMod.Shift);
      KeyStates[Api.Key_SingleQuote]        = new KeyState(KeyCode.Alpha7, KeyMod.Shift);
      KeyStates[Api.Key_LeftParentheses]    = new KeyState(KeyCode.Alpha8, KeyMod.Shift);
      KeyStates[Api.Key_RightParentheses]   = new KeyState(KeyCode.Alpha9, KeyMod.Shift);
      KeyStates[Api.Key_At]                 = new KeyState(KeyCode.Alpha0, KeyMod.Shift);

      KeyStates[Api.Key_LowercaseA]    = new KeyState(KeyCode.A, KeyMod.None);
      KeyStates[Api.Key_LowercaseB]    = new KeyState(KeyCode.B, KeyMod.None);
      KeyStates[Api.Key_LowercaseC]    = new KeyState(KeyCode.C, KeyMod.None);
      KeyStates[Api.Key_LowercaseD]    = new KeyState(KeyCode.D, KeyMod.None);
      KeyStates[Api.Key_LowercaseE]    = new KeyState(KeyCode.E, KeyMod.None);
      KeyStates[Api.Key_LowercaseF]    = new KeyState(KeyCode.F, KeyMod.None);
      KeyStates[Api.Key_LowercaseG]    = new KeyState(KeyCode.G, KeyMod.None);
      KeyStates[Api.Key_LowercaseH]    = new KeyState(KeyCode.H, KeyMod.None);
      KeyStates[Api.Key_LowercaseI]    = new KeyState(KeyCode.I, KeyMod.None);
      KeyStates[Api.Key_LowercaseJ]    = new KeyState(KeyCode.J, KeyMod.None);
      KeyStates[Api.Key_LowercaseK]    = new KeyState(KeyCode.K, KeyMod.None);
      KeyStates[Api.Key_LowercaseL]    = new KeyState(KeyCode.L, KeyMod.None);
      KeyStates[Api.Key_LowercaseM]    = new KeyState(KeyCode.M, KeyMod.None);
      KeyStates[Api.Key_LowercaseN]    = new KeyState(KeyCode.N, KeyMod.None);
      KeyStates[Api.Key_LowercaseO]    = new KeyState(KeyCode.O, KeyMod.None);
      KeyStates[Api.Key_LowercaseP]    = new KeyState(KeyCode.P, KeyMod.None);
      KeyStates[Api.Key_LowercaseQ]    = new KeyState(KeyCode.Q, KeyMod.None);
      KeyStates[Api.Key_LowercaseR]    = new KeyState(KeyCode.R, KeyMod.None);
      KeyStates[Api.Key_LowercaseS]    = new KeyState(KeyCode.S, KeyMod.None);
      KeyStates[Api.Key_LowercaseT]    = new KeyState(KeyCode.T, KeyMod.None);
      KeyStates[Api.Key_LowercaseU]    = new KeyState(KeyCode.U, KeyMod.None);
      KeyStates[Api.Key_LowercaseV]    = new KeyState(KeyCode.V, KeyMod.None);
      KeyStates[Api.Key_LowercaseW]    = new KeyState(KeyCode.W, KeyMod.None);
      KeyStates[Api.Key_LowercaseX]    = new KeyState(KeyCode.X, KeyMod.None);
      KeyStates[Api.Key_LowercaseY]    = new KeyState(KeyCode.Y, KeyMod.None);
      KeyStates[Api.Key_LowercaseZ]    = new KeyState(KeyCode.Z, KeyMod.None);
      
      KeyStates[Api.Key_UppercaseA]    = new KeyState(KeyCode.A, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseB]    = new KeyState(KeyCode.B, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseC]    = new KeyState(KeyCode.C, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseD]    = new KeyState(KeyCode.D, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseE]    = new KeyState(KeyCode.E, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseF]    = new KeyState(KeyCode.F, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseG]    = new KeyState(KeyCode.G, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseH]    = new KeyState(KeyCode.H, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseI]    = new KeyState(KeyCode.I, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseJ]    = new KeyState(KeyCode.J, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseK]    = new KeyState(KeyCode.K, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseL]    = new KeyState(KeyCode.L, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseM]    = new KeyState(KeyCode.M, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseN]    = new KeyState(KeyCode.N, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseO]    = new KeyState(KeyCode.O, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseP]    = new KeyState(KeyCode.P, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseQ]    = new KeyState(KeyCode.Q, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseR]    = new KeyState(KeyCode.R, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseS]    = new KeyState(KeyCode.S, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseT]    = new KeyState(KeyCode.T, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseU]    = new KeyState(KeyCode.U, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseV]    = new KeyState(KeyCode.V, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseW]    = new KeyState(KeyCode.W, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseX]    = new KeyState(KeyCode.X, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseY]    = new KeyState(KeyCode.Y, KeyMod.Shift);
      KeyStates[Api.Key_UppercaseZ]    = new KeyState(KeyCode.Z, KeyMod.Shift);

      
      KeyStates[Api.Key_Plus]          = new KeyState(KeyCode.Plus, KeyMod.None);
      KeyStates[Api.Key_Minus]         = new KeyState(KeyCode.Minus, KeyMod.None);
      KeyStates[Api.Key_Multiply]      = new KeyState(KeyCode.Asterisk, KeyMod.None);
      KeyStates[Api.Key_Equals]        = new KeyState(KeyCode.Equals, KeyMod.None);
      KeyStates[Api.Key_Comma]         = new KeyState(KeyCode.Comma, KeyMod.None);
      KeyStates[Api.Key_Period]        = new KeyState(KeyCode.Period, KeyMod.None);
      KeyStates[Api.Key_SemiColon]     = new KeyState(KeyCode.Semicolon, KeyMod.None);

      KeyStates[Api.Key_Space]         = new KeyState(KeyCode.Space, KeyMod.None);
      
      KeyStates[Api.Key_LeftSquareBracket]     = new KeyState(KeyCode.LeftBracket, KeyMod.None);
      KeyStates[Api.Key_RightSquareBracket]    = new KeyState(KeyCode.RightBracket, KeyMod.None);
      KeyStates[Api.Key_LeftBrace]             = new KeyState(KeyCode.LeftBracket, KeyMod.Shift);
      KeyStates[Api.Key_RightBrace]            = new KeyState(KeyCode.RightBracket, KeyMod.Shift);
      KeyStates[Api.Key_QuestionMark]          = new KeyState(KeyCode.Question, KeyMod.None);
      KeyStates[Api.Key_Divide]                = new KeyState(KeyCode.Slash, KeyMod.None);
      KeyStates[Api.Key_LeftAngleBracket]      = new KeyState(KeyCode.Less, KeyMod.None);
      KeyStates[Api.Key_RightAngleBracket]     = new KeyState(KeyCode.Greater, KeyMod.None);
      KeyStates[Api.Key_Colon]                 = new KeyState(KeyCode.Colon, KeyMod.None);
      
      KeyStates[Api.Key_Return]                = new KeyState(KeyCode.Return, KeyMod.None);
      KeyStates[Api.Key_Break]                 = new KeyState(KeyCode.Escape, KeyMod.None);
      KeyStates[Api.Key_Reset]                 = new KeyState(KeyCode.Escape, KeyMod.Control);

      KeyStates[Api.Key_Delete]                = new KeyState(KeyCode.Backspace, KeyMod.None);
      KeyStates[Api.Key_Control]               = new KeyState(KeyCode.LeftControl, KeyMod.None);
      KeyStates[Api.Key_LeftArrow]             = new KeyState(KeyCode.LeftArrow, KeyMod.None);
      KeyStates[Api.Key_RightArrow]            = new KeyState(KeyCode.RightArrow, KeyMod.None);
      KeyStates[Api.Key_UpArrow]               = new KeyState(KeyCode.UpArrow, KeyMod.None);
      KeyStates[Api.Key_DownArrow]             = new KeyState(KeyCode.DownArrow, KeyMod.None);
      KeyStates[Api.Key_CapsLock]              = new KeyState(KeyCode.Semicolon, KeyMod.None);
      KeyStates[Api.Key_LeftShift]             = new KeyState(KeyCode.LeftShift, KeyMod.None);
      KeyStates[Api.Key_RightShift]            = new KeyState(KeyCode.RightShift, KeyMod.None);
      KeyStates[Api.Key_Function1]             = new KeyState(KeyCode.F1, KeyMod.None);
      KeyStates[Api.Key_Function2]             = new KeyState(KeyCode.F2, KeyMod.None);
      KeyStates[Api.Key_Function3]             = new KeyState(KeyCode.F3, KeyMod.None);
      KeyStates[Api.Key_Function4]             = new KeyState(KeyCode.F4, KeyMod.None);
      KeyStates[Api.Key_Program1]              = new KeyState(KeyCode.F1, KeyMod.Control);
      KeyStates[Api.Key_Program2]              = new KeyState(KeyCode.F2, KeyMod.Control);
      KeyStates[Api.Key_Program3]              = new KeyState(KeyCode.F3, KeyMod.Control);
      KeyStates[Api.Key_Program4]              = new KeyState(KeyCode.F4, KeyMod.Control);
      
    }

    void SendKeys()
    {
      for(int ii=0;ii < KeyStates.Length;ii++)
      {
        KeyState state = KeyStates[ii];
        if (state== null)
        {
           continue;
        }

        if (state.Update())
        {
          if (state.Released)
          {
            Debug.LogFormat("Up {0} {1}", ii, state.mainKey);
            Library.Call(Api.KeyUp, ii);
          }
          else if (state.Pressed)
          {
            Debug.LogFormat("Down {0} {1}", ii, state.mainKey);
            Library.Call(Api.KeyDown, ii);
          }
        }
      }
    }

    void FindDisks()
    {
      List<string> paths = new List<string>();
      
      #if UNITY_EDITOR
        FindDisksInPath(paths, "C:\\dev\\dx8\\ROMS");
      #endif

      FindDisksInPath(paths, Application.dataPath + @"/../");
      
      int order = 0;
      foreach(var path in paths)
      {
        GameObject floppy3dGo = UnityEngine.Object.Instantiate(Prefab_FloppyDisk3d);
        FloppyDisk3dItem floppy3d = floppy3dGo.GetComponent<FloppyDisk3dItem>();
        floppy3d.Title = System.IO.Path.GetFileNameWithoutExtension(System.IO.Path.GetFileNameWithoutExtension(path));
        floppy3d.Path = path;
        floppy3d.UI_Order = order++;
        
        
        floppy3d.transform.SetParent(FloppyDiskStack, false);
        floppy3d.transform.localPosition = new Vector3(0, floppy3d.UI_Order * 0.3f, 0);
        Floppys.Add(floppy3d);
      }

    }

    public void SetEjectButton(bool isOut)
    {
      Vector3 p = Button_EjectOutPos;
      
      if (!isOut)
      {
        p.z += 0.045f;
      }

      Button_Eject.transform.localPosition = p;
      UserInterface.SetEjectButtonIsDown(!isOut);

    }
    
    public void SetPowerButton(bool isOn)
    {
      Vector3 p = Button_PowerOffPos;
      
      if (isOn)
      {
        p.z += 0.045f;
      }

      Button_Power.transform.localPosition = p;
      UserInterface.SetPowerButtonIsDown(isOn);
    }

    void FindDisksInPath(List<string> paths, string m)
    {
      paths.AddRange(System.IO.Directory.GetFiles(m, "*.fd", System.IO.SearchOption.AllDirectories));
    }

    void Update2dState(bool is2d)
    {
      foreach(var obj in ObjectsSim2d)
      {
        if (obj != null)
        {
          obj.SetActive(is2d);
        }
      }
      foreach(var obj in ObjectsSim3d)
      {
        if (obj != null)
        {
          obj.SetActive(!is2d);
        }
      }

      Character.FreezeState = is2d ? FreezeState.Frozen : (IsKeyState ? FreezeState.LookOnly : FreezeState.None);
      
      if (IsPaused)
        Cursor.lockState = CursorLockMode.None;
      else
        Cursor.lockState = is2d ? CursorLockMode.None : CursorLockMode.Locked;
    }

    public void UI_InsertFloppy(string path)
    {
      FloppyPath = path;

      if (PowerIsOn == false)
        return;
      
      LoadFloppy();
      Debug.Log("InsertDisk");
    }

    public void UI_RemoveFloppy()
    {
      FloppyPath = string.Empty;

      if (PowerIsOn == false)
        return;
      
      UnloadFloppy();
      Debug.Log("RemoveDisk");
    }

    public void CheckFloppy()
    {
      int isBusy = Library.GetValue(Api.FloppyBusy);
      
      if (isBusy == 2)
      {
        Light_Floppy.sharedMaterial.SetColor("_EmissionColor", Light_FloppyCol);
        UserInterface.SetFloppyAccess(true);
      }
      else if (isBusy == 1)
      {
        Light_Floppy.sharedMaterial.SetColor("_EmissionColor", Light_FloppyColDim);
        UserInterface.SetFloppyAccess(true);
      }
      else
      {
        Light_Floppy.sharedMaterial.SetColor("_EmissionColor", Color.black);
        UserInterface.SetFloppyAccess(false);
      }
    }

    public void TurnOnComputer()
    {
      PowerIsOn = true;
      Light_Power.sharedMaterial.SetColor("_EmissionColor", Light_PowerCol);
      
      IsFloppyLoaded = false;
      FloppyOnTimer = 0.0f;
      ShouldLoadFloppy = !FloppySensor.IsEmpty;

      SetPowerButton(true);
    }

    public void TurnOffComputer()
    {
      PowerIsOn = false;
      Library.Call(Api.HardReset, 1);
      
      Color32[] col = CrtTexture.GetPixels32();
      Color32 black = new Color32(0,0,0, 255);
      for(int i=0;i < 320 * 256;i++)
        col[i] = black;

      CrtTexture.SetPixels32(col);
      CrtTexture.Apply();
      
      Light_Power.sharedMaterial.SetColor("_EmissionColor", Color.black);
      Light_Floppy.sharedMaterial.SetColor("_EmissionColor", Color.black);
      Light_CapsLock.sharedMaterial.SetColor("_EmissionColor", Color.black);

      IsFloppyLoaded = false;
      FloppyOnTimer = 0.0f;
      ShouldLoadFloppy = false;
      
      SetPowerButton(false);
    }

    public void UI_Eject()
    {
      FloppySensor.Eject();
    }
    
    public void UI_WarpEject()
    {
      FloppySensor.WarpEject();
    }

    public void UI_Power()
    {
      PowerButtonPressed();
    }
    
    public void TogglePaused()
    {
      IsPaused = !IsPaused;
      
      if (IsPaused)
      {
        PausedUserInterface.Show();
        UserInterface.Hide();
        
        Cursor.lockState = CursorLockMode.None;
      }
      else
      {
        PausedUserInterface.Hide();
        UserInterface.Show();
        
        Cursor.lockState = Is2dState ? CursorLockMode.None : CursorLockMode.Locked;
      }
    }

    internal void PowerButtonPressed()
    {
      if (PowerIsOn)
        TurnOffComputer();
      else
        TurnOnComputer();
    }

    public void Toggle2DState()
    {
      Set2DState(!Is2dState);
    }

    public void Set2DState(bool is2d)
    {
      Is2dState = is2d;
      Update2dState(Is2dState);
      UserInterface.SetSimulationMode(Is2dState ? UserInterface.SimulationMode.Two : UserInterface.SimulationMode.Three);

      PlayerPrefs.SetInt("Is2d", Is2dState ? 1 : 0);
    }

    public void ToggleKeyState()
    {
      SetKeyState(!IsKeyState);
    }

    public void SetKeyState(bool isKeyState)
    {
      IsKeyState = isKeyState;
      Update2dState(Is2dState);
    }

    public void SetMute(bool isMuted)
    {
      Mute = isMuted;
      
      PlayerPrefs.SetInt("Mute", Mute ? 1 : 0);
    }

    public void DoReset()
    {
      TurnOffComputer();
      UnityEngine.SceneManagement.SceneManager.LoadScene(0);
    }

  }
  
}
