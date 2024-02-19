;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _uchar2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___uchar2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___uchar2fs_sloc0_1_0:
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
;Allocation info for local variables in function '__uchar2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___uchar2fs_sloc0_1_0'
;uc                        Allocated to registers a 
;------------------------------------------------------------
;	../_uchar2fs.c: 55: float __uchar2fs (unsigned char uc) {
;	-----------------------------------------
;	 function __uchar2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uchar2fs:
;	../_uchar2fs.c: 56: return __ulong2fs(uc);
	sta	___ulong2fs_PARM_1
	ldx	#0x00
	stx	(___ulong2fs_PARM_1 + 1)
	stx	(___ulong2fs_PARM_1 + 2)
	stx	(___ulong2fs_PARM_1 + 3)
	jsr	___ulong2fs
	sta	*___uchar2fs_sloc0_1_0
	stx	*(___uchar2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___uchar2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___uchar2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___uchar2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___uchar2fs_sloc0_1_0 + 1)
	lda	*___uchar2fs_sloc0_1_0
;	../_uchar2fs.c: 57: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
