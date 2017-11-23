using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class HeldItem : MonoBehaviour
{

  public bool                Moving;
  public Vector3             TargetPoint;
  public CharacterController CC;
  public Transform           Tr;
  public Rigidbody           Rb;
  public Transform           RbTr;

  void Awake()
  {
    CC = GetComponent<CharacterController>();
    Tr = GetComponent<Transform>();
  }

  public bool IsHolding()
  {
    return Rb != null;
  }

  public void Attach(Rigidbody rb)
  {
    Rb = rb;
    RbTr = rb.transform;
    Rb.isKinematic = true;
    Tr.position = RbTr.position;
    Rb.gameObject.layer = 10;
    TargetPoint = Tr.position;
    gameObject.layer = 9;
  }

  public void Deattach()
  {
    Rb.isKinematic = false;
    Rb.gameObject.layer = 8;
    Rb = null;
    RbTr = null;
    gameObject.layer = 11;
  }

  void Update()
  {
    if (Rb != null)
    {
      const float kSpeed = 1.0f;
      
      //Vector3 delta = (TargetPoint - Tr.position).normalized;
      //delta *= kSpeed * Time.deltaTime;
      Vector3 dst = Vector3.MoveTowards(Tr.position, TargetPoint, 30 * Time.deltaTime);

      CollisionFlags cf = CC.Move(dst - Tr.position);
      RbTr.position = Tr.position;
      //Debug.LogFormat("{0} {1} {2} {3}", delta.x, delta.y, delta.z, cf);
    }
  }

}
