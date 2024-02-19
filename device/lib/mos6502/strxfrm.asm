;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strxfrm
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl _strncpy
	.globl _strxfrm_PARM_3
	.globl _strxfrm_PARM_2
	.globl _strxfrm
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
_strxfrm_PARM_2:
	.ds 2
_strxfrm_PARM_3:
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
;Allocation info for local variables in function 'strxfrm'
;------------------------------------------------------------
;src                       Allocated with name '_strxfrm_PARM_2'
;n                         Allocated with name '_strxfrm_PARM_3'
;dest                      Allocated to registers a x 
;------------------------------------------------------------
;	../strxfrm.c: 31: size_t strxfrm(char *dest, const char *src, size_t n)
;	-----------------------------------------
;	 function strxfrm
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strxfrm:
;	../strxfrm.c: 33: strncpy(dest, src, n);
	ldy	_strxfrm_PARM_2
	sty	_strncpy_PARM_2
	ldy	(_strxfrm_PARM_2 + 1)
	sty	(_strncpy_PARM_2 + 1)
	ldy	_strxfrm_PARM_3
	sty	_strncpy_PARM_3
	ldy	(_strxfrm_PARM_3 + 1)
	sty	(_strncpy_PARM_3 + 1)
	jsr	_strncpy
;	../strxfrm.c: 34: return(strlen(src) + 1);
	ldx	(_strxfrm_PARM_2 + 1)
	lda	_strxfrm_PARM_2
	jsr	_strlen
	clc
	adc	#0x01
	bcc	00103$
	inx
00103$:
;	../strxfrm.c: 35: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
