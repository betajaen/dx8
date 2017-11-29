using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeldItem : MonoBehaviour
{

  public Transform           Character;
  public Quaternion          OriginalRotation;
  public bool                Moving;
  public Vector3             TargetPoint;
  public Rigidbody           Rb;
  public Transform           RbTr;
  public int                 RbLayer;
  public VisualProxy         RbVisualProxy;
  public GameObject          Proxy;

  void Awake()
  {
  }

  public bool IsHolding()
  {
    return Rb != null;
  }

  public void Attach(Rigidbody rb, Collider collider)
  {
    RbVisualProxy = rb.GetComponent<VisualProxy>();
    if (RbVisualProxy  == null)
      return;
    
    if (rb.name == "KeyboardCase")
    {
      Collider[] cols = rb.GetComponentsInChildren<Collider>();
      foreach(var col in cols)
        col.enabled = false;
      collider.enabled = true;
    }

    Rb = rb;
    RbTr = rb.transform;
    RbLayer = rb.gameObject.layer;
    rb.gameObject.layer = 9;
    rb.angularDrag = 1.0f;
    Rb.maxAngularVelocity = 0.1f;
    OriginalRotation = RbTr.rotation;
    
    Proxy = GameObject.Instantiate(RbVisualProxy.Mirror, RbTr.position, RbTr.rotation);
    
    MeshRenderer[] mrs = RbVisualProxy.GetComponentsInChildren<MeshRenderer>();
    foreach(var mr in mrs)
    {
      mr.enabled = false;
    }

    TargetPoint = RbTr.position;
  }

  public void Deattach()
  {
    MeshRenderer[] mrs = RbVisualProxy.GetComponentsInChildren<MeshRenderer>();
    foreach(var mr in mrs)
    {
      mr.enabled = true;
    }
    
    if (Rb.name == "KeyboardCase")
    {
      Collider[] cols = Rb.GetComponentsInChildren<Collider>();
      foreach(var col in cols)
        col.enabled = true;
    }

    GameObject.Destroy(Proxy);

    RbTr.gameObject.layer = RbLayer;
    Rb = null;
    RbTr = null;
  }

  void FixedUpdate()
  {
    if (Rb != null)
    {
      const float kStrength = 50.0f;
      
      Vector3 dst = Vector3.MoveTowards(RbTr.position, TargetPoint, 30 * Time.deltaTime);
      
      Rb.velocity = kStrength * (dst - RbTr.position);
      
      if (RbVisualProxy.IsColliding)
      {
        Proxy.transform.position = RbTr.position;
        Proxy.transform.rotation = RbTr.rotation;
      }
      else
      {
        
        Vector3 p0 = Character.position;
        p0.y = RbTr.position.y;

        Quaternion q = Quaternion.LookRotation(RbTr.position - p0, Vector3.up);
        Rb.MoveRotation(q);
        Proxy.transform.position = dst;
        Proxy.transform.rotation = RbTr.rotation;
      }

    }
  }

}
