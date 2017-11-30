using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloppySensor : MonoBehaviour
{
  public bool IsEmpty = true;
  public FloppyDisk3dItem Floppy;
  public bool Ejecting = false;
  public bool CanRead = true;
  public float EjectCooldown = 0.0f;

  void OnTriggerEnter(Collider other)
  {
    Debug.LogFormat("IsEmpty = {0}, Tag = {1}", IsEmpty, other.gameObject.tag);
    

    if (CanRead && IsEmpty && other.gameObject.tag == "Floppy")
    {
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
    if (EjectCooldown > 0.0f)
    {
      EjectCooldown -= Time.fixedDeltaTime;
      CanRead = (EjectCooldown <= 0.0f);
      Ejecting = false;
    }
  }

}
