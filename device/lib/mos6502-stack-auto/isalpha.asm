;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isalpha
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalpha
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'isalpha'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;__1310720004              Allocated to registers 
;__1310720001              Allocated to registers 
;__1310720002              Allocated to registers 
;c                         Allocated to registers 
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../isalpha.c: 37: int isalpha (int c)
;	-----------------------------------------
;	 function isalpha
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_isalpha:
	pha
;	./../../include/ctype.h: 80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	cmp	#0x41
	bcc	00110$
	cmp	#0x5a
	beq	00106$
	bcc	00106$
00110$:
;	./../../include/ctype.h: 71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	cmp	#0x61
	bcc	00113$
	cmp	#0x7a
	beq	00106$
	bcc	00106$
00113$:
;	../isalpha.c: 39: return (isupper (c) || islower (c));
	lda	#0x00
	jmp	00107$
00106$:
	lda	#0x01
00107$:
	ldx	#0x00
;	../isalpha.c: 40: }
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
