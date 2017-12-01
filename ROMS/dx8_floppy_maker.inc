; Floppy Maker
;
; Usage:::
;
;  1. Make a new file next to your source code name it 'name_fd.s'
;  2.Put the contents of the file as
;     include '../dx8_floppy_maker.inc'
;     MAKE_FLOPPY 'name.bin'
;     file 'name.s'
;     END_FLOPPY
;  3. Build it! So it becomes name_fd.bin
;  4. Put it in the DX8 directory so it can be loaded!

macro MAKE_FLOPPY NAME {

  ; Copy in file
  file NAME

  ; Work out file length
  SIZE = $

  ; Pad the rest of the tracks - 1
  kEndSize = 1024
  repeat (163840 - $ - kEndSize)
          db $00
  end repeat

  ; Number of tracks to read in
  NUM_TRACKS = (SIZE + 1024 - 1) / 1024;

  _PrintValue 'Number of Tracks is = 0x', NUM_TRACKS

  ; Destination in memory to copy the track into
  ENTRY_POINT = $800

  repeat NUM_TRACKS
      db $01          ; Copy
      dw ENTRY_POINT  ; Address
      ENTRY_POINT = ENTRY_POINT + 1024
  end repeat

  db $03     ; Load and Reset

  repeat (163840 - $)
          db $00     ; Padding
  end repeat


}
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
