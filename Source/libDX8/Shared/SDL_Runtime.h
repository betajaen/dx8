#ifndef DX8_SDL_RUNTIME_H
#define DX8_SDL_RUNTIME_H

#include <stdint.h>
#include <stdbool.h>

#include <SDL.h>

#define DX8_PLAYER_SCALE 2
#define DX8_PLAYER_FRAME_RATE   50
#define DX8_PLAYER_FRAME_MS     (1000 / DX8_PLAYER_FRAME_RATE)

SDL_Window*   DX8_GetSDLWindow();
SDL_Renderer* DX8_GetRenderer();
void          DX8_QuitNextFrame();

#endif
