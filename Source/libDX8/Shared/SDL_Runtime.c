#include "SDL_Runtime.h"
#include "Timer.h"
#include "dx8a/dx8a.h"

#include <SDL_main.h>

static SDL_Window*   sWindow;
static SDL_Renderer* sRenderer;
static bool          sQuit;
static Timer         sFrameCapTimer;

extern void Start();

extern void Stop();

extern void Frame();

SDL_Window* DX8_GetSDLWindow()
{
  return sWindow;
}

SDL_Renderer* DX8_GetRenderer()
{
  return sRenderer;
}

void DX8_QuitNextFrame()
{
  sQuit = true;
}

int main(int argc, char *argv[])
{
  SDL_Init(SDL_INIT_EVERYTHING);
  
  sWindow = SDL_CreateWindow("DX8", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 320 * DX8_PLAYER_SCALE, 256 * DX8_PLAYER_SCALE, SDL_WINDOW_SHOWN);
  sQuit   = false;
  
  sRenderer = SDL_CreateRenderer(sWindow, -1, SDL_RENDERER_ACCELERATED);
  
  Start();

  SDL_Event event;
  while(sQuit == false)
  {
    Timer_Start(&sFrameCapTimer);

    while (SDL_PollEvent(&event))
    {
      switch(event.type)
      {
        case SDL_QUIT:
        {
          sQuit = true;
        }
      }
    }

    // @TODO
    // Replace this with an accumulator based system, so the extra
    // ticks aren't wasted by waiting.

    // Update here
    Frame();
    
    u32 frameTicks = Timer_GetTicks(&sFrameCapTimer);

    if (frameTicks < DX8_PLAYER_FRAME_MS)
    {
      SDL_Delay(DX8_PLAYER_FRAME_MS - frameTicks);
    }
    
    SDL_RenderPresent(sRenderer);
  }
  
  Stop();

  SDL_Quit();
  return 0;
}
