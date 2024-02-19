;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _schar2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___schar2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___schar2fs_sloc0_1_0:
	.ds 4
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
;Allocation info for local variables in function '__schar2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___schar2fs_sloc0_1_0'
;sc                        Allocated to registers a 
;------------------------------------------------------------
;	../_schar2fs.c: 55: float __schar2fs (signed char sc) {
;	-----------------------------------------
;	 function __schar2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___schar2fs:
;	../_schar2fs.c: 56: return __slong2fs(sc);
	sta	___slong2fs_PARM_1
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(___slong2fs_PARM_1 + 1)
	sta	(___slong2fs_PARM_1 + 2)
	sta	(___slong2fs_PARM_1 + 3)
	jsr	___slong2fs
	sta	*___schar2fs_sloc0_1_0
	stx	*(___schar2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___schar2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___schar2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___schar2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___schar2fs_sloc0_1_0 + 1)
	lda	*___schar2fs_sloc0_1_0
;	../_schar2fs.c: 57: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
