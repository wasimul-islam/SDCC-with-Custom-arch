;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _moduchar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduchar
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
__moduchar_y_65536_1:
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
;Allocation info for local variables in function '_moduchar'
;------------------------------------------------------------
;y                         Allocated with name '__moduchar_y_65536_1'
;x                         Allocated to registers a 
;------------------------------------------------------------
;	../_moduchar.c: 30: _moduchar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _moduchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__moduchar:
	stx	__moduchar_y_65536_1
;	../_moduchar.c: 32: return ((unsigned int)x % (unsigned int)y);
	ldx	#0x00
	ldy	__moduchar_y_65536_1
	sty	__moduint_PARM_2
	stx	(__moduint_PARM_2 + 1)
;	../_moduchar.c: 33: }
	jmp	__moduint
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
