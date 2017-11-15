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

#include "log_c/src/log.h"

#define FLOPPY_TRACKS      80
#define FLOPPY_SECTORS     2
#define FLOPPY_SECTOR_SIZE 1024
#define FLOPPY_SIZE        (FLOPPY_TRACKS * FLOPPY_SECTORS * FLOPPY_SECTOR_SIZE)

#define FLOPPY_HEADER_BYTE_PROGRAM 0x00  // Program
#define FLOPPY_HEADER_BYTE_DATA    0x01  // Data

// First sector is reserved by the boot.rom
// Disks can be program disks or data disks
// Each disk reserves the first sector (track:0, sector: 0)
// for the floppy header, and subsequent data.
// 
// Program Disk:
//    Sector 0: ProgramDiskHeader
//    Sector 0+nnn: Program + any program data for the rest of the disk
// Data Disk:
//    Sector: 0, DataDiskHeader
//    Sector: nnn, Files (One file per sector)

Byte* sFloppy[FLOPPY_SIZE];

typedef struct {
  Byte flags;
  Word size;  // Size to initially copy into program ram.
} ProgramDiskHeader;

typedef struct {
  Byte type;
  Word length;  // 
  Byte name[8]; // 
} FileHeader;

typedef struct {
  Byte flags;
  Byte count;
  FileHeader files[80 * 2];
} DataDiskHeader;

bool Fpy_HasDisk()
{
  return (Mmu_Get(REG_FPY_STATE) & IO_FPY_STATE_DISK) != 0;
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

  LOGF("Floppy Data %p %i", data, length);
  memcpy(sFloppy, data, length);

  return false;
}

void Floppy_Clock()
{
}
