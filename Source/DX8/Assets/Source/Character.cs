using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Character : MonoBehaviour
{
  public CharacterController CC;
  public Camera     Camera;
  public DX8.dx8    Dx8;
  
  public float      Yaw, Pitch;

  public HeldItem   HeldItem;

  public bool       IsFrozen;

  void Start()
  {
    CC = GetComponent<CharacterController>();
  }

  void Update ()
  {
    if (Input.GetKeyUp(KeyCode.Escape))
    {
#if UNITY_EDITOR
       UnityEditor.EditorApplication.isPlaying = false;
#else
      Application.Quit();
#endif
    }

    if (IsFrozen)
    {
      return;
    }
    
    RaycastHit hit;

    if (HeldItem.IsHolding())
    {
      if (Input.GetMouseButtonUp(0))
      {
        HeldItem.Deattach();
      }
      else
      {
        Vector3 moveTarget = Vector3.zero;

        Ray ray = Camera.ScreenPointToRay(new Vector3(Screen.width / 2, Screen.height / 2, 0));
      
        if (Physics.Raycast(ray, out hit, 100.0f, 1 << 8))
        {
          //moveTarget = hit.point;
          HeldItem.TargetPoint = hit.point;
          // Almost right - need to take into held objects radius into account.
        }
        else
        {
          HeldItem.TargetPoint = ray.origin + ray.direction * 5.0f;
        }
      }
    }
    else if (Input.GetMouseButtonUp(0))
    {
      // Boolean Raycast(Vector3 origin, Vector3 direction, Single maxDistance, Int32 layerMask);
      // Physics.Raycast(
      Ray ray = Camera.ScreenPointToRay(new Vector3(Screen.width / 2, Screen.height / 2, 0));
      //public static Boolean Raycast(Ray ray, out RaycastHit hitInfo, Single maxDistance, Int32 layerMask);
      if (Physics.Raycast(ray, out hit, 100.0f, 1 << 8))
      {
        Debug.LogFormat("Hit {0}", hit.collider.name);
        Rigidbody rb = hit.collider.GetComponent<Rigidbody>();
        if (rb)
        {
          HeldItem.Attach(rb);
        }
      }
      else
      {
        Debug.Log("No hit");
      }

    }


    Yaw += Input.GetAxis("Mouse X") * 2.5f;
    Pitch -= Input.GetAxis("Mouse Y") * 2.5f;

    Pitch = Mathf.Clamp(Pitch, -89.0f, 89.0f);
    
    Quaternion yawq = Quaternion.Euler(0, Yaw, 0);


    transform.localRotation = yawq;
    Camera.transform.localRotation = Quaternion.Euler(Pitch, 0, 0);


    Vector3 velocity = Vector3.zero;
    bool didMove = false;

    if (Input.GetKey(KeyCode.W))
    {
      velocity.z += 1.0f;
      didMove = true;
    }
    else if (Input.GetKey(KeyCode.S))
    {
      velocity.z -= 1.0f;
      didMove = true;
    }
    
    if (Input.GetKey(KeyCode.A))
    {
      velocity.x -= 1.0f;
      didMove = true;
    }
    else if (Input.GetKey(KeyCode.D))
    {
      velocity.x += 1.0f;
      didMove = true;
    }

    if (didMove == true)
    {
      const float kSpeed = 8.0f;
      
      Vector3 delta = velocity * kSpeed *Time.deltaTime;
      delta = yawq * delta;

      CC.Move(delta);
    }

  }
  
}
