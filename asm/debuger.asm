        .6502
        .include "core.inc"
        .org    0x1000
main:
        write(hello)
        lda     #(break  & 0x00FF)
        sta     0xFFFE
        lda     #((break>>8) & 0x00FF)
        sta     0xFFFF
        lda     #(parser & 0x00FF)
        sta     HOOK+0
        lda     #((parser>>8) & 0x00FF)
        sta     HOOK+1
        jmp     MONITOR
;====================================================================================
;  Disassm Func
;====================================================================================
disasm_table:
        DB      C0&0xFF, C1&0xFF, C2&0xFF, C3&0xFF, C4&0xFF, C5&0xFF, C6&0xFF, C7&0xFF, C8&0xFF, C9&0xFF, CA&0xFF, CB&0xFF, CC&0xFF, CD&0xFF, CE&0xFF, CF&0xFF
C0:;******************************************************************************************************
; 0 - opcode column 
;******************************************************************************************************
        beq     _imm_                   ;#2
        cmp     #0x20                   ;#2
        beq     _abs_                   ;#2
        bvs     _imm_                   ;#2
        bne     _impl                   ;#2
C1:;******************************************************************************************************
; 1 - opcode column                          comand group indirect access to memory (adr, x); (adr), y
;******************************************************************************************************
        bvc     _ind_y
        ldx     #Lo(indx)
        rts
C4:;******************************************************************************************************
; 4 - opcode column                          
;******************************************************************************************************
        bvs     _zp_x
C5:;******************************************************************************************************
; 5 - opcode column                          
;******************************************************************************************************
        bvs     _zp_x
_zp_:
        ldx     #Lo(zp)
        rts
C6:;******************************************************************************************************
; 6 - opcode column                          
;******************************************************************************************************
        bvc     _zp_
        cmp     #0x90                   ;#2
        beq     _zp_y                   ;#2
        cmp     #0xB0                   ;#2
        bne     _zp_x                   ;#2  << 10 byte
C8:;******************************************************************************************************
CA:; 8, A - opcode column                          
;******************************************************************************************************
_impl:
        ldx     #Lo(unk+7)              ;#2 no text after mnenmonics
        rts
C9:;******************************************************************************************************
; 9 - opcode column                          
;******************************************************************************************************
        bvs     _abs_y
        bvc     _imm_
CC:;******************************************************************************************************
; C - opcode column                          
;******************************************************************************************************
        cmp     #0x60                   ;#2
        bne     CD                      ;#2
_imm_:
        ldx     #Lo(imm)                ;#2 no text after mnenmonics
        rts
CE:;******************************************************************************************************
; E - opcode column                          
;******************************************************************************************************
        cmp     #0xB0                   ;#2
        beq     _abs_y                  ;#2
CD:;******************** D - opcode 
        bvs     _abs_x
_abs_:
        ldx     #Lo(abs)                ;#2 no text after mnenmonics
        rts

_abs_x:
        ldx     #Lo(absx)               ;#2 no text after mnenmonics
        rts
_abs_y:
        ldx     #Lo(absy)               ;#2 no text after mnenmonics
        rts
_zp_y:
        ldx     #Lo(zpy)
        rts
_zp_x:
        ldx     #Lo(zpx)
        rts
_ind_y:
        ldx     #Lo(indy)
        rts
;----NOT ASM MNEMO
C2:
C3:
C7:
CB:
CF:
        lda     #Lo(unk)
        rts
;======================================================================
; operand from code[(EXEC)+y] convert hex, copy to shbllist|x
;======================================================================
oper2hex:
	inc	YEXEC                   ;#2
        lda     (EXEC), y		;#2
        jsr     THi2Hex                 ;#3
        sta     shblst & 0xFF00, x      ;#3
        inx                             ;#1
        lda     (EXEC), y               ;#2
        jsr     TLo2Hex                 ;#3
        sta     shblst & 0xFF00, x      ;#3
	inx                             ;#1
	rts

;====================================================================================
; entry 
;   EXEC - address execute point
;   save context monitor !!!
;====================================================================================
step:
;****************************************************************************************
; restore context
;--- stack restore
	ldy	#0
	sty	UBREAK_then
restore_st:	
	lda	0x0200, y
	sta	0x0100, y
	iny
	bne	restore_st

        ldx     RS
        txs

        lda     #Lo(pentry)               ;#2
        sta     pHexTo+0                  ;#2
        lda     #Hi(pentry)               ;#2
        sta     pHexTo+1                  ;#2

        ldy     #1                        ;#2
        lda     EXEC+1                    ;#2
	sta	go_step+2
        jsr     Bin2Hex                   ;#3
        lda     EXEC+0                    ;#2
	sta	go_step+1
        jsr     Bin2Hex                   ;#3 print address

        ldy     #0                      ;#2
        lda     (EXEC), y               ;#2 A = first byte of execute opcode
        ldy     #7                      ;#2
        jsr     Bin2Hex                 ;#3 print opcode

        pha
        and     #0x0F                   ;#2
        tax                             ;#1
        lda     disasm_table, x         ;#3
        sta     jmp_group+1             ;#3
        pla

	pha
;------------------------------------------------------------------------
; transfer instruction 3-char mnemo to text
        tax                             ;#1
        lda     decode, x               ;#3
	sta	JCODE                   ;#2
	bpl     pc_nc
	and     #0x7F
pc_nc:
	sta     tmp                     ;#2
	asl				;#1 *2 
	adc     tmp                     ;#1 *3
        tay                             ;#2 
        ldx     #2                      ;#2
mnemo_copy:
        lda     mnemo-1, y              ;#3
        sta     pentry+10, x            ;#3
        dex                             ;#1
        dey                             ;#1
        bne     mnemo_copy              ;#2
;------------------------------------------------------------------------
;parsing operand, address mode
;--- set call procedure for select operand mode
        pla
        and     #0xF0                   ;#2
        tax                             ;#1
        and     #0x10                   ;#2
        adc     #0x70                   ;#2 4bit -> V
        txa                             ;#1
;>>>  V - 4-bit opcode, A - high tetrade opcode
;<<<  X - offset to operand mode text string
jmp_group:
        jsr     C0                      ;#3
        stx     tmp                     ;#2

	ldy     #1                      ;#2
	sty	YEXEC                   ;#2
	ldy	#2
next_char:
        lda     shblst & 0xFF00, x
        beq     exit_0
        inx
        cmp     #'$'
	beq	_BB_
	cmp     #'&'
        bne     next_char
; copy byte -> hex to mnemo text
	jsr	oper2hex
_BB_:
	dey
	jsr	oper2hex
exit_0:
	lda     JCODE
	bpl	jmp_calc_exit
;------------------------------------------------------------------------------
; decode yexec=3 group 0 - jmp imm, jsr imm
;        yexec=2 group 1 - beq/bne/bcc/bcs/bvc/bvs/bpl/bmi offs
;        yexec=1 group 2 - rts/rti/brk
;        yexec=3 group 3 - jmp (abs)
	ldy	#1                      ;#2
	lda	(EXEC), y		;#2 low byte operand
; switch YEXEC
	ldx     YEXEC			;#2 breaking code[(EXEC)+YEXEC]
	cpx	#3                      ;#2
	beq	jmp_immediate           ;#2
	cpx	#2                      ;#2
	beq	jmp_offset              ;#2
;*****************************  return from stack  *****************************
	tsx
	pla
	tay
	iny
	sty	EXEC+0
	pla
	txs	
	jmp	jmp_imm_exit
jmp_offset:
;*****************************  condition branch  *****************************
; X=2 - offset to break code, A - offset to then label
; 2 way jmp - then and else
	ldx	#0
	lda	(EXEC), y		;#2 offset
	bpl	n0
	ldx	#0xFF
n0:
;----- calc address fo 'then'-way	
	clc
	adc	#2
	adc 	EXEC+0
	sta	THEN+0
	txa
	adc	EXEC+1
	sta	THEN+1
;----- set break in 'then'-way
	ldy	#0
	lda	(THEN), y
	sta	UBREAK_then
	lda	#0
	sta	(THEN), y
	jmp	jmp_calc_exit
;*****************************  jmp/jsr immediate  *****************************
; X=2 - offset to break code, A - low byte address goto
jmp_immediate:
	tax
	iny	
	lda     (EXEC), y               ;#2 hi
	stx     EXEC+0
jmp_imm_exit:
	sta	EXEC+1
	ldy	#0
	sty	YEXEC
jmp_calc_exit:
;---  set break in EXEC for cond.branch 'else'-way 
	ldy     YEXEC			;#2 breaking code[(EXEC)+YEXEC]
	lda	(EXEC), y		;#2 low byte operand
	sta	UBREAK			;#2 store code for recover after execution 
        lda     #0                      ;#2 A = BRK opcode = 00
        sta     (EXEC), y               ;#2 set BRK on place first byte opcode
;------------------------------------------------------------------------
; print debug string
        write(pentry)
        lda     #Hi(shblst)             ;#2
        ldy     tmp                     ;#2
        jsr     OUTPUT                  ;#3  output


        ldy     RY
        ldx     RX
        lda     RA
go_step:
        jmp     0


break:
;****************************************************************************************
; save context
        sta     RA
        stx     RX
        sty     RY
;--- stack save
	ldy	#0
save_st:	
	lda	0x0100, y
	sta	0x0200, y
	iny
	bne	save_st

;---- restore under code (way 'then') восстановим код в ветке THEN
	ldy	#0
	lda	UBREAK_then
	beq	no_then                 ;#2 any code, exclude zero - else way restore
	sta	(THEN), y
no_then:
;---- restore under EXEC code (way 'then') восстановим код под EXEC, она же ветка THEN
	ldy	YEXEC
        lda     UBREAK                  ;#2 A=breaking opcode
        sta     (EXEC), y               ;#2 restore first byte opcode

	ldx	#7
        pla                             ;#1 pop status
	sta	tmp
wrflg:
        lda	#'-'
	lsr     tmp
	bcc	fl0
	lda	FLAGS,	x
fl0:	sta     flg, x
	dex
	bpl	wrflg

	lda	#13
	jsr	PUTC        

	pla                             ;#1 pop low byte return
	tax				;#1
	pla                             ;#1
	tay                             ;#1

	lda	#'>'
	jsr	PUTC

	dex                             ;#1
	dex                             ;#1
	stx	EXEC+0                  ;#1
	bpl	nn0                     ;#2
	dey                             ;#1
nn0:                                    
	sty	EXEC+1                  ;#2

	tya
	jsr	puthex
	txa
	jsr	puthex

        tsx
        stx     RS

;        ldy     YEXEC                   ;#2 Y=yexec
;---- calculate next execution address EXEC += Y
;        tya                             ;#1
;        clc                             ;#1
;        adc     EXEC+0                  ;#2
;        sta     EXEC+0                  ;#2
;        bcc     no_carry                ;#2
;        inc     EXEC+1                  ;#2
no_carry:
;        lda     #0
;        sta     YEXEC
;------------------------------------------------------------------------------------
; output register values RA, RX, RY, S
;------------------------------------------------------------------------------------
prnreg:
        lda     #Lo(regs)               ;#2
        sta     pHexTo+0                ;#2
        lda     #Hi(regs)               ;#2
        sta     pHexTo+1                ;#2

        ldy     #13                     ;#2
        lda     RA                      ;#2
        jsr     Bin2Hex                 ;#3
        iny
        lda     RX
        jsr     Bin2Hex
        iny
        lda     RY
        jsr     Bin2Hex
        iny
        lda     RS
        jsr     Bin2Hex

        ldy     #13+3+3+3+3+9           ;#2
	tsx
	pla
	jsr	Bin2Hex
        iny
	pla
	jsr	Bin2Hex
        iny
	pla
	jsr	Bin2Hex
        iny
	pla
	jsr	Bin2Hex
        iny
	txs
	ldx	RX
        write(regs)
;------------------------------------------------------------------------------------
; restore monitor contex
        ldx     #0
        txs
;------------------------------------------------------------------------------------
        jsr     rxbusy
        jmp     MONITOR
;======================================================================================
; PARSER  Comand Line
;   d - debug, . - step, r - ???
;======================================================================================
parser:
        pha
        tya
        pha
        txa
        pha


        lda     <buffer                   ; #2 first char - command
        cmp     #'d'
        beq     debugmode
        cmp     #'.'
        bne     next_r
        jmp     step
next_r:
        cmp     #'r'                      ; #2
        bne     exit                      ; #2 command not recognition - return BOOT CALL BACK
        write(hookis)
exit:
        pla
        tax
        pla
        tay
        pla
        jmp     BOOT_CB        

debugmode:
        ldy     #0
        sty     YEXEC
        lda     ADDR+0
        sta     EXEC+0
        lda     ADDR+1
        sta     EXEC+1
        write(dbgon)
        jmp     exit

;======================================================================================
; Print byte to hex
;   A - byte
;======================================================================================
puthex:
	pha
	jsr	THi2Hex
	jsr	PUTC
	pla
	jsr	TLo2Hex
	jsr	PUTC
	rts
;======================================================================================
; pHexTo[Y] = Bin2Hex(A)
;   y - position from string pHexTo, y - changed (incremented)
;======================================================================================
Bin2Hex:
; HI tetrade output
        pha
        pha
	jsr	THi2Hex                   ;#3
        sta     (pHexTo), y               ;#2
        iny                               ;#1
; LO tetrade output
        pla                               ;#1
	jsr	TLo2Hex                   ;#3
        sta     (pHexTo), y               ;#2
        iny
        pla                               ;#1
        rts        

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
.align_bytes 16
        ;         0    1   2   3   4   5   6   7   8   9   A   B     C   D   E   F
decode: DB      0x38, 12, 00, 00, 00, 12, 16, 00, 34, 12, 16, 00, 0x00, 12, 16, 00  ; 00
        DB      0xA7, 12, 00, 00, 00, 12, 16, 00, 45, 12, 00, 00, 0x00, 12, 16, 00  ; 01
        DB      0xB4, 13, 00, 00, 15, 13, 18, 00, 35, 13, 18, 00, 0x0F, 13, 18, 00  ; 02
        DB      0xA8, 13, 00, 00, 00, 13, 18, 00, 46, 13, 00, 00, 0x00, 13, 18, 00  ; 03
        DB      0x36, 14, 00, 00, 00, 14, 17, 00, 32, 14, 17, 00, 0xA4, 14, 17, 00  ; 04
        DB      0xA9, 14, 00, 00, 00, 14, 17, 00, 47, 14, 00, 00, 0x00, 14, 17, 00  ; 05
        DB      0xB5, 11, 00, 00, 00, 11, 19, 00, 33, 11, 19, 00, 0xA4, 11, 19, 00  ; 06
        DB      0xAA, 11, 00, 00, 00, 11, 19, 00, 48, 11, 00, 00, 0x00, 11, 19, 00  ; 07
        DB      0x00, 20, 00, 00, 24, 20, 22, 00, 06, 00, 28, 00, 0x18, 20, 22, 00  ; 08
        DB      0xAB, 20, 00, 00, 24, 20, 22, 00, 26, 20, 30, 00, 0x00, 20, 00, 00  ; 09
        DB      0x19, 21, 00, 00, 25, 21, 23, 00, 27, 21, 29, 00, 0x19, 21, 23, 00  ; 0A
        DB      0xAC, 21, 00, 00, 25, 21, 23, 00, 51, 21, 31, 00, 0x19, 21, 23, 00  ; 0B
        DB      0x09, 07, 00, 00, 09, 07, 02, 00, 05, 07, 04, 00, 0x09, 07, 02, 00  ; 0C
        DB      0xA6, 07, 00, 00, 00, 07, 02, 00, 50, 07, 00, 00, 0x00, 07, 02, 00  ; 0D
        DB      0x08, 10, 00, 00, 08, 10, 01, 00, 03, 10, 55, 00, 0x08, 10, 01, 00  ; 0E
        DB      0xA5, 10, 00, 00, 00, 10, 01, 00, 49, 10, 00, 00, 0x00, 10, 01, 00  ; 0F
.align 16
shblst:
imm:    DB      "#$%%",0
indx:   DB      "($%%, x)",0
indy:   DB      "($%%), y",0
absx:   DB      "&%%%%, x",0
absy:   DB      "&%%%%, y",0
abs:    DB      "&%%%%",0
zp:     DB      "$%%",0
zpx:    DB      "$%%, x",0
zpy:    DB      "$%%, y",0
unk:    DB      "unknown",0

mnemo:  DB      "INCDECINXDEXINYDEY"                    ;0..5
        DB      "CMPCPXCPY"                             ;6..8
        DB      "SBCADCORAANDEORBITASLLSRROLROR"        ;9..18
        DB      "STALDASTXLDXSTYLDY"                    ;19..24
        DB      "TYATAYTXATAXTXSTSX"                    ;25..30
        DB      "PHAPLAPHPPLP"                          ;31..34
        DB      "JMPBEQBNEBPLBMIBVCBVSBCCBCS"           ;35..43
        DB      "CLCSECCLISEISEDCLDCLV"                 ;44..50
        DB      "JSRRTSRTINOPBRK"                       ;51..55  => 
;        name        len      operand       X  Y
; 1 absolute      -   3   16-bit address    3  3
; 1 absolute x    -   3   16-bit address    1  3
; 1 absolute y    -   3   16-bit address    3  2
; 2 zero page     -   2   8-bit address     3  3
; 2 zero page x   -   2   8-bit address     1  3
; 2 zero page y   -   2   8-bit address     3  2
; 2 (index, x)    -   2   8-bit address     1  3
; 2 (index), y    -   2   8-bit address     3  2
; 2 relative      -   2   8-bit offset      3  3
; 2 immediate     -   2   8-bit const       0  0
; 3 other             1                     3  3

hookis: DB      "<H>",0x0D,0
hello:  DB      0x0D,"set menu hook!",0
regs:   DB      0x0D," A, X, Y, S"
        DB      0x0D,"00 00 00 00 "
flg:	DB	"-------- .. .. .. .. ..",0
dbgon:  DB      0x0D,"dbgmode on",0
pentry: DB      0x0D,"0000  00 ### ",0
FLAGS:	DB	"NV-BDIZC"
;"CZIDB-VN"

t0:     .resb   1
t1:     .resb   1


