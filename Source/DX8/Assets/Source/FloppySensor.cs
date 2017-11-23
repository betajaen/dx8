using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloppySensor : MonoBehaviour
{
  public bool IsEmpty = true;

  void OnTriggerEnter(Collider other)
  {
    Debug.Log(other.name);

    if (IsEmpty && other.gameObject.tag == "Floppy")
    {
      IsEmpty = false;
      FloppyDisk3dItem floppy = other.GetComponent<FloppyDisk3dItem>();
      floppy.RunFloppy(this);
      
    }
  }
}
