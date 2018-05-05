; read 1  - port busy UART transmitter TX
; read 0  - port busy UART resciver RX
; write 1 - port DATA UART transmitter TX-data
        .6502
        .include "boot.inc"
        .org    0xff00

.macro write(string)
        ldy     #(string & 0x00FF)      ; 2
        lda     #(string >> 8)          ; 2
        jsr     output                  ; 3
.endm
.macro ParserTo(variable)
        ldy     #(variable & 0x00FF)    ; #2  Y=low byte for ADDR
        sty     pVAR+0                  ; #2  change only low byte of word pVAR  
.endm
reset:
        cld
        ldx     #0                      ; 2
        stx     pVAR+1                  ; 2  high byte of word pVAR constant = 00
;----------------------------------------------------------------------------------
; reset menu hook
;----------------------------------------------------------------------------------
        lda     #(boot_jmp & 0x00FF)    ;#2
        sta     hook_cmd+1              ;#3
        lda     #0xFF                   ;#2
        sta     hook_cmd+2              ;#3
;----------------------------------------------------------------------------------
; CRC 8 calc for RAM 0xFF00..0xFFFF (#18)
;----------------------------------------------------------------------------------
crc:
;        lda     #0xFF                   ; #2
for_x:
        ldy     #8                      ; #2
        eor     0xFF00, x               ; #3     crc^pcBlock
for_y:
        lsr                             ; #1     crc <<= 1
        bcc     no_change               ; #2
        eor     #0x31                   ; #2     crc ^= 0x31
no_change:
        dey                             ; #1
        bne     for_y                   ; #2
        inx                             ; #1
        bne     for_x                   ; #2
;----------------------------------------------------------------------------------
; ERORR hook - exception from input strem erro simbol
;----------------------------------------------------------------------------------
error_hook:                             ; ERROR HOOK
        ldx     #0
        txs
        jsr     putc                    ; print CRC or ERROR symbol
; pVAR point to var
        stx     text+5                  ; #3  menu -> root (text[7]=0)
        ParserTo(ADDR)                  ; #4  parser pointer -> ADDR
main:
        write(text)                     ; #3   a, y - crashed
;==================================================================================
;  UART -> buffer, X=0
;==================================================================================
        tsx                             ; SP=0, 0 -> x
next_rx:
;        jsr     busy
ready_rx:
        lda     UART
        bpl     ready_rx
        and     #0x7F                   
        jsr     putc                    ;#3
        sta     <buffer, x
        inx
        cmp     #0x0D
        bne     next_rx
hook_cmd:
        jmp     boot_jmp                  ; call back 
boot_jmp:
        dex
        cpx     #1
        beq     chk_command               ; buffer len=1, then input one char - command
        jsr     pars_num                  ; #3
;==================================================================================
;  string parsed in to BYTE-numeric or WORD-numeric
;  check MODE, select procedure
;==================================================================================
        lda     text+5                    ; #3 0D,0A,-,-,>,MODE
        beq     main                      ; #2 if MODE == 0 then main else wr_byte
;==================================================================================
;  MODE ---- WRITE BYTE
;    BYTE-numeric write to ADDRESS, ADDRESS increment
;==================================================================================
wr_byte:
        tsx                               ;#1 x=0
        lda     value+1                   ;#2 load input and parsing byte
        sta     (ADDR, x)                 ;#2 store input byte to pointer *(var+x), x = 0
;----- pointer++  -----------------------------------------------------------------
        inc     ADDR+0
        bne     main                      ; (ADDR+0) != 0, then (ADDR+1) d'nt incremented
        inc     ADDR+1
;----------------------------------------------------------------------------------
        jmp     main
;==================================================================================
;  switch on COMMAND
;==================================================================================
chk_command:
        lda     <buffer                   ; #2 first char - command
        cmp     #'g'                      ; #2
        bne     is_store                  ; #2 command not recognition - repeat input
;==================================================================================
; case: COMMAND - 'g'  GOTO ADDR
;==================================================================================
        jmp     (ADDR)                    ; command 'g' - go ADDR
is_store:
        cmp     #'!'                      ; #2
        bne     is_dump                   ; #2
;==================================================================================
; case: COMMAND - '!'  STORE input byte
;==================================================================================
        sta     text+5                    ; #3  A='!' -> change menu mode to WRITE BYTE
        ParserTo(value)                   ; #4  parser pointer -> value
; change pVAR pointer to byte VALUE
;        ldy     #(value & 0x00FF)         ; #2  Y=low addr for value
;        sty     pVAR+0                    ; #2  change only low byte of word pVAR
is_dump:
        cmp     #'@'                      ; #2
        bne     main                      ; #2
;==================================================================================
;  case: COMMAND - '@' DUMP (dump 256 byte from [pVar])
;==================================================================================
        ldy     text+5                    ; #2    load mode
        bne     error_hook                ; #2    mode != 0, then stoped MODE WRITE BYTE
next_byte:                                  
        tya                               ; #1
        ldx     #' '                      ; #2
        and     #0x0F                     ; #2
        bne     no_wrap                   ; #2
        ldx     #CR                       ; #2  
no_wrap:
        txa                               ; #1
        jsr     putc                      ; #3

        lda     (ADDR), y                 ; #2
; HI tetrade output
        lsr                               ; #1
        lsr                               ; #1
        lsr                               ; #1
        lsr                               ; #1
        jsr     tetr2hex                  ; #3
; LO tetrade output
        lda     (ADDR), y                 ; #2
        and     #0x0F                     ; #2
        jsr     tetr2hex                  ; #3

        iny                               ; #1
        bne     next_byte                 ; #2
        beq     main                      ; #2
;==================================================================================
; set to *((pVAR) + y) << 2 ASCII from buffer
;  - buffer (address start buffer in zero page)
;  - register X point to position numeric in to input string
;==================================================================================
pars_num:
; valid data input (0x30..0x39, 0x41..0x46) and (0x30..0x39, 0x61..0x66)
;                   hi = 0011   hi = 0100        hi = 0011   hi = 0110  
        clc                     ; #1 carry=0
        lda     #0xC0           ; #2 buffer[x] + C0 : {'0'..'9'} => {0xF0..0xF9}, {'A'..'F'} => {0x11..0x16}, {'a'..'f'} => {0x31..0x36}
        adc     <buffer, x      ; #2
        bmi     set_var         ; #2 separeted num to set {negative,(0..9)} and {positive,(A/a..F/f)}
        adc     #0xF8           ; #2 num += (8 + carry) ({A/a..F/f} = {1..6}) => {10..15}
set_var:
        and     #0x0F           ; #2 clear hi tetrade
; dig3 -> *((pVAR)+1), dig2 -> OR *((pVAR)+1), dig1 -> *((pVAR)+0), dig0 -> OR *((pVAR)+0)
        pha                     ; #1
        txa                     ; #1 3,2,1,0
        lsr                     ; #1 A = 1,1,0,0 and CARRY = 1,0,1,0
        eor     #1              ; #2 0,0,1,1
        tay                     ; #1
        pla                     ; #1 A = hex Digit
        bcs     only_sto        ; #2
        asl                     ; #1
        asl                     ; #1
        asl                     ; #1
        asl                     ; #1
        ora     (pVAR), y       ; #2 mix from low tetrade
only_sto:
        sta     (pVAR), y       ; #2 
        dex                     ; #1
        bpl     pars_num        ; #2
        rts                     ; #1

tetr2hex:
        clc                     ;#1 carry=0
        adc     #'0'            ;#2 A + 0x30 + CARRY => A:(0..9,A..F) => A:(0x30..0x39,0x3A..0x3F)
        cmp     #'9'+1          ;#2 A + ~0x3A + 1 = A + C5 + 1 => A:(0x30..0x39,0x3A..0x3F) => A:(....,C..C)
        bcc     is_0_9          ; 2
        adc     #6              ; 2 c = 1
is_0_9:
        jsr     putc            ; 3
        rts                     ; 1

output:
        sta     ptr+1           ; #2
        sty     ptr+0           ; #2
        ldy     #0xFF           ; #2
putch:
        jsr     busy            ; #3
        iny                     ; #1
        lda     (ptr), y        ; #2
        sta     UART            ; #2
        bne     putch           ; #2
        rts                     ; #1

putc:
        jsr     busy
        jsr     busy
        sta     UART
busy:
        pha                     ;#1
loop_busy:
        lda     2               ;#2
        bmi     loop_busy       ;#2  2T
        pla                     ;#1  4T
        rts                     ;#1  6T       ==> need 16,8 uS = 21 T wait for busy down!
text:   DB      0x0D,0x0A,"-->",0,0
        .org    0xFFFC
        DW      0xFF00
        DW      0x55AA

;
;  Name  : CRC-8
;  Poly  : 0x31    x^8 + x^5 + x^4 + 1
;  Init  : 0xFF
;  Revert: false
;  XorOut: 0x00
;  Check : 0xF7 ("123456789")
;  MaxLen: 15 байт(127 бит) - обнаружение
;    одинарных, двойных, тройных и всех нечетных ошибок
;
;unsigned char Crc8(unsigned char *pcBlock, unsigned int len)
;{
;    unsigned char crc = 0xFF;
;    unsigned int i;
;
;    while (len--)
;    {
;        crc ^= *pcBlock++;
;
;        for (i = 0; i < 8; i++)
;            crc = crc & 0x80 ? (crc << 1) ^ 0x31 : crc << 1;
;    }
;
;    return crc;
;}        
        