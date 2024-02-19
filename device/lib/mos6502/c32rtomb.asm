;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c32rtomb
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _c32rtomb_PARM_3
	.globl _c32rtomb_PARM_2
	.globl _c32rtomb
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
_c32rtomb_PARM_2:
	.ds 4
_c32rtomb_PARM_3:
	.ds 2
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
;Allocation info for local variables in function 'c32rtomb'
;------------------------------------------------------------
;c32                       Allocated with name '_c32rtomb_PARM_2'
;ps                        Allocated with name '_c32rtomb_PARM_3'
;s                         Allocated to registers a x 
;------------------------------------------------------------
;	../c32rtomb.c: 33: size_t c32rtomb(char *restrict s, char32_t c32, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c32rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_c32rtomb:
;	../c32rtomb.c: 36: return(wctomb(s, c32));
	ldy	_c32rtomb_PARM_2
	sty	_wctomb_PARM_2
	ldy	(_c32rtomb_PARM_2 + 1)
	sty	(_wctomb_PARM_2 + 1)
	ldy	(_c32rtomb_PARM_2 + 2)
	sty	(_wctomb_PARM_2 + 2)
	ldy	(_c32rtomb_PARM_2 + 3)
	sty	(_wctomb_PARM_2 + 3)
;	../c32rtomb.c: 37: }
	jmp	_wctomb
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
