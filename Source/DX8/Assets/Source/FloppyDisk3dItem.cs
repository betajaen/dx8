using UnityEngine;
using System;

public class FloppyDisk3dItem : MonoBehaviour
{
  public GameObject GO;
  public String Title;
  public String Path;

  private Vector3 PosA, PosB, PosC;
  private Quaternion RotA, RotB;
  private float   Time, MaxTime;
  private int     State;

  public void Update()
  {
    if (State == 1)
    {
      transform.localRotation = Quaternion.Slerp(RotA, RotB, Time / MaxTime);
      transform.localPosition = Vector3.Lerp(PosA, PosB, Time / MaxTime);

      Time += UnityEngine.Time.deltaTime;
      if (Time >= 1.0f)
      {
        State++;
        Time = 0;
      }
    }
    else if (State == 2)
    {
      transform.localPosition = Vector3.Lerp(PosB, PosC, Time / MaxTime);
      Time += UnityEngine.Time.deltaTime;
      if (Time >= 1.0f)
      {
        State++;
        Time = 0;
      }
    }
    else if (State == 3)
    {
      GameObject.Find("DX8").GetComponent<DX8.dx8>().UI_InsertFloppy(Path);
      State++;
    }
  }

  public void RunFloppy(FloppySensor sensor)
  {
    Rigidbody rb = GetComponent<Rigidbody>();
    rb.isKinematic = true;
    
    HeldItem hd = GameObject.Find("Character").GetComponent<Character>().HeldItem;
    if (hd.Rb == rb)
    {
      hd.Deattach();

      BoxCollider bx = GetComponent<BoxCollider>();
      Destroy(rb);
      Destroy(bx);

      transform.SetParent(sensor.transform, true);
      
      PosA = transform.localPosition;
      PosB = new Vector3(0,0, -1.0f);
      PosC = new Vector3(0,0, 0.25f);
      RotA = transform.localRotation;
      RotB = Quaternion.Euler(180,0,-90);

      Time  = 0.0f;
      MaxTime = 0.5f;
      State = 1;

      //transform.localPosition = new Vector3(0,0, 0.25f);
      //transform.localRotation = Quaternion.Euler(180,0,-90);
    }

  }

}
