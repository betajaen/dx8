using UnityEngine;
using System;

public class FloppyDisk2dItem : MonoBehaviour
{
  public UnityEngine.RectTransform RectTr;
  public UnityEngine.UI.Text UIText;
  public String Title;
  public String Path;
  public int    Order;
  public FloppyDisk3dItem Counterpart;

  public void Start()
  {
    UIText.text = Title;
    Vector3 size = RectTr.offsetMax - RectTr.offsetMin;
    Vector3 min = new Vector2(Screen.width / 2 - size.x / 2, Screen.height / 2 - size.y / 2 - Order * size.y);
    RectTr.localPosition = min;
  }

  public void RunFloppy()
  {
    DX8.dx8 dx8 = GameObject.Find("DX8").GetComponent<DX8.dx8>();
    
    Counterpart.WarpFloppy(dx8.FloppySensor);
    dx8.UI_InsertFloppy(Path);
  }

}
