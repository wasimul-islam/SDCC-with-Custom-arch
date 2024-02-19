;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module toupper
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _toupper
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
;Allocation info for local variables in function 'toupper'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;__1310720001              Allocated to registers 
;__1310720002              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../toupper.c: 33: int toupper (int c)
;	-----------------------------------------
;	 function toupper
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_toupper:
	pha
;	./../../include/ctype.h: 71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	tay
	cpy	#0x61
	bcc	00104$
	cpy	#0x7a
	beq	00117$
	bcs	00104$
00117$:
;	../toupper.c: 35: return (islower (c) ? c + ('A' - 'a') : c);
	clc
	adc	#0xe0
	pha
	txa
	adc	#0xff
	tax
	pla
	jmp	00105$
00104$:
00105$:
;	../toupper.c: 36: }
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
