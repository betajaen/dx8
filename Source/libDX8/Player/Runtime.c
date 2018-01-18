#include "Shared/Player.h"

void Start()
{
  // TODO GUI
  dx8_Player_Start();
}

void Stop()
{
  dx8_Player_Stop();
}

void Frame()
{
  dx8_Player_Frame();

  // Commit frame to thing.
  // Handle any gui here.
}
