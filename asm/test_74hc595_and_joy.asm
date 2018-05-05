        .6502
        .include "core.inc"
        .org    0x2000
        .set    SI  =    2
        .set    PP  =    4
        .set    SW  =    4
        .set    P0  =    1
main:
        lda     #1
        sta     P0

        ldy     #0
loop_d:
        lda     digit, y
        ldx     #9
loop:
        sta     SI
        lsr
        dex
        bne     loop

        sta     PP


        ldx     #8

        lda     #0
        sta     P0
joy:
        lda     SW
        asl
        ror     KEY
        sta     SI
        dex
        bne     joy

        lda     #1
        sta     P0

        lda     KEY
        cmp     #0xFE
        bne     next
        jmp     MONITOR
next:
        jsr     THi2Hex
        jsr     PUTC
        lda     KEY
        jsr     TLo2Hex
        jsr     PUTC

        lda     #0
        sta     tmp
wait:
        dex
        bne     wait
        dec     tmp
        bne     wait

        iny
        cpy     #0x10
        bne     loop_d
        beq     main


THi2Hex:
        lsr                               ;#1
        lsr                               ;#1
        lsr                               ;#1
        lsr                               ;#1
        jsr     Tetr2Hex                  ;#3
        rts                               ;#1
TLo2Hex:
        and     #0x0F                     ;#2
        jsr     Tetr2Hex                  ;#3
        rts                               ;#1
Tetr2Hex:
        clc                     ;#1 carry=0
        adc     #'0'            ;#2 A + 0x30 + CARRY => A:(0..9,A..F) => A:(0x30..0x39,0x3A..0x3F)
        cmp     #'9'+1          ;#2 A + ~0x3A + 1 = A + C5 + 1 => A:(0x30..0x39,0x3A..0x3F) => A:(....,C..C)
        bcc     is_0_9          ; 2
        adc     #6              ; 2 c = 1
is_0_9:
        rts                     ; 1


digit:  DB      0x09, 0xEB, 0x13, 0x42, 0xE1, 0x45, 0x05, 0x6B, 0x01, 0x40, 0x21, 0x85, 0x1D, 0x83, 0x15, 0x35
KEY:    DB      0