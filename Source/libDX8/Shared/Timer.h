#ifndef DX8_TIMER_H
#define DX8_TIMER_H

#include <dx8a/dx8a.h>

typedef struct
{
  u32    start, paused;
  u32    flags;
} Timer;


void  Timer_Start(Timer* timer);

void  Timer_Stop(Timer* timer);

void  Timer_Pause(Timer* timer);

void  Timer_Unpause(Timer* timer);

u32   Timer_GetTicks(Timer* timer);

bool  Timer_IsStarted(Timer* timer);

bool  Timer_IsPaused(Timer* timer);

#endif
