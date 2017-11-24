using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloppySensor : MonoBehaviour
{
  public bool IsEmpty = true;
  public FloppyDisk3dItem Floppy;

  void OnTriggerEnter(Collider other)
  {
    Debug.LogFormat("IsEmpty = {0}, Tag = {1}", IsEmpty, other.gameObject.tag);
    
    if (IsEmpty && other.gameObject.tag == "Floppy")
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
}
