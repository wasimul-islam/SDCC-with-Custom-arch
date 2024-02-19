;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _sint2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___sint2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___sint2fs_sloc0_1_0:
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
;Allocation info for local variables in function '__sint2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___sint2fs_sloc0_1_0'
;si                        Allocated to registers a x 
;------------------------------------------------------------
;	../_sint2fs.c: 54: float __sint2fs (signed int si) {
;	-----------------------------------------
;	 function __sint2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___sint2fs:
;	../_sint2fs.c: 55: return __slong2fs(si);
	sta	___slong2fs_PARM_1
	stx	(___slong2fs_PARM_1 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(___slong2fs_PARM_1 + 2)
	sta	(___slong2fs_PARM_1 + 3)
	jsr	___slong2fs
	sta	*___sint2fs_sloc0_1_0
	stx	*(___sint2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___sint2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___sint2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___sint2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___sint2fs_sloc0_1_0 + 1)
	lda	*___sint2fs_sloc0_1_0
;	../_sint2fs.c: 56: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
