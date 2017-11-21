using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Crt : MonoBehaviour
{
  public void SetTexture(Texture2D texture)
  {
    GetComponent<MeshRenderer>().sharedMaterial.mainTexture = texture;
    GetComponent<MeshRenderer>().sharedMaterial.SetTexture("_EmissionMap", texture);
  }
}
