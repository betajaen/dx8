#include "Player.h"

#include <dx8a/dx8a.h>

void dx8_Player_Start()
{
  dx8a_Setup();
}

void dx8_Player_Stop()
{
  dx8a_Teardown();
}

void dx8_Player_Frame()
{
  dx8a_Frame(1);
}

void* dx8_Player_GetCrt()
{
  return NULL;
}
