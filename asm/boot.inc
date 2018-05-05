        .set    CR              = 0x0D
        .set    UART            = 8

        .org    0x0010

buffer: 	.resb   40
pVAR:   	.resw   1                       ; pointer to ADDR or value
ptr:    	.resw   1
ADDR:   	.resw   1
value:  	.resb   1
QUANTS: 	.resw   1
S:      	.resb   1
M:      	.resb   1
H:      	.resb   1
RA:     	.resb   1
RX:     	.resb   1
RY:     	.resb   1
RS:		.resb	1
UBREAK: 	.resb   1
UBREAK_then:	.resb	1
EXEC:   	.resw   1
THEN:		.resw	1
YEXEC:  	.resb   1
JCODE:		.resb	1
pHexTo:		.resw	1			; pointer to hex-string for converter bin2hex
MON_X:		.resb	1
MON_S:		.resb	1
tmp:		.resb	1


