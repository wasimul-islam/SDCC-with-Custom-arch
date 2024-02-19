;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isupper
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isupper
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_isupper_sloc0_1_0:
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
;Allocation info for local variables in function 'isupper'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;sloc0                     Allocated with name '_isupper_sloc0_1_0'
;------------------------------------------------------------
;	./../../include/ctype.h: 78: inline int isupper (int c)
;	-----------------------------------------
;	 function isupper
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isupper:
;	./../../include/ctype.h: 80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	cmp	#0x41
	bcc	00103$
	cmp	#0x5a
	beq	00104$
	bcc	00104$
00103$:
	lda	#0x00
	jmp	00105$
00104$:
	lda	#0x01
00105$:
	ldx	#0x00
;	./../../include/ctype.h: 81: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
