using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Character : MonoBehaviour
{
  public CharacterController CharacterController;
  public Camera     Camera;
  public DX8.dx8    Dx8;
  
  public float      yaw, pitch;

  void Start()
  {
    Cursor.lockState = CursorLockMode.Locked;
    Cursor.visible = false;
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

    if (Input.GetMouseButtonUp(0))
    {
      RaycastHit hit;
      // Boolean Raycast(Vector3 origin, Vector3 direction, Single maxDistance, Int32 layerMask);
      // Physics.Raycast(
      Ray ray = Camera.ScreenPointToRay(new Vector3(Screen.width / 2, Screen.height / 2, 0));
      //public static Boolean Raycast(Ray ray, out RaycastHit hitInfo, Single maxDistance, Int32 layerMask);
      if (Physics.Raycast(ray, out hit, 100.0f, 1 << 8))
      {
        Debug.LogFormat("Hit {0}", hit.collider.name);
      }
      else
      {
        Debug.Log("No hit");
      }

    }


    yaw += Input.GetAxis("Mouse X") * 2.5f;
    pitch -= Input.GetAxis("Mouse Y") * 2.5f;

    pitch = Mathf.Clamp(pitch, -89.0f, 89.0f);
    
    Quaternion yawq = Quaternion.Euler(0, yaw, 0);


    transform.localRotation = yawq;
    Camera.transform.localRotation = Quaternion.Euler(pitch, 0, 0);


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

      CharacterController.Move(delta);
    }

  }
  
}
