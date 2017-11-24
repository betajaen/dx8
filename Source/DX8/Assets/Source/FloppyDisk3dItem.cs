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
  private int     Direction;

  public void Update()
  {
    if (Direction == 1)
      InsertAnimation();
    else if (Direction == -1)
      RemoveAnimation();
  }

  void InsertAnimation()
  {
    if (State == 1)
    {
      transform.localRotation = Quaternion.Slerp(RotA, RotB, Time / MaxTime);
      transform.localPosition = Vector3.Lerp(PosA, PosB, Time / MaxTime);

      Time += UnityEngine.Time.deltaTime;
      if (Time >= MaxTime)
      {
        State++;
        Time = 0;
      }
    }
    else if (State == 2)
    {
      transform.localPosition = Vector3.Lerp(PosB, PosC, Time / MaxTime);
      Time += UnityEngine.Time.deltaTime;
      if (Time >= MaxTime)
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

  void RemoveAnimation()
  {
    if (State == 1)
    {
      transform.localPosition = Vector3.Lerp(PosA, PosB, Time / MaxTime);
      Time += UnityEngine.Time.deltaTime;
      if (Time >= MaxTime)
      {
        GameObject.Find("DX8").GetComponent<DX8.dx8>().UI_RemoveFloppy();

        State++;
        Time = 0;
      }
    }
    else if (State == 2)
    {
      DX8.dx8 dx8 = GameObject.Find("DX8").GetComponent<DX8.dx8>();
      transform.parent = dx8.FloppyDiskStack;

      Rigidbody rb = GetComponent<Rigidbody>();
      rb.isKinematic = false;
      rb.detectCollisions = true;
      rb.AddRelativeForce(new Vector3(0, 0, -4.0f));

      dx8.FloppySensor.Floppy = null;
      dx8.FloppySensor.IsEmpty = true;

    }
  }

  public void EjectFloppy()
  {
    Time  = 0.0f;
    MaxTime = 0.25f;
    State = 1;
    Direction = -1;
    
    PosA = transform.localPosition;
    PosB = new Vector3(0,0, -1.5f);
  }

  public void RunFloppy(FloppySensor sensor)
  {
    Rigidbody rb = GetComponent<Rigidbody>();
    rb.isKinematic = true;
    
    HeldItem hd = GameObject.Find("Character").GetComponent<Character>().HeldItem;
    if (hd.Rb == rb)
    {
      hd.Deattach();
      
      rb.isKinematic = true;
      rb.detectCollisions = false;

      transform.SetParent(sensor.transform, true);
      
      PosA = transform.localPosition;
      PosB = new Vector3(0,0, -1.0f);
      PosC = new Vector3(0,0, 0.25f);
      RotA = transform.localRotation;
      RotB = Quaternion.Euler(180,0,-90);

      Time  = 0.0f;
      MaxTime = 0.5f;
      State = 1;
      Direction = 1;

      //transform.localPosition = new Vector3(0,0, 0.25f);
      //transform.localRotation = Quaternion.Euler(180,0,-90);
    }

  }

}
