        .include "boot.inc"

        .set    i2c_c0     =       0
        .set    i2c_c1     =       1
        .set    PA         =       2
        .set    DIRA       =       4
        .set    BOOT_CB    =       0xff47
        .set    tet2hex    =       0xffc1
	.set	rxbusy	   =       0xffe7	
        .set    MONITOR    =       0xff2c
        .set    OUTPUT     =       0xffce
        .set    HOOK       =       0xff44+1
        .set    PUTC       =       0xffdf

.macro Hi(addr)
        (addr>>8) & 0x00FF
.endm
.macro Lo(addr)
        addr & 0x00FF
.endm
.macro write(string)
        ldy     #(string & 0x00FF)      ; 2
        lda     #(string >> 8)          ; 2
        jsr     OUTPUT                  ; 3  output
.endm

