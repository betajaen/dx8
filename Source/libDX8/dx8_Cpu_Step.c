#include "dx8.h"
#include "dx8_Cpu_Common.inc"
#include "dx8_Cpu_Tables.inc"

inline void Cpu_Call_Return();
inline void Cpu_Call_Always(Byte lo_offset, Word callAddress);
inline void Cpu_Call_Conditional(bool cond, Byte lo_offset, Word callAddress);
inline void Cpu_Call_Branch(Byte value, Word tableAddress, Byte lo_offset);
inline void Cpu_CompareByte(Byte lhs, Byte rhs);
inline void Cpu_CompareWord(Word lhs, Word rhs);
inline void Cpu_CompareBit(Byte val, Byte bit);
inline void Cpu_Interrupt_Emit(Byte name);
inline void Cpu_Jump_Always(Word imm);
inline void Cpu_Jump_Conditional(bool cond, Word absIfTrue, Byte relIfFalse);
inline void Cpu_Jump_Branch(Byte value, Word tableAddress);
inline void Cpu_JumpRel_Always(Byte signedValue);
inline void Cpu_JumpRel_Conditional(bool cond, Byte relIfTrue, Byte relIfFalse);
inline void Cpu_JumpAdd_Always(int imm);
inline Byte Cpu_Memory_LoadByte(Word address);
inline void Cpu_Memory_StoreByte(Word address, Byte value);
inline Word Cpu_Memory_LoadWord(Word address);
inline void Cpu_Memory_StoreWord(Word address, Word value);
inline void Cpu_PcStack_Push(Word address);
inline Word Cpu_PcStack_Pop();
inline void Cpu_Stack_PushByte(Byte value);
inline void Cpu_Stack_PushWord(Word value);
inline Byte Cpu_Stack_PopByte();
inline Word Cpu_Stack_PopWord();
inline void Cpu_Stack_PushFlags();
inline void Cpu_Stack_PopFlags();
inline void Cpu_Stack_PushRegisters();
inline void Cpu_Stack_PopRegisters();

#include "dx8_Cpu_Op_Call.inc"
#include "dx8_Cpu_Op_Compare.inc"
#include "dx8_Cpu_Op_Debug.inc"
#include "dx8_Cpu_Op_Interrupt.inc"
#include "dx8_Cpu_Op_Jump.inc"
#include "dx8_Cpu_Op_Memory.inc"
#include "dx8_Cpu_Op_PcStack.inc"
#include "dx8_Cpu_Op_Stack.inc"

void Cpu_StepOnce()
{
  Opcode opcode = Mmu_Get(cpu.pc.w);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.opcode = opcode;
      sDebugInstruction.pc = cpu.pc.w;
      sDebugInstruction.context1Type = 0;
      sDebugInstruction.context2Type = 0;
      sDebugInstruction.operand.w = 0;
#endif
  switch (opcode)
  {
    // nop
    case Op_Nop : // 0x00
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push x
    case Op_Push_X : // 0x01
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PushByte(cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push y
    case Op_Push_Y : // 0x02
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PushByte(cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push z
    case Op_Push_Z : // 0x03
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PushByte(cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push w
    case Op_Push_W : // 0x04
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PushByte(cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push a
    case Op_Push_A : // 0x05
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PushByte(cpu.a);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push i
    case Op_Push_I : // 0x06
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PushWord(cpu.I.I);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push j
    case Op_Push_J : // 0x07
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PushWord(cpu.J.J);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push f
    case Op_Push_F : // 0x08
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PushFlags();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push.b $00
    case Op_PushB_Byte : // 0x09
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_Stack_PushByte(imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // push.w $0000
    case Op_PushW_Address : // 0x0A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Stack_PushWord(imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // pop x
    case Op_Pop_X : // 0x0B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.x = Cpu_Stack_PopByte();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // pop y
    case Op_Pop_Y : // 0x0C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.y = Cpu_Stack_PopByte();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // pop z
    case Op_Pop_Z : // 0x0D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.z = Cpu_Stack_PopByte();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // pop w
    case Op_Pop_W : // 0x0E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.w = Cpu_Stack_PopByte();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // pop a
    case Op_Pop_A : // 0x0F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = Cpu_Stack_PopByte();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // pop i
    case Op_Pop_I : // 0x10
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.I = Cpu_Stack_PopWord();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // pop j
    case Op_Pop_J : // 0x11
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.J = Cpu_Stack_PopWord();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // pop f
    case Op_Pop_F : // 0x12
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Stack_PopFlags();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load a,i
    case Op_Load_A_I : // 0x13
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(Cpu_Memory_LoadByte(cpu.I.I));
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load z,i
    case Op_Load_Z_I : // 0x14
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.z = FlagsOpB(Cpu_Memory_LoadByte(cpu.I.I));
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load w,i
    case Op_Load_W_I : // 0x15
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.w = FlagsOpB(Cpu_Memory_LoadByte(cpu.I.I));
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load a,j
    case Op_Load_A_J : // 0x16
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(Cpu_Memory_LoadByte(cpu.J.J));
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load x,j
    case Op_Load_X_J : // 0x17
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.x = FlagsOpB(Cpu_Memory_LoadByte(cpu.J.J));
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load y,j
    case Op_Load_Y_J : // 0x18
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.y = FlagsOpB(Cpu_Memory_LoadByte(cpu.J.J));
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load x,$0000
    case Op_Load_X_Address : // 0x19
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.I.x = FlagsOpB(Cpu_Memory_LoadByte(imm));
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load y,$0000
    case Op_Load_Y_Address : // 0x1A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.I.y = FlagsOpB(Cpu_Memory_LoadByte(imm));
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load z,$0000
    case Op_Load_Z_Address : // 0x1B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.J.z = FlagsOpB(Cpu_Memory_LoadByte(imm));
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load w,$0000
    case Op_Load_W_Address : // 0x1C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.J.w = FlagsOpB(Cpu_Memory_LoadByte(imm));
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load a,$0000
    case Op_Load_A_Address : // 0x1D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.a = FlagsOpB(Cpu_Memory_LoadByte(imm));
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load i,$0000
    case Op_Load_I_Address : // 0x1E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.I.I = FlagsOpW(Cpu_Memory_LoadWord(imm));
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // load j,$0000
    case Op_Load_J_Address : // 0x1F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.J.J = FlagsOpW(Cpu_Memory_LoadWord(imm));
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store i,a
    case Op_Store_I_A : // 0x20
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Memory_StoreByte(cpu.I.I, cpu.a);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store i,w
    case Op_Store_I_W : // 0x21
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Memory_StoreByte(cpu.I.I, cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store i,z
    case Op_Store_I_Z : // 0x22
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Memory_StoreByte(cpu.I.I, cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store j,a
    case Op_Store_J_A : // 0x23
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Memory_StoreByte(cpu.J.J, cpu.a);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store j,x
    case Op_Store_J_X : // 0x24
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Memory_StoreByte(cpu.J.J, cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store j,y
    case Op_Store_J_Y : // 0x25
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Memory_StoreByte(cpu.J.J, cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store $0000,x
    case Op_Store_Address_X : // 0x26
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Memory_StoreByte(imm, cpu.I.x);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store $0000,y
    case Op_Store_Address_Y : // 0x27
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Memory_StoreByte(imm, cpu.I.y);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store $0000,z
    case Op_Store_Address_Z : // 0x28
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Memory_StoreByte(imm, cpu.J.z);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store $0000,w
    case Op_Store_Address_W : // 0x29
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Memory_StoreByte(imm, cpu.J.w);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store $0000,a
    case Op_Store_Address_A : // 0x2A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Memory_StoreByte(imm, cpu.a);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store $0000,i
    case Op_Store_Address_I : // 0x2B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Memory_StoreWord(imm, cpu.I.I);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // store $0000,j
    case Op_Store_Address_J : // 0x2C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Memory_StoreWord(imm, cpu.J.J);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // call $0000
    case Op_Call_Address : // 0x2D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Call_Always(3, imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // call.eq $0000
    case Op_CallEq_Address : // 0x2E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Call_Conditional(cpu.flags.bZero == 1, 3, imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // call.neq $0000
    case Op_CallNeq_Address : // 0x2F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Call_Conditional(cpu.flags.bZero == 0, 3, imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // call.gt $0000
    case Op_CallGt_Address : // 0x30
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Call_Conditional(cpu.flags.bGreater == 1, 3, imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // call.lt $0000
    case Op_CallLt_Address : // 0x31
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Call_Conditional(cpu.flags.bGreater == 0 && cpu.flags.bZero == 0, 3, imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // call.z $0000
    case Op_CallZ_Address : // 0x32
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Call_Conditional(cpu.flags.bZero == 1, 3, imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // call.nz $0000
    case Op_CallNz_Address : // 0x33
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Call_Conditional(cpu.flags.bZero == 0, 3, imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // return
    case Op_Return : // 0x34
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Call_Return();
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cpy a,x
    case Op_Cpy_A_X : // 0x35
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = cpu.I.x;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cpy a,y
    case Op_Cpy_A_Y : // 0x36
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = cpu.I.y;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cpy a,z
    case Op_Cpy_A_Z : // 0x37
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = cpu.J.z;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cpy a,w
    case Op_Cpy_A_W : // 0x38
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = cpu.J.w;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cpy x,a
    case Op_Cpy_X_A : // 0x39
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.x = cpu.a;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cpy y,a
    case Op_Cpy_Y_A : // 0x3A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.y = cpu.a;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cpy z,a
    case Op_Cpy_Z_A : // 0x3B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.z = cpu.a;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cpy w,a
    case Op_Cpy_W_A : // 0x3C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.w = cpu.a;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // set x,$00
    case Op_Set_X_Byte : // 0x3D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.x = imm;
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // set y,$00
    case Op_Set_Y_Byte : // 0x3E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.y = imm;
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // set z,$00
    case Op_Set_Z_Byte : // 0x3F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.z = imm;
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // set w,$00
    case Op_Set_W_Byte : // 0x40
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.w = imm;
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // set a,$00
    case Op_Set_A_Byte : // 0x41
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = imm;
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // set i,$0000
    case Op_Set_I_Address : // 0x42
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.I.I = imm;
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // set j,$0000
    case Op_Set_J_Address : // 0x43
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.J.J = imm;
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add a,x
    case Op_Add_A_X : // 0x44
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a + cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add a,y
    case Op_Add_A_Y : // 0x45
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a + cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add a,z
    case Op_Add_A_Z : // 0x46
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a + cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add a,w
    case Op_Add_A_W : // 0x47
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a + cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add i,j
    case Op_Add_I_J : // 0x48
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I + cpu.J.J);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add i,a
    case Op_Add_I_A : // 0x49
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I + cpu.a);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add i,z
    case Op_Add_I_Z : // 0x4A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I + cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add i,w
    case Op_Add_I_W : // 0x4B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I + cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add j,a
    case Op_Add_J_A : // 0x4C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.J = FlagsOpW(cpu.J.J + cpu.a);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add j,x
    case Op_Add_J_X : // 0x4D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.J = FlagsOpW(cpu.J.J + cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add j,y
    case Op_Add_J_Y : // 0x4E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.J = FlagsOpW(cpu.J.J + cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add i,$0000
    case Op_Add_I_Address : // 0x4F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I + imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add j,$0000
    case Op_Add_J_Address : // 0x50
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.J.J = FlagsOpW(cpu.J.J + imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add x,$00
    case Op_Add_X_Byte : // 0x51
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.x = FlagsOpB(cpu.I.x + imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add y,$00
    case Op_Add_Y_Byte : // 0x52
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.y = FlagsOpB(cpu.I.y + imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add z,$00
    case Op_Add_Z_Byte : // 0x53
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.z = FlagsOpB(cpu.J.z + imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add w,$00
    case Op_Add_W_Byte : // 0x54
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.w = FlagsOpB(cpu.J.w + imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // add a,$00
    case Op_Add_A_Byte : // 0x55
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = FlagsOpB(cpu.a + imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub a,x
    case Op_Sub_A_X : // 0x56
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a - cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub a,y
    case Op_Sub_A_Y : // 0x57
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a - cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub a,z
    case Op_Sub_A_Z : // 0x58
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a - cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub a,w
    case Op_Sub_A_W : // 0x59
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a - cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub x,$00
    case Op_Sub_X_Byte : // 0x5A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.x = FlagsOpB(cpu.I.x - imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub y,$00
    case Op_Sub_Y_Byte : // 0x5B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.y = FlagsOpB(cpu.I.y - imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub z,$00
    case Op_Sub_Z_Byte : // 0x5C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.z = FlagsOpB(cpu.J.z - imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub w,$00
    case Op_Sub_W_Byte : // 0x5D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.w = FlagsOpB(cpu.J.w - imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sub a,$00
    case Op_Sub_A_Byte : // 0x5E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = FlagsOpB(cpu.a - imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mul a,x
    case Op_Mul_A_X : // 0x5F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a * cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mul a,$00
    case Op_Mul_A_Byte : // 0x60
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = FlagsOpB(cpu.a * imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mul i,j
    case Op_Mul_I_J : // 0x61
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I * cpu.J.J);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mul i,$0000
    case Op_Mul_I_Address : // 0x62
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I * imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mul j,$0000
    case Op_Mul_J_Address : // 0x63
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      cpu.J.J = FlagsOpW(cpu.J.J * imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // div a,x
    case Op_Div_A_X : // 0x64
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      DIVISOR_CHECK(cpu.I.x);    cpu.a = FlagsOpB(cpu.a / cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // div a,$00
    case Op_Div_A_Byte : // 0x65
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      DIVISOR_CHECK(imm);  cpu.a = FlagsOpB(cpu.a / imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // div i,j
    case Op_Div_I_J : // 0x66
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      DIVISOR_CHECK(cpu.J.J);    cpu.I.I = FlagsOpW(cpu.I.I / cpu.J.J);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // div i,$0000
    case Op_Div_I_Address : // 0x67
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      DIVISOR_CHECK(imm); cpu.I.I = FlagsOpW(cpu.I.I / imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // div j,$0000
    case Op_Div_J_Address : // 0x68
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      DIVISOR_CHECK(imm); cpu.J.J = FlagsOpW(cpu.J.J / imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mod a,x
    case Op_Mod_A_X : // 0x69
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      DIVISOR_CHECK(cpu.I.x);    cpu.a = FlagsOpB(cpu.a % cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mod a,$00
    case Op_Mod_A_Byte : // 0x6A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      DIVISOR_CHECK(imm);  cpu.a = FlagsOpB(cpu.a % imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mod i,j
    case Op_Mod_I_J : // 0x6B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      DIVISOR_CHECK(cpu.J.J);    cpu.I.I = FlagsOpW(cpu.I.I % cpu.J.J);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mod i,$0000
    case Op_Mod_I_Address : // 0x6C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      DIVISOR_CHECK(imm); cpu.I.I = FlagsOpW(cpu.I.I % imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // mod j,$0000
    case Op_Mod_J_Address : // 0x6D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      DIVISOR_CHECK(imm); cpu.J.J = FlagsOpW(cpu.J.J % imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // neg a
    case Op_Neg_A : // 0x6E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(-cpu.a);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // neg x
    case Op_Neg_X : // 0x6F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.x = FlagsOpB(-cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // inc a
    case Op_Inc_A : // 0x70
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a + 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // inc x
    case Op_Inc_X : // 0x71
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.x = FlagsOpB(cpu.I.x + 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // inc y
    case Op_Inc_Y : // 0x72
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.y = FlagsOpB(cpu.I.y + 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // inc z
    case Op_Inc_Z : // 0x73
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.z = FlagsOpB(cpu.J.z + 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // inc w
    case Op_Inc_W : // 0x74
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.w = FlagsOpB(cpu.J.w + 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // inc i
    case Op_Inc_I : // 0x75
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I + 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // inc j
    case Op_Inc_J : // 0x76
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.J = FlagsOpW(cpu.J.J + 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dec a
    case Op_Dec_A : // 0x77
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a - 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dec x
    case Op_Dec_X : // 0x78
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.x = FlagsOpB(cpu.I.x - 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dec y
    case Op_Dec_Y : // 0x79
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.y = FlagsOpB(cpu.I.y - 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dec z
    case Op_Dec_Z : // 0x7A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.z = FlagsOpB(cpu.J.z - 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dec w
    case Op_Dec_W : // 0x7B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.w = FlagsOpB(cpu.J.w - 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dec i
    case Op_Dec_I : // 0x7C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.I = FlagsOpW(cpu.I.I - 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dec j
    case Op_Dec_J : // 0x7D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.J = FlagsOpW(cpu.J.J - 1);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp a,x
    case Op_Cmp_A_X : // 0x7E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_CompareByte(cpu.a, cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp a,y
    case Op_Cmp_A_Y : // 0x7F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_CompareByte(cpu.a, cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp a,z
    case Op_Cmp_A_Z : // 0x80
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_CompareByte(cpu.a, cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp a,w
    case Op_Cmp_A_W : // 0x81
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_CompareByte(cpu.a, cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp a
    case Op_Cmp_A : // 0x82
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      FlagsOpB(cpu.a);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp x
    case Op_Cmp_X : // 0x83
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      FlagsOpB(cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp y
    case Op_Cmp_Y : // 0x84
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      FlagsOpB(cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp z
    case Op_Cmp_Z : // 0x85
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      FlagsOpB(cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp w
    case Op_Cmp_W : // 0x86
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      FlagsOpB(cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp i
    case Op_Cmp_I : // 0x87
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      FlagsOpW(cpu.I.I);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp j
    case Op_Cmp_J : // 0x88
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      FlagsOpW(cpu.J.J);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp x,$00
    case Op_Cmp_X_Byte : // 0x89
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareByte(cpu.I.x, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp y,$00
    case Op_Cmp_Y_Byte : // 0x8A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareByte(cpu.I.y, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp z,$00
    case Op_Cmp_Z_Byte : // 0x8B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareByte(cpu.J.z, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp w,$00
    case Op_Cmp_W_Byte : // 0x8C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareByte(cpu.J.w, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp a,$00
    case Op_Cmp_A_Byte : // 0x8D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareByte(cpu.a, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp i,j
    case Op_Cmp_I_J : // 0x8E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_CompareWord(cpu.I.I, cpu.J.J);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp i,$0000
    case Op_Cmp_I_Address : // 0x8F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_CompareWord(cpu.I.I, imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // cmp j,$0000
    case Op_Cmp_J_Address : // 0x90
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_CompareWord(cpu.J.J, imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // bit x,$00
    case Op_Bit_X_Byte : // 0x91
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareBit(cpu.I.x, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // bit y,$00
    case Op_Bit_Y_Byte : // 0x92
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareBit(cpu.I.y, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // bit z,$00
    case Op_Bit_Z_Byte : // 0x93
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareBit(cpu.J.z, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // bit w,$00
    case Op_Bit_W_Byte : // 0x94
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareBit(cpu.J.w, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // bit a,$00
    case Op_Bit_A_Byte : // 0x95
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_CompareBit(cpu.a, imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and a,x
    case Op_And_A_X : // 0x96
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a & cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and a,y
    case Op_And_A_Y : // 0x97
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a & cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and a,z
    case Op_And_A_Z : // 0x98
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a & cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and a,w
    case Op_And_A_W : // 0x99
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a & cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and x,$00
    case Op_And_X_Byte : // 0x9A
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.x = FlagsOpB(cpu.I.x & imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and y,$00
    case Op_And_Y_Byte : // 0x9B
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.y = FlagsOpB(cpu.I.y & imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and z,$00
    case Op_And_Z_Byte : // 0x9C
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.z = FlagsOpB(cpu.J.z & imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and w,$00
    case Op_And_W_Byte : // 0x9D
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.w = FlagsOpB(cpu.J.w & imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // and a,$00
    case Op_And_A_Byte : // 0x9E
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = FlagsOpB(cpu.a & imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or a,x
    case Op_Or_A_X : // 0x9F
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a | cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or a,y
    case Op_Or_A_Y : // 0xA0
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a | cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or a,z
    case Op_Or_A_Z : // 0xA1
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a | cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or a,w
    case Op_Or_A_W : // 0xA2
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a | cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or x,$00
    case Op_Or_X_Byte : // 0xA3
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.x = FlagsOpB(cpu.I.x | imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or y,$00
    case Op_Or_Y_Byte : // 0xA4
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.y = FlagsOpB(cpu.I.y | imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or z,$00
    case Op_Or_Z_Byte : // 0xA5
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.z = FlagsOpB(cpu.J.z | imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or w,$00
    case Op_Or_W_Byte : // 0xA6
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.w = FlagsOpB(cpu.J.w | imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // or a,$00
    case Op_Or_A_Byte : // 0xA7
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = FlagsOpB(cpu.a | imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor a,x
    case Op_Xor_A_X : // 0xA8
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a ^ cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor a,y
    case Op_Xor_A_Y : // 0xA9
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a ^ cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor a,z
    case Op_Xor_A_Z : // 0xAA
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a ^ cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor a,w
    case Op_Xor_A_W : // 0xAB
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(cpu.a ^ cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor x,$00
    case Op_Xor_X_Byte : // 0xAC
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.x = FlagsOpB(cpu.I.x ^ imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor y,$00
    case Op_Xor_Y_Byte : // 0xAD
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.I.y = FlagsOpB(cpu.I.y ^ imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor z,$00
    case Op_Xor_Z_Byte : // 0xAE
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.z = FlagsOpB(cpu.J.z ^ imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor w,$00
    case Op_Xor_W_Byte : // 0xAF
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.J.w = FlagsOpB(cpu.J.w ^ imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // xor a,$00
    case Op_Xor_A_Byte : // 0xB0
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = FlagsOpB(cpu.a ^ imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // not x
    case Op_Not_X : // 0xB1
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.x = FlagsOpB(~cpu.I.x);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // not y
    case Op_Not_Y : // 0xB2
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.I.y = FlagsOpB(~cpu.I.y);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // not z
    case Op_Not_Z : // 0xB3
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.z = FlagsOpB(~cpu.J.z);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // not w
    case Op_Not_W : // 0xB4
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.J.w = FlagsOpB(~cpu.J.w);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // not a
    case Op_Not_A : // 0xB5
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.a = FlagsOpB(~cpu.a);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // shl a,$00
    case Op_Shl_A_Byte : // 0xB6
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = FlagsOpB(cpu.a << imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // shr a,$00
    case Op_Shr_A_Byte : // 0xB7
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      cpu.a = FlagsOpB(cpu.a >> imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp $0000
    case Op_Jmp_Address : // 0xB8
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Always(imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp i
    case Op_Jmp_I : // 0xB9
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Jump_Always(cpu.I.I);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp j
    case Op_Jmp_J : // 0xBA
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Jump_Always(cpu.J.J);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp i,a
    case Op_Jmp_I_A : // 0xBB
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Jump_Always(cpu.I.I + cpu.a);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp j,a
    case Op_Jmp_J_A : // 0xBC
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Jump_Always(cpu.J.J + cpu.a);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp $0000,a
    case Op_Jmp_Address_A : // 0xBD
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Always(imm + cpu.a);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // rjmp $00
    case Op_Rjmp_Byte : // 0xBE
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_JumpRel_Always(imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmpt $0000,a
    case Op_Jmpt_Address_A : // 0xBF
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Branch(cpu.a, imm);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // callt $0000,a
    case Op_Callt_Address_A : // 0xC0
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Call_Branch(cpu.a, imm, 3);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp.eq $0000
    case Op_JmpEq_Address : // 0xC1
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Conditional(cpu.flags.bZero == 1, imm, 3);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // rjmp.eq $00
    case Op_RjmpEq_Byte : // 0xC2
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_JumpRel_Conditional(cpu.flags.bZero == 1, imm, 2);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp.neq $0000
    case Op_JmpNeq_Address : // 0xC3
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Conditional(cpu.flags.bZero == 0, imm, 3);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // rjmp.neq $00
    case Op_RjmpNeq_Byte : // 0xC4
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_JumpRel_Conditional(cpu.flags.bZero == 0, imm, 2);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp.gt $0000
    case Op_JmpGt_Address : // 0xC5
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Conditional(cpu.flags.bGreater == 1, imm, 3);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // rjmp.gt $00
    case Op_RjmpGt_Byte : // 0xC6
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_JumpRel_Conditional(cpu.flags.bGreater == 1, imm, 2);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp.lt $0000
    case Op_JmpLt_Address : // 0xC7
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Conditional(cpu.flags.bGreater == 0 && cpu.flags.bZero == 0, imm, 3);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // rjmp.lt $00
    case Op_RjmpLt_Byte : // 0xC8
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_JumpRel_Conditional(cpu.flags.bGreater == 0 && cpu.flags.bZero == 0, imm, 2);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp.z $0000
    case Op_JmpZ_Address : // 0xC9
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Conditional(cpu.flags.bZero == 1, imm, 3);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // rjmp.z $00
    case Op_RjmpZ_Byte : // 0xCA
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_JumpRel_Conditional(cpu.flags.bZero == 1, imm, 2);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp.nz $0000
    case Op_JmpNz_Address : // 0xCB
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Conditional(cpu.flags.bZero == 0, imm, 3);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // rjmp.nz $00
    case Op_RjmpNz_Byte : // 0xCC
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_JumpRel_Conditional(cpu.flags.bZero == 0, imm, 2);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // jmp.c $0000
    case Op_JmpC_Address : // 0xCD
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Jump_Conditional(cpu.flags.bCarry == 1, imm, 3);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // int $00
    case Op_Int_Byte : // 0xCE
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_Interrupt_Emit(imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // resume
    case Op_Resume : // 0xCF
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Interrupt_Resume();
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sec
    case Op_Sec : // 0xD0
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.flags.bCarry = 0;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // clc
    case Op_Clc : // 0xD1
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      cpu.flags.bCarry = 1;
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dbr $0000
    case Op_Dbr_Address : // 0xD2
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_Debug_Register(imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dba $00
    case Op_Dba_Byte : // 0xD3
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Debug_Address(imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dbb
    case Op_Dbb : // 0xD4
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Debug_Breakpoint();
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dbn $0000
    case Op_Dbn_Address : // 0xD5
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 3;
#endif
      Word imm = Mmu_GetWord(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.w = imm;
#endif
      Cpu_Debug_Note(imm);
      cpu.pc.w += 3;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // dbo $00
    case Op_Dbo_Byte : // 0xD6
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 2;
#endif
      Byte imm  = Mmu_Get(cpu.pc.w + 1);
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.operand.lo = imm;
#endif
      Cpu_Debug_Option(imm);
      cpu.pc.w += 2;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // sti
    case Op_Sti : // 0xD7
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Interrupt_SetEnabled(false);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // rti
    case Op_Rti : // 0xD8
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Interrupt_SetEnabled(true);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_D9 : // 0xD9
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_DA : // 0xDA
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_DB : // 0xDB
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_DC : // 0xDC
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_DD : // 0xDD
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_DE : // 0xDE
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_DF : // 0xDF
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E0 : // 0xE0
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E1 : // 0xE1
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E2 : // 0xE2
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E3 : // 0xE3
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E4 : // 0xE4
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E5 : // 0xE5
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E6 : // 0xE6
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E7 : // 0xE7
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E8 : // 0xE8
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_E9 : // 0xE9
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_EA : // 0xEA
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_EB : // 0xEB
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_EC : // 0xEC
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_ED : // 0xED
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_EE : // 0xEE
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_EF : // 0xEF
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F0 : // 0xF0
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F1 : // 0xF1
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F2 : // 0xF2
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F3 : // 0xF3
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F4 : // 0xF4
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F5 : // 0xF5
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F6 : // 0xF6
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F7 : // 0xF7
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F8 : // 0xF8
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_F9 : // 0xF9
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_FA : // 0xFA
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_FB : // 0xFB
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_FC : // 0xFC
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_FD : // 0xFD
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_FE : // 0xFE
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
    // nop
    case Op_Nop_FF : // 0xFF
    {
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      sDebugInstruction.length = 1;
#endif
      Cpu_Halt(HALT_UNKNOWN_OPCODE);
      cpu.pc.w += 1;
#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1
      Cpu_Debug_PushDebugInstruction();
#endif
    }
    break;
  }
}
