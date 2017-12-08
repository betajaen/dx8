//! d8888b.    db    db    .d888b. 
//! 88  `8D    `8b  d8'    88   8D 
//! 88   88     `8bd8'     `VoooY' 
//! 88   88     .dPYb.     .d~~~b.
//! 88  .8D    .8P  Y8.    88   8D
//! Y8888D'    YP    YP    `Y888P'
//!
//!      Dragon X8 Computer
//!    Cyfrifiadur y Ddraig X8
//! 
//! Copyright (c) 2017 Robin Southern   :: https://github.com/betajaen
//! Made in Wales -- For the FC Dev Jam :: https://itch.io/jam/fc-dev-jam
//! 
//! Permission is hereby granted, free of charge, to any person obtaining a copy
//! of this software and associated documentation files (the "Software"), to deal
//! in the Software without restriction, including without limitation the rights
//! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//! copies of the Software, and to permit persons to whom the Software is
//! furnished to do so, subject to the following conditions:
//! 
//! The above copyright notice and this permission notice shall be included in
//! all copies or substantial portions of the Software.
//! 
//! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//! THE SOFTWARE.

#include "dx8.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define FLOPPY_TRACKS      80
#define FLOPPY_SECTORS     2
#define FLOPPY_TOTAL_TRACKS (FLOPPY_TRACKS * FLOPPY_SECTORS)
#define FLOPPY_SECTOR_SIZE 1024
#define FLOPPY_SIZE        (FLOPPY_TRACKS * FLOPPY_SECTORS * FLOPPY_SECTOR_SIZE)
#define TRACK_SEEK_TIME    4 // 64
#define TRACK_READ_TIME    32

Byte  sFloppyOp;
int   sFloppyOp_Src;
Word  sFloppyOp_Dst;
Word  sFloppyOp_Len;
Byte  sFloppyOp_Track;
int   sFloppyOp_Timer;

Byte  sFloppySeekTrack;
Byte  sFloppyCurrentTrack;
int   sFloppySeekTimer;
int   sFloppy_Clock = 0;
int   sFloppy_Light = 0;
int   sFloppy_ReadCounter = 0;
int   sFloppy_WriteCounter = 0;

#define FLOPPY_LIGHT_OFF 0
#define FLOPPY_LIGHT_SEEK 1
#define FLOPPY_LIGHT_READWRITE 2

Byte  sFloppy[FLOPPY_SIZE];

int Fpy_Busy()
{
  return sFloppy_Light;
}

bool Fpy_HasDisk()
{
  return (Mmu_Get(REG_FPY_STATE) & IO_FPY_STATE_DISK) != 0;
}

int  Fpy_CalculateTrackAddress(Byte track)
{
  if (track >= 159)
    track = 159;
  return track * FLOPPY_SECTOR_SIZE;
}

void Cpu_Interrupt(Byte name);

void Fpy_Interrupt(Byte msg, bool isError)
{
  Byte state = msg;
  if (isError)
    state |= IO_FPY_MSG_ERROR;

  Mmu_Set(REG_FPY_MSG, state);
  Cpu_Interrupt(INTVEC_FLOPPY);
}

void Fpy_InsertDisk()
{
  Byte state = Mmu_Get(REG_FPY_STATE);
  state |= IO_FPY_STATE_DISK;
  Mmu_Set(REG_FPY_STATE, state);

  Fpy_Interrupt(IO_FPY_MSG_INSERT, false);
  sFloppyCurrentTrack = rand() % FLOPPY_TOTAL_TRACKS;
}

void Fpy_RemoveDisk()
{
  Byte state = Mmu_Get(REG_FPY_STATE);
  state &= ~IO_FPY_STATE_DISK;
  Mmu_Set(REG_FPY_STATE, state);

  memset(sFloppy, 0x00, FLOPPY_SIZE);

  Fpy_Interrupt(IO_FPY_MSG_REMOVE, false);
}

bool Fpy_CopyToFloppyController(void* data, int length)
{
  if (length > FLOPPY_SIZE)
    return false;

//  DX8_LOGF("Floppy Data %p %i", data, length);
  memcpy(sFloppy, data, length);

  return false;
}

void Floppy_Interrupt()
{
  sFloppyOp       = Mmu_Get(REG_FPY_OP);
  sFloppyOp_Dst   = Mmu_GetWord(REG_FPY_OP_ADDR);
  sFloppyOp_Len   = FLOPPY_SECTOR_SIZE;
  sFloppyOp_Track = Mmu_Get(REG_FPY_OP_TRACK);
  
  if (sFloppyOp_Track >= 160)
    sFloppyOp_Track = 159;

  sFloppyOp_Src   = Fpy_CalculateTrackAddress(sFloppyOp_Track);
  sFloppy_ReadCounter = 0;

  // DX8_LOGF("Floppy Op!! Id=%i Track=%i Len=$%4X Dst=$%4X Src=$%8X", sFloppyOp, sFloppyOp_Track, sFloppyOp_Len, sFloppyOp_Dst, sFloppyOp_Src);

  Mmu_Set(REG_FPY_OP, 0x00);
  sFloppySeekTimer = 0;
  sFloppySeekTrack = sFloppyOp_Track;
}


inline bool Floppy_AtTrack(Byte track)
{
  return sFloppyCurrentTrack == track;
}

inline bool Floopy_IsSeeking()
{
  return sFloppyCurrentTrack != sFloppySeekTrack;
}

bool Floppy_SeekTrack()
{
  if (sFloppyCurrentTrack == sFloppySeekTrack)
  {
    return true;
  }

  sFloppy_Light = FLOPPY_LIGHT_SEEK;

  if (sFloppySeekTimer == 0)
  {
    sFloppySeekTimer = TRACK_SEEK_TIME;

    if (sFloppyCurrentTrack < sFloppySeekTrack)
    {
      sFloppyCurrentTrack++;

      Mmu_Set(REG_FPY_CURRENT_TRACK, sFloppyCurrentTrack);
      Fpy_Interrupt(IO_FPY_MSG_SEEK, false);
      // DX8_LOGF("[Floppy] Seeked to track %i", sFloppyCurrentTrack);
    }
    else if (sFloppyCurrentTrack > sFloppySeekTrack)
    {
      sFloppyCurrentTrack--;

      Mmu_Set(REG_FPY_CURRENT_TRACK, sFloppyCurrentTrack);
      Fpy_Interrupt(IO_FPY_MSG_SEEK, false);
      // DX8_LOGF("[Floppy] Seeked to track %i", sFloppyCurrentTrack);
    }

  }
  
  sFloppySeekTimer--;

  if (sFloppyCurrentTrack == sFloppySeekTrack)
  {
    // DX8_LOGF("[Floppy] Seeked to track %i", sFloppyCurrentTrack);
    return true;
  }

  return false;
}

void Floppy_Clock()
{
  sFloppy_Clock++;
  if (sFloppy_Clock < 4096)
    return;
  
  sFloppy_Clock = 0;

  switch (sFloppyOp)
  {
    case IO_FPY_OP_READ_TRACK:
    {
        if (Floppy_SeekTrack() == false)
          return;

        sFloppy_Light = FLOPPY_LIGHT_READWRITE;

        int timer = TRACK_READ_TIME;
        while (sFloppyOp_Len)
        {
          Mmu_Set(sFloppyOp_Dst, sFloppy[sFloppyOp_Src]);
          sFloppyOp_Dst++;
          sFloppyOp_Src++;
          sFloppyOp_Len--;
          timer--;
          sFloppy_ReadCounter++;
          if (timer == 0)
            break;
        }

        if (sFloppy_ReadCounter == 256)
        {
          sFloppy_ReadCounter = 0;
          Fpy_Interrupt(IO_FPY_MSG_READING, false);
        }

        if (sFloppyOp_Len == 0)
        {
          DX8_LOGF("[Floppy] Read track %i $%8X to $%4X, Length = $%4X", sFloppyCurrentTrack, sFloppyOp_Src, sFloppyOp_Dst - FLOPPY_SECTOR_SIZE, FLOPPY_SECTOR_SIZE);

          sFloppy_Light = FLOPPY_LIGHT_OFF;
          sFloppyOp = 0;
          Fpy_Interrupt(IO_FPY_MSG_READ, false);
        }

      }
    break;
  }
}
