;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divuchar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuchar
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
__divuchar_y_65536_1:
	.ds 1
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
;Allocation info for local variables in function '_divuchar'
;------------------------------------------------------------
;y                         Allocated with name '__divuchar_y_65536_1'
;x                         Allocated to registers a 
;------------------------------------------------------------
;	../_divuchar.c: 31: _divuchar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _divuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divuchar:
	stx	__divuchar_y_65536_1
;	../_divuchar.c: 33: return ((unsigned int)x / (unsigned int)y);
	ldx	#0x00
	ldy	__divuchar_y_65536_1
	sty	__divuint_PARM_2
	stx	(__divuint_PARM_2 + 1)
;	../_divuchar.c: 34: }
	jmp	__divuint
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
