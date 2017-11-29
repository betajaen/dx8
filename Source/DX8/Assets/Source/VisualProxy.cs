using System;
using UnityEngine;

public class VisualProxy : MonoBehaviour
{
  public GameObject Mirror;
  public bool IsColliding = false;

  private void OnCollisionEnter(Collision collision)
  {
    IsColliding = true;
  }

  public void OnTriggerStay(Collider other)
  {
    IsColliding = true;
  }

  public void OnCollisionExit(Collision collision)
  {
    IsColliding = false;
  }

}
