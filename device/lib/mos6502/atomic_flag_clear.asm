;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atomic_flag_clear
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atomic_flag_clear
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
_atomic_flag_clear_object_65536_3:
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
;Allocation info for local variables in function 'atomic_flag_clear'
;------------------------------------------------------------
;object                    Allocated with name '_atomic_flag_clear_object_65536_3'
;------------------------------------------------------------
;	../atomic_flag_clear.c: 31: void atomic_flag_clear(volatile atomic_flag *object)
;	-----------------------------------------
;	 function atomic_flag_clear
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atomic_flag_clear:
;	../atomic_flag_clear.c: 36: object->flag = 1;
	sta	_atomic_flag_clear_object_65536_3
	stx	(_atomic_flag_clear_object_65536_3 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x01
	ldy	#0x00
	sta	[__DPTR],y
;	../atomic_flag_clear.c: 40: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
