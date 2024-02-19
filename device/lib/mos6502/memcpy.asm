;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module memcpy
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _memcpy_PARM_3
	.globl _memcpy_PARM_2
	.globl _memcpy
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
_memcpy_PARM_2:
	.ds 2
_memcpy_PARM_3:
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
;Allocation info for local variables in function 'memcpy'
;------------------------------------------------------------
;src                       Allocated with name '_memcpy_PARM_2'
;n                         Allocated with name '_memcpy_PARM_3'
;dst                       Allocated to registers a x 
;------------------------------------------------------------
;	../memcpy.c: 35: void *memcpy (void *dst, const void *src, size_t n)
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memcpy:
;	../memcpy.c: 37: return __memcpy (dst, src, n);
	ldy	_memcpy_PARM_2
	sty	___memcpy_PARM_2
	ldy	(_memcpy_PARM_2 + 1)
	sty	(___memcpy_PARM_2 + 1)
	ldy	_memcpy_PARM_3
	sty	___memcpy_PARM_3
	ldy	(_memcpy_PARM_3 + 1)
	sty	(___memcpy_PARM_3 + 1)
;	../memcpy.c: 38: }
	jmp	___memcpy
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
