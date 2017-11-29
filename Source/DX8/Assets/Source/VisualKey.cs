using System;
using UnityEngine;

public class VisualKey : MonoBehaviour
{
  public KeyCode KeyCode;

  public bool IsDown;
  public Vector3 Position;

  void Start()
  {
    Position = transform.localPosition;
  }

  void Update()
  {
    if (Input.GetKeyUp(KeyCode))
    {
      IsDown = false;
      UpdateAnimation();
    }
    else if (Input.GetKeyDown(KeyCode))
    {
      IsDown = true;
      UpdateAnimation();
    }
  }

  void UpdateAnimation()
  {
    Vector3 p = Position;

    if (IsDown)
      p.y -= 0.025f;

    transform.localPosition = p;
  }

}
