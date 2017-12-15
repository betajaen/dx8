using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum RequesterMode
{
  None,
  File,
  String
}

public delegate void RequesterCallbackFn(string value, RequesterMode mode, bool forWriting);

public class EditorMain : MonoBehaviour
{
  public GiraffeLayer Layer;
  public GiraffeFont  Font;
  public Editor[]     Editors;
  public Editor              Current;
  
  Widgetry.Ui   Ui;
  public bool RequesterFileIsSaving = false;

  private void Awake()
  {
    Ui = new Widgetry.Ui();
    Widgetry.Widget.White          = Layer.atlas.GetSprite("Giraffe/White");
    Widgetry.Widget.Button_Left    = Layer.atlas.GetSprite("Widgets_UpLeft");
    Widgetry.Widget.Button_Right   = Layer.atlas.GetSprite("Widgets_UpRight");
    Widgetry.Widget.Button_Middle  = Layer.atlas.GetSprite("Widgets_UpMiddle");
    Widgetry.Widget.Tool_Up        = Layer.atlas.GetSprite("Widgets_ToolUp");
    Widgetry.Widget.Tool_Down      = Layer.atlas.GetSprite("Widgets_ToolDown");
    Widgetry.Widget.Up             = Layer.atlas.GetSprite("Widgets_Up");
    Widgetry.Widget.Down           = Layer.atlas.GetSprite("Widgets_Down");
    Widgetry.Widget.Font           = Font;
    Widgetry.Widget.Layer          = Layer;
  }

  private void Start()
  {
    if (Current == null && Editors != null && Editors.Length != 0)
    {
      Ui.Clear();
      Current = Editors[0];
      Current.Setup(Ui);
    }
  }

  private void Update()
  {

    if (Ui.Dirty)
    {
      Layer.Begin(Ui.NumQuads);
      Ui.Draw();
      Layer.End();
    }

    if (RequesterMode == RequesterMode.None)
      return;
    
    if (RequesterMode == RequesterMode.File)
    {
      int mx = (int) Input.mousePosition.x;
      int my = Screen.height - (int) Input.mousePosition.y;
      
      int buttonId;
      if (Input.GetMouseButtonUp(0) && ((buttonId = Ui.Test(mx / 2, my / 2)) != 0))
      {
        if (buttonId == 6001)
        {
          RequesterFileOldPath = RequesterFilePath;

          System.IO.DirectoryInfo dirInfo = System.IO.Directory.GetParent(RequesterFilePath);
          
          if (dirInfo != null)
          {
            RequesterFilePath = dirInfo.FullName;
          }
          else
          {
            RequesterFilePath = string.Empty;
          }

          RefreshUi();
        }
        else if (buttonId >= 100 && (buttonId - 100) < RequesterFolderListing.Count)
        {
          PathInfo pathInfo = RequesterFolderListing[(buttonId - 100)];
          
          if (pathInfo.type == 1)
          {
            RequesterFileOldPath = RequesterFilePath;
            RequesterFilePath = pathInfo.path;
            RefreshUi();
            return;
          }
          else if (pathInfo.type == 0)
          {
            RequesterFileOldPath = RequesterFilePath;
            RequesterFilePath = pathInfo.path;
            RefreshUi();
          }
          else
          {
            if (RequesterFileIsSaving)
            {
              RequesterFileCallback(pathInfo.path, RequesterMode.File, true);
              StopFileRequester();
            }
            else
            {
              RequesterFileCallback(pathInfo.path, RequesterMode.File, false);
              StopFileRequester();
              return;
            }
            return;
          }
        }
        else if (buttonId == 6002)
        {
          RequesterPage -= RequesterFilePageSize;
          RefreshUi();

        }
        else if (buttonId == 6003)
        {
          RequesterPage += RequesterFilePageSize;
          RefreshUi();
        }
        else if (buttonId == 6004)
        {
          RequesterSaveDirectory = RequesterFilePath;
          StringRequester(_FileRequesterSaveName);
        }
        else if (buttonId == 6005)
        {
          RequesterFileCallback(null, RequesterMode.File, RequesterFileIsSaving);
          StopFileRequester();
          return;
        }
      }
    }
    else if (RequesterMode == RequesterMode.String)
    {
      string inputText = Input.inputString;
      
      if (string.IsNullOrEmpty(inputText) == false)
      {
        RequesterStringText += inputText;
        RefreshUi();
      }
      else if (Input.GetKeyUp(KeyCode.Backspace))
      {
        if (RequesterStringText.Length >= 0)
        {
          if (RequesterStringText.Length > 1)
            RequesterStringText = RequesterStringText.Substring(0, RequesterStringText.Length - 2);
          else
            RequesterStringText = "";
          RefreshUi();
          return;
        }
      }
      
      int mx = (int) Input.mousePosition.x;
      int my = Screen.height - (int) Input.mousePosition.y;
      
      int buttonId;
      if (Input.GetMouseButtonUp(0) && ((buttonId = Ui.Test(mx / 2, my / 2)) != 0))
      {
        if (buttonId == 7002)
        {
          RequesterStringCallback(RequesterStringText, RequesterMode.String, false);
          StopStringRequester();
          return;
        }

        if (buttonId == 7003)
        {
          RequesterStringCallback(null, RequesterMode.String, false);
          StopStringRequester();
          return;
        }
      }
    }
  }

  class PathInfo
  {
    public string path;
    public string display;
    public int    type;
  }

  RequesterCallbackFn  RequesterFileCallback;
  RequesterCallbackFn  RequesterStringCallback;
  List<PathInfo> RequesterFolderListing = new List<PathInfo>(32); 
  string RequesterFilePath, RequesterFileOldPath;
  int RequesterPage;
  int RequesterFilePageSize;
  RequesterMode RequesterMode;
  string RequesterSaveDirectory;

  string RequesterStringText;

  public void RefreshDrives()
  {
    RequesterFolderListing.Clear();
    
    foreach (string m in System.IO.Directory.GetLogicalDrives())
    {
      PathInfo p = new PathInfo();
      p.path = m;
      p.display = string.Format("<DRIVE> {0}", m);
      p.type = 0;
      RequesterFolderListing.Add(p);
      Debug.Log(m);
    }
  }

  public void RefreshPaths(int recursion = 1)
  {
    RequesterFolderListing.Clear();
    
    if (recursion == 2)
    {
      RequesterFilePath = System.IO.Directory.GetCurrentDirectory();
      recursion = 0;
    }

    string[] folders;
    string[] files;

    try
    {
     folders = System.IO.Directory.GetDirectories(RequesterFilePath);
     files = System.IO.Directory.GetFiles(RequesterFilePath);
    }
    catch(System.Exception)
    {
      RequesterFilePath = RequesterFileOldPath;
      RefreshPaths(recursion++);
      return;
    }

    foreach(var m in folders)
    {
      PathInfo p = new PathInfo();
      p.path = m;
      p.display = string.Format("<DIR> {0}", System.IO.Path.GetFileName(p.path));
      p.type = 1;
      RequesterFolderListing.Add(p);
    }
    
    foreach(var m in files)
    {
      PathInfo p = new PathInfo();
      p.path = m;
      p.display = string.Format("{0}", System.IO.Path.GetFileName(p.path));
      p.type = 2;
      RequesterFolderListing.Add(p);
    }
    
  }

  public void RefreshUi()
  {
    Ui.Clear();
    Ui.AddPanel(-6000, 0, 0, Screen.width / 2, Screen.height / 2, 0x33, 0x33, 0x33);
    
    if (RequesterMode == RequesterMode.File)
    {
      if (RequesterFilePath == string.Empty)
      {
        RefreshDrives();
      }
      else
      {
        RefreshPaths();
      }

      int idx = 0;

      if (RequesterPage > RequesterFolderListing.Count)
      {
        RequesterPage = RequesterFolderListing.Count - RequesterFilePageSize;
      }
    
      if (RequesterPage < 0)
      {
        RequesterPage = 0;
      }

      int pageMax = Mathf.Min(RequesterPage + RequesterFilePageSize, RequesterFolderListing.Count);

      for(int i=RequesterPage;i < pageMax;i++)
      {
        PathInfo p = RequesterFolderListing[i];
        Ui.AddButton(100 + i, 0, 16 + idx * 16, 400, p.display);
        idx++;
      }
    
      if (RequesterFilePath != string.Empty)
      {
        Ui.AddButton(6001, 0, 0, 300, string.Format("<UP> {0}", RequesterFilePath));
      }
    
      if (RequesterPage != 0)
        Ui.AddButton(6002, 300, 0, 20, "<");
      else
        Ui.AddButton(8002, 300, 0, 20, string.Empty);
    
      if (RequesterPage + RequesterFilePageSize < RequesterFolderListing.Count)
        Ui.AddButton(6003, 320, 0, 20, ">");
      else
        Ui.AddButton(8003, 320, 0, 20, string.Empty);
      
      Ui.AddButton(6005, 340, 0, 60, "Cancel");
      
      if (RequesterFileIsSaving == true)
      {
        Ui.AddButton(6004, 0, Screen.height / 2 - 16, 400, "Save here....");
      }
    }
    else if (RequesterMode == RequesterMode.String)
    {
      Ui.AddLabel(7001,  10, 10, RequesterStringText);
      Ui.AddButton(7002, 10, 26, 100, "Okay");
      Ui.AddButton(7003, 110, 26, 100, "Cancel");
    }
  }

  public void FileRequester(RequesterCallbackFn callback, bool isSaving)
  {
    RequesterMode         = RequesterMode.File;
    RequesterFileCallback = callback;
    RequesterFileIsSaving = isSaving;
    RequesterFileOldPath  = string.Empty;
    RequesterFilePath     = System.IO.Directory.GetCurrentDirectory();
    RequesterFilePageSize = ((Screen.height / 2) - 16 - (isSaving ? 16 : 0)) / 16;

    RefreshUi();
  }

  void StopFileRequester()
  {
    RequesterMode = RequesterMode.None;
  }

  void _FileRequesterSaveName(string value, RequesterMode mode, bool forWriting)
  {
    if (value == null)
    {
      RequesterFileCallback(value, RequesterMode.File, true);
    }
    else
    {
      try {
        string fullPath = System.IO.Path.Combine(RequesterSaveDirectory, value);
        RequesterFileCallback(fullPath, RequesterMode.File, true);
      }
      catch(System.Exception e)
      {
        RequesterFileCallback(null, RequesterMode.File, true);
      }
    }
  }

  public void StringRequester(RequesterCallbackFn callback)
  {
    RequesterMode       = RequesterMode.String;
    RequesterStringText = string.Empty;
    RequesterStringCallback = callback;

    RefreshUi();
  }
  
  void StopStringRequester()
  {
    RequesterMode = RequesterMode.None;
  }
}
