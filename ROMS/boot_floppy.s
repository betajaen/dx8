BeginJumpTable FloppyEventDispatcher
        JumpTable_Item Fn_OnFloppyNop
        JumpTable_Item Fn_OnFloppyInserted
        JumpTable_Item Fn_OnFloppyRemoved
        JumpTable_Item Fn_OnFloppySeek
        JumpTable_Item Fn_OnFloppyRead
        JumpTable_Item Fn_OnFloppyWrite
EndJumpTable

BeginJumpTable FloppyReadDispatcher
        JumpTable_Item Fn_OnFloppyReadHeaderTrack
        JumpTable_Item Fn_OnFloppyTrackInstructionPerformed
EndJumpTable

BeginJumpTable FloppyReadInstruction
        JumpTable_Item Fn_Floppy_Instruction_Nop
        JumpTable_Item Fn_Floppy_Instruction_ReadLowerTrackToAddress
        JumpTable_Item Fn_Floppy_Instruction_ReadUpperTrackToAddress
        JumpTable_Item Fn_Floppy_Instruction_End
EndJumpTable

BeginFunction OnFloppyNop
        dbn 'Fn'

        set a, $00
        store sFloppy_Msg, a
        nop
EndFunction

BeginFunction OnFloppyInserted
        dbn 'Fi'

        set a, $00
        store sFloppy_Msg, a

        set a, $01
        store sFloppy_HasDisk, a

        _putchar 0,17+0, 15, ' '
        _putchar 0,17+1, 15, ' '
        _putchar 0,17+2, 15, ' '
        _putchar 0,17+3, 15, ' '
        _putchar 0,17+4, 15, ' '
        _putchar 0,17+5, 15, ' '


        _putchar 0,17+0, 16, ' '
        _putchar 0,17+1, 16, ' '
        _putchar 0,17+2, 16, ' '
        _putchar 0,17+3, 16, ' '
        _putchar 0,17+4, 16, ' '
        _putchar 0,17+5, 16, ' '

        ; Setup modes
        _poke sFloppy_Mode,             $00     ; Current state (0 = Reading Header, 1 = Doing Instructions, 2 = Done)
        _poke.w sFloppy_Addr,           $FC00   ; Pointer to current track info
        _poke sFloppy_Track,            $00     ; Current track

        ; Copy sector#1 to $FC00
        _poke REG_FPY_OP_TRACK,         $00
        _poke.w REG_FPY_OP_ADDR,        $FC00
        _poke REG_FPY_OP,               $01
        int INT_FLOPPY_OP

EndFunction

BeginFunction OnFloppyRemoved
        dbn 'Fx'

        set a, $00
        store sFloppy_Msg, a

        set a, $00
        store sFloppy_HasDisk, a

        _putchar 0,17+0, 15, 'I'
        _putchar 0,17+1, 15, 'N'
        _putchar 0,17+2, 15, 'S'
        _putchar 0,17+3, 15, 'E'
        _putchar 0,17+4, 15, 'R'
        _putchar 0,17+5, 15, 'T'


        _putchar 0,17+0, 16, 'F'
        _putchar 0,17+1, 16, 'L'
        _putchar 0,17+2, 16, 'O'
        _putchar 0,17+3, 16, 'P'
        _putchar 0,17+4, 16, 'P'
        _putchar 0,17+5, 16, 'Y'
EndFunction

BeginFunction OnFloppySeek
        dbn 'Fs'

        set a, $00
        store sFloppy_Msg, a

        nop

EndFunction

BeginFunction OnFloppyRead
        dbn 'Fr'

        set a, $00
        store sFloppy_Msg, a

        load a, sFloppy_Mode
        bcall tFloppyReadDispatcher, a

EndFunction

BeginFunction OnFloppyWrite
        dbn 'Fw'

        set a, $00
        store sFloppy_Msg, a

        nop
EndFunction

; Have read the first track.
BeginFunction OnFloppyReadHeaderTrack
        dbn 'rH'

        ; We've read the header
        _poke sFloppy_Mode, $01

        ; Read the first instruction.
        _CallFunction HandleFloppyInstruction
EndFunction

;
BeginFunction OnFloppyTrackInstructionPerformed
        _CallFunction HandleFloppyInstruction
EndFunction

; Grab the instruction byte + Data
; then read the data into memory, or quit out.
BeginFunction HandleFloppyInstruction

    ; Grab instruction byte

    ; instruction = (Byte*) (*sFloppyAddr)
    ; ++sFloppy_Addr
    load i, sFloppy_Addr
    load a, i
    inc i
    store sFloppy_Addr, i

    bcall tFloppyReadInstruction, a
EndFunction

BeginFunction Floppy_Instruction_Nop
        dbn 'iN'
        nop
        _poke sFloppy_Mode, $03 ; Stop
EndFunction

BeginFunction Floppy_Instruction_ReadLowerTrackToAddress
        dbn 'iL'

        ; Copy dst to OP_ADDR
        load i, sFloppy_Addr
        load z, i
        inc i
        store REG_FPY_OP_ADDR, z
        dbr 'z'

        load z, i
        store REG_FPY_OP_ADDR+1, z
        dbr 'z'

        ; sFloppy_Addr += 2
        load i, sFloppy_Addr
        inc i
        inc i
        store sFloppy_Addr, i

        ; Increase track number and copy to OP_Track and Track
        load a, sFloppy_Track
        inc a
        store sFloppy_Track, a
        store REG_FPY_OP_TRACK, a

        ; Set to read operation
        set a, $01
        store REG_FPY_OP, a

        ; Perform Operation
        int INT_FLOPPY_OP
EndFunction

BeginFunction Floppy_Instruction_ReadUpperTrackToAddress
        dbn 'iU'

        ; @TODO
EndFunction

BootThunk:
  nop
  nop
  roffset $0800
BootThunkEnd:

ThunkLength = 5

BeginFunction Floppy_Instruction_End
        dbn 'iE'

        ; Mark mode as $02, done!
        _poke sFloppy_Mode, $03

        ; Set the origin, reset and boot into the program!

        printl "DefaultIvt=", DefaultIvt
        printl "Calc=", ($7800 - $800 + DefaultIvt)


        _poke.w         INTVEC_ADDR_HBLANK,     $7800 - $800 + DefaultIvt
        _poke.w         INTVEC_ADDR_VBLANK,     $7800 - $800 + DefaultIvt
        _poke.w         INTVEC_ADDR_FLOPPY,     $7800 - $800 + DefaultIvt
        _poke.w         INTVEC_ADDR_RESET,     $0800 - ThunkLength ;OnIvtReset

        ;offset $0800
        ;int $FF

        set MemCpySm_Dst, $0800 - ThunkLength
        set MemCpySm_Src, kProgramSpace + BootThunk
        set MemCpySm_Len, ThunkLength
        _CallFunction MemCpySm

        int $FF

EndFunction
