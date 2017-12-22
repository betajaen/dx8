Rom equ $400


; =============================================================
; Opcode helpers
; =============================================================

macro _swap R0, R1 {
      push a
      cpy a, R1
      cpy R1, R0
      cpy R0, a
      pop a
}

macro _push_imm VAL {
      set a, VAL
      push a
}

macro _push i {
      push x
      push y
}

macro _pop i {
      pop y
      pop x
}

macro _rjmp x {
            addr = x - $
            if (addr < -128 | addr > 127)
                  Display 'Address exceeds relative range'
            end if
            rjmp addr
}

macro _rjmp.nz x {
            addr = x - $
            if (addr < -128 | addr > 127)
                  Display 'Address exceeds relative range'
            end if
            rjmp.nz addr
}

macro _rjmp.z x {
            addr = x - $
            if (addr < -128 | addr > 127)
                  Display 'Address exceeds relative range'
            end if
            rjmp.z addr
}

macro _rjmp.gt x {
            addr = x - $
            if (addr < -128 | addr > 127)
                  Display 'Address exceeds relative range'
            end if
            rjmp.gt addr
}

macro _rjmp.lt x {
            addr = x - $
            if (addr < -128 | addr > 127)
                  Display 'Address exceeds relative range'
            end if
            rjmp.lt addr
}

macro _poke addr, value {
      set a, value
      store addr, a
}

macro _poke.w addr, value {
      set i, value
      store addr, i
}

macro _load_indirect Reg, AddressContainingAddress {
      load x, AddressContainingAddress
      load y, AddressContainingAddress + 1
      load Reg, i
}

; =============================================================
;  Structures and Functions
; =============================================================


macro BeginFunction Name {
      Fn_#Name:
}

macro EndFunction {
      return
}

macro _CallFunction Name {
      call Fn_#Name
}

macro Const_Include Name, File {
      k#Name:
      include File
      k#Name#Length = $ - k#Name
}

macro Const_Byte Name, Value {
      k#Name:
      db Value
      k#Name#Length = $ - k#Name
}

macro Const_Bytes_Begin Name {
      k#Name:
}

macro Const_Bytes_End Name {}

macro Var_Byte Name, InitialValue {
      s#Name:
      db InitialValue
}

macro Var_Word Name, InitialValue {
      s#Name:
      dw InitialValue
}

macro Var_Bytes Name, Count {
      s#Name:
      repeat Count
            db $00
      end repeat
}

macro BeginJumpTable Name {
      t#Name:
}

macro JumpTable_Item Name {
      dw Name
}

macro EndJumpTable { }

macro Export_Function TT, NN, DOC {
      display 13, 10
      display ';! Function: '
      display `DOC
      display 13, 10
      display 'Import_Function '
      display `TT
      display ', '
      display `NN
      display ', $'

      bits = 16
      LL = Fn_#NN
      repeat bits/4
            d = '0' + LL shr (bits-%*4) and 0Fh
            if d > '9'
                  d = d + 'A'-'9'-1
            end if
            display d
      end repeat
      display 13,10
      display 13, 10
}

macro Export_Function_Arg FN, ARG, REG {
      display `FN
      display '_'
      display `ARG
      display ' equ '
      display `REG
      display 13, 10
}

macro Export_Const TT, NN, DOC {
      display 13, 10
      display ';! Constant: '
      display `DOC
      display 13, 10
      display 'Import_Const '
      display `TT
      display ', '
      display `NN
      display ', $'

      bits = 16
      LL = k#NN
      repeat bits/4
            d = '0' + LL shr (bits-%*4) and 0Fh
            if d > '9'
                  d = d + 'A'-'9'-1
            end if
            display d
      end repeat

      display 13,10
}

macro Begin_Exports {
      display '; Exports. Copy these to rom.exports.inc', 13,10
      display 'kRomSpace = $7000', 13, 10
}

macro End_Exports {
      display '; End', 13,10
}

macro Import_Function TT, NN, AA {
      Fn_#NN = kRomSpace + AA - kProgramSpace
}

macro Import_Const TT, NN, AA {
      k#NN = AA
}

; =============================================================
; Assembler Debug Macros
; =============================================================

macro _PrintValue TXT, LL {
            bits = 16
            display TXT
            repeat bits/4
                  d = '0' + LL shr (bits-%*4) and 0Fh
                  if d > '9'
                        d = d + 'A'-'9'-1
                  end if
                  display d
            end repeat
            display 13,10
}

; =============================================================
; MMU Helper Macros
; =============================================================

macro _mmu_map index, real, virtualBegin, virtualEnd {
      DST   = real / 512
      SRCl  = virtualBegin   / 512
      SRCu  = virtualEnd     / 512

      A0 = (REG_MMU_MAP0_DST + (index * 3) + 0)
      A1 = (REG_MMU_MAP0_DST + (index * 3) + 1)
      A2 = (REG_MMU_MAP0_DST + (index * 3) + 2)

      _poke    A0, DST
      _poke    A1, SRCl
      _poke    A2, SRCu

      ;_PrintValue "A0==", A0
      ;_PrintValue "A1==", A1
      ;_PrintValue "A2==", A2
      _PrintValue "DST=", DST
      _PrintValue "SRCl=", SRCl
      _PrintValue "SRCu=", SRCu
}

macro Import M, A {
      ltr_#M equ A
}

macro RomFunction M {
      set a, ltr_#M
      callt $400, a
}

macro Invoke T, N, [ARGS] {
      forward push ARGS
      push a, ltr_#M
      common callt T, a
}
