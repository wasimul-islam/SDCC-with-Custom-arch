;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module tolower
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tolower
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_tolower_sloc0_1_0:
	.ds 1
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
;Allocation info for local variables in function 'tolower'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;__1310720001              Allocated to registers 
;__1310720002              Allocated to registers 
;c                         Allocated to registers 
;sloc0                     Allocated with name '_tolower_sloc0_1_0'
;------------------------------------------------------------
;	../tolower.c: 33: int tolower (int c)
;	-----------------------------------------
;	 function tolower
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_tolower:
;	./../../include/ctype.h: 80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	tay
	cpy	#0x41
	bcc	00104$
	cpy	#0x5a
	beq	00117$
	bcc	00117$
	rts
00117$:
;	../tolower.c: 35: return (isupper (c) ? c + ('a' - 'A') : c);
	clc
	adc	#0x20
	bcc	00105$
	inx
	rts
00104$:
00105$:
;	../tolower.c: 36: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
