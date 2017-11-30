using System;
using UnityEngine;
using System.Collections;

[RequireComponent(typeof(GiraffeQuadSpriteRenderer))]
public class GiraffeQuadSpriteAnimator : MonoBehaviour
{

  [SerializeField]
  private bool mPlaying = true;

  [SerializeField]
  private GiraffeSpriteAnimation mSpriteAnimation;

  [NonSerialized]
  private GiraffeQuadSpriteRenderer mRenderer;

  [NonSerialized]
  private float mTime;

  [NonSerialized]
  private int mCurrentFrame;

  void Awake()
  {
    mRenderer = GetComponent<GiraffeQuadSpriteRenderer>();
    mCurrentFrame = -1;
  }

  void Start()
  {
    if (mSpriteAnimation != null && Application.isPlaying)
    {
      mSpriteAnimation.FetchSprites();
      UpdateAnimation();
    }
  }

  void Update()
  {
    if (mPlaying)
    {
      time += Time.deltaTime * Time.timeScale;
    }
  }

  public float time
  {
    get
    {
      return mTime;
    }

    set
    {
      mTime = value;
      UpdateAnimation();
    }
  }

  public GiraffeSpriteAnimation spriteAnimation
  {
    get
    {
      return mSpriteAnimation;
    }
    set
    {
      if (mSpriteAnimation == value)
        return;
      mSpriteAnimation = value;
      mCurrentFrame = -1;
      if (Application.isPlaying && mSpriteAnimation != null)
      {
        mSpriteAnimation.FetchSprites();
        UpdateAnimation();
      }
    }
  }

  public bool playing
  {
    get
    {
      return mPlaying;
    }
    set
    {
      if (mPlaying == value)
        return;
      mPlaying = value;
    }
  }

  void UpdateAnimation()
  {
    if (mSpriteAnimation == null)
      return;

    int frame = GiraffeSpriteAnimation.Animate(mSpriteAnimation, mTime, ref mPlaying);

    if (frame != mCurrentFrame)
    {
      GiraffeSprite sprite = mSpriteAnimation.frameSprites[frame];
      mRenderer.sprite = sprite;
      mCurrentFrame = frame;
    }
  }

}
