#include "Timer.h"

#include <SDL.h>

#define TF_None    0
#define TF_Started 1
#define TF_Paused  2

void  Timer_Start(Timer* timer)
{
  timer->flags = TF_Started;
  timer->start = SDL_GetTicks();
  timer->paused = 0;
}

void  Timer_Stop(Timer* timer)
{
  timer->start = 0;
  timer->paused = 0;
  timer->flags = TF_None;
}

void  Timer_Pause(Timer* timer)
{
  if (timer->flags == TF_Started)
  {
    timer->flags |= TF_Paused;
    timer->paused = SDL_GetTicks() - timer->start;
    timer->start = 0;
  }
}

void  Timer_Unpause(Timer* timer)
{
  if (timer->flags == 3 /* Started | Paused */)
  {
    timer->flags = TF_Started; // &= ~Paused
    timer->start = SDL_GetTicks() - timer->paused;
    timer->paused = 0;
  }
}

u32   Timer_GetTicks(Timer* timer)
{
  u32 time = 0;

  if (timer->flags != 0) // Started || Paused
  {
    if (timer->flags > TF_Started) // Paused
    {
      time = timer->paused;
    }
    else
    {
      time = SDL_GetTicks() - timer->start;
    }
  }

  return time;
}

bool  Timer_IsStarted(Timer* timer)
{
  return timer->flags >= TF_Started;
}

bool  Timer_IsPaused(Timer* timer)
{
  return timer->flags >= TF_Paused;
}
