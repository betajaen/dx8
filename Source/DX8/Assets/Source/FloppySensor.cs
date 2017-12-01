using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloppySensor : MonoBehaviour
{
  public bool IsEmpty = true;
  public FloppyDisk3dItem Floppy;
  public bool CanRead = true;
  public float EjectCooldown = -1.0f;
  public DX8.dx8 DX8;

  void Awake()
  {
    EjectCooldown = -1.0f;
  }

  void OnTriggerEnter(Collider other)
  {
    Debug.LogFormat("IsEmpty = {0}, Tag = {1}", IsEmpty, other.gameObject.tag);
    

    if (DX8.Is2dState == false && EjectCooldown <= 0.0f && IsEmpty && other.gameObject.tag == "Floppy")
    {
      Debug.Log("Hello!");
      IsEmpty = false;
      Floppy = other.GetComponent<FloppyDisk3dItem>();
      Floppy.RunFloppy(this);
    }
  }

  public void Eject()
  {
    if (!IsEmpty)
    {
      Floppy.EjectFloppy();
    }
  }
  
  public void WarpEject()
  {
    if (!IsEmpty)
    {
      Floppy.WarpEjectFloppy();
    }
  }

  public void FixedUpdate()
  {
    if (DX8.Is2dState == false && EjectCooldown > 0.0f)
    {
      EjectCooldown -= Time.fixedDeltaTime;
      Debug.Log("Cool down!");
    }
  }

}
