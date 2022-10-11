
; EEPROM Validation Bytes
  DB      055H, 0BBH              ; EEPROM Validation Bytes: CS4237B

  DB      001H                    ; EEPROM data length upper byte
  DB      01FH                    ; lower byte, Listed Size = 287

; Hardware Configuration Data
  DB      000H                    ; ACDbase Addr. Mask Length = 1 bytes
  DB      003H                    ; COMbase Addr. Mask Length = 4 bytes
  DB      002H                    ; MCB: SDD
  DB      084H                    ; GCB1: IFM SPS
  DB      00BH                    ; Family Byte 
  DB      020H                    ; RESERVED
  DB      004H                    ; RESERVED
  DB      008H                    ; RESERVED
  DB      010H                    ; RESERVED
  DB      080H                    ; RESERVED
  DB      000H                    ; RESERVED
  DB      000H                    ; GCB2: No Bits Set

; Hardware Mapping Data
  DB      000H                    ; 00=4/08=8 peripheral port size, XCTL0/XA2
  DB      048H                    ; RESERVED
  DB      075H                    ; IRQ selection A & B - B= 7,  A=5
  DB      0B9H                    ; IRQ selection C & D - D=11,  C=9
  DB      0FCH                    ; IRQ selection E & F - F=15,  E=12
  DB      010H                    ; DMA selection A & B - B= 1,  A=0
  DB      003H                    ; DMA selection C     -        C=3

; PnP Resource Header - PnP ID for CS4237B IC, OEM ID = 75
  DB      00EH, 063H, 075H, 037H, 0FFH,0FFH,0FFH,0FFH,072H  ; CSC7537 FFFFFFFF
  DB      00AH, 010H, 002H        ; PnP version 1.0, Vender version 0.2
  DB      082H, 008H, 000H, 'CS4237B', 000H ; ANSI ID

; LOGICAL DEVICE 0 (Windows Sound System & SBPro)
  DB      015H, 00EH, 063H, 000H, 000H, 000H ; EISA ID: CSC0000

  DB      082H, 007H, 000H, 'WSS/SB', 000H ; ANSI ID
  DB      031H, 000H              ; DF Best Choice
  DB      02AH, 002H, 028H        ; DMA: 1  - WSS & SBPro
  DB      02AH, 009H, 028H        ; DMA: 0,3  - WSS & SBPro capture
  DB      022H, 020H, 000H        ; IRQ: 5  Interrupt Select 0
  DB      047H, 001H, 034H, 005H, 034H, 005H, 004H, 004H ;16b WSSbase: 534
  DB      047H, 001H, 088H, 003H, 088H, 003H, 008H, 004H ;16b SYNbase: 388
  DB      047H, 001H, 020H, 002H, 020H, 002H, 020H, 010H ;16b SBbase: 220

  DB      031H, 001H              ; DF Acceptable Choice 1
  DB      02AH, 00AH, 028H        ; DMA: 1,3  - WSS & SBPro
  DB      02AH, 00BH, 028H        ; DMA: 0,1,3  - WSS & SBPro capture
  DB      022H, 0A0H, 09AH        ; IRQ: 5,7,9,11,12,15  Interrupt Select 0
  DB      047H, 001H, 034H, 005H, 0FCH, 00FH, 004H, 004H ;16b WSSbase: 534-FFC
  DB      047H, 001H, 088H, 003H, 088H, 003H, 008H, 004H ;16b SYNbase: 388
  DB      047H, 001H, 020H, 002H, 060H, 002H, 020H, 010H ;16b SBbase: 220-260

  DB      031H, 002H              ; DF Suboptimal Choice 1
  DB      02AH, 00BH, 028H        ; DMA: 0,1,3  - WSS & SBPro
  DB      022H, 0A0H, 09AH        ; IRQ: 5,7,9,11,12,15  Interrupt Select 0
  DB      047H, 001H, 034H, 005H, 0FCH, 00FH, 004H, 004H ;16b WSSbase: 534-FFC
  DB      047H, 001H, 088H, 003H, 0F8H, 003H, 008H, 004H ;16b SYNbase: 388-3F8
  DB      047H, 001H, 020H, 002H, 000H, 003H, 020H, 010H ;16b SBbase: 220-300

  DB      038H                    ; End of DF for Logical Device 0


; LOGICAL DEVICE 1 (Game Port)
  DB      015H, 00EH, 063H, 000H, 001H, 000H ; EISA ID: CSC0001

  DB      082H, 005H, 000H, 'GAME', 000H ; ANSI ID
  DB      031H, 000H              ; DF Best Choice
  DB      047H, 001H, 000H, 002H, 000H, 002H, 008H, 008H ;16b GAMEbase: 200

  DB      031H, 001H              ; DF Acceptable Choice 1
  DB      047H, 001H, 008H, 002H, 008H, 002H, 008H, 008H ;16b GAMEbase: 208

  DB      038H                    ; End of DF for Logical Device 1


; LOGICAL DEVICE 2 (Control)
  DB      015H, 00EH, 063H, 000H, 010H, 000H ; EISA ID: CSC0010

  DB      082H, 005H, 000H, 'CTRL', 000H ; ANSI ID
  DB      031H, 000H              ; DF Best Choice
  DB      047H, 001H, 038H, 005H, 038H, 005H, 008H, 008H ;16b CTRLbase: 538

  DB      031H, 001H              ; DF Acceptable Choice 1
  DB      047H, 001H, 020H, 001H, 0F8H, 00FH, 008H, 008H ;16b CTRLbase: 120-FF8

  DB      038H                    ; End of DF for Logical Device 2


; LOGICAL DEVICE 3 (MPU-401)
  DB      015H, 00EH, 063H, 000H, 003H, 000H ; EISA ID: CSC0003

  DB      082H, 008H, 000H, 'MPU-401', 000H ; ANSI ID
  DB      031H, 000H              ; DF Best Choice
  DB      022H, 000H, 002H        ; IRQ: 9  Interrupt Select 0
  DB      047H, 001H, 030H, 003H, 030H, 003H, 008H, 002H ;16b MPUbase: 330

  DB      031H, 001H              ; DF Acceptable Choice 1
  DB      022H, 000H, 09AH        ; IRQ: 9,11,12,15  Interrupt Select 0
  DB      047H, 001H, 000H, 003H, 060H, 003H, 008H, 002H ;16b MPUbase: 300-360

  DB      031H, 002H              ; DF Suboptimal Choice 1
  DB      047H, 001H, 030H, 003H, 0E0H, 003H, 008H, 002H ;16b MPUbase: 330-3E0

  DB      038H                    ; End of DF for Logical Device 3


  DB      079H, 0D8H              ; End of Resource Data, Checksum
