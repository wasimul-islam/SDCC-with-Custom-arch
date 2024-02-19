;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _uint2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___uint2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___uint2fs_sloc0_1_0:
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
;Allocation info for local variables in function '__uint2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___uint2fs_sloc0_1_0'
;ui                        Allocated to registers a x 
;------------------------------------------------------------
;	../_uint2fs.c: 54: float __uint2fs (unsigned int ui) {
;	-----------------------------------------
;	 function __uint2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uint2fs:
;	../_uint2fs.c: 55: return __ulong2fs(ui);
	sta	___ulong2fs_PARM_1
	stx	(___ulong2fs_PARM_1 + 1)
	ldy	#0x00
	sty	(___ulong2fs_PARM_1 + 2)
	sty	(___ulong2fs_PARM_1 + 3)
	jsr	___ulong2fs
	sta	*___uint2fs_sloc0_1_0
	stx	*(___uint2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___uint2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___uint2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___uint2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___uint2fs_sloc0_1_0 + 1)
	lda	*___uint2fs_sloc0_1_0
;	../_uint2fs.c: 56: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
