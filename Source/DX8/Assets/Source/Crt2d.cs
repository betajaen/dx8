using System;
using UnityEngine;

public class Crt2d : MonoBehaviour
{
  public UnityEngine.UI.RawImage RawImage;

  void Awake()
  {
    RawImage = GetComponent<UnityEngine.UI.RawImage>();
  }

  public void SetTexture(Texture2D texture)
  {
    RawImage.texture = texture;

    UpdateSize();
  }

  void Update()
  {
    UpdateSize();
  }

  void UpdateSize()
  {

    const float TexWidth = 320, TexHeight = 256;
    const float ratio = TexWidth / TexHeight;
    
    float gameScale = 1.0f / Mathf.Max((float)TexWidth / (float)Screen.width, (float)TexHeight / (float)Screen.height);

    float left = 0, top = 0, right = 0, bottom = 0;
    float width = (TexWidth * gameScale);
    float height = (TexHeight * gameScale);
    
    left = -width / 2;
    right = width / 2;
    bottom = -height / 2;
    top = height / 2;

    RawImage.rectTransform.offsetMin = new Vector2(left, bottom);
    RawImage.rectTransform.offsetMax = new Vector2(right, top);

  }
}