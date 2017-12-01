using System;
using System.Runtime.InteropServices;
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class SpeakerSource : MonoBehaviour
{
  public DX8.dx8 dx8;
  
  int rate; 

  void Start()
  {
    rate = AudioSettings.outputSampleRate;
  }

  void OnAudioFilterRead(float[] data, int channels)
  {
    if (dx8.IsRunning == false || dx8.IsPaused || dx8.Mute)
      return;
    
    GCHandle dataHandle = GCHandle.Alloc(data, GCHandleType.Pinned);
    IntPtr dataPtr = dataHandle.AddrOfPinnedObject();

    DX8.Library.GetSnd(dataPtr, data.Length, rate, channels); 

    dataHandle.Free();
  }

}
