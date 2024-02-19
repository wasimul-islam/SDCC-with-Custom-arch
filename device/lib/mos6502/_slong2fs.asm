;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _slong2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___slong2fs_PARM_1
	.globl ___slong2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___slong2fs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___slong2fs_PARM_1:
	.ds 4
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
;Allocation info for local variables in function '__slong2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___slong2fs_sloc0_1_0'
;sl                        Allocated with name '___slong2fs_PARM_1'
;------------------------------------------------------------
;	../_slong2fs.c: 79: float __slong2fs (signed long sl) {
;	-----------------------------------------
;	 function __slong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___slong2fs:
;	../_slong2fs.c: 80: if (sl<0) 
	lda	(___slong2fs_PARM_1 + 3)
	sec
	sbc	#0x00
	bvc	00111$
	bpl	00110$
	bmi	00102$
00111$:
	bpl	00102$
00110$:
;	../_slong2fs.c: 81: return -__ulong2fs(-sl);
	lda	#0x00
	sec
	sbc	___slong2fs_PARM_1
	sta	___ulong2fs_PARM_1
	lda	#0x00
	sbc	(___slong2fs_PARM_1 + 1)
	sta	(___ulong2fs_PARM_1 + 1)
	lda	#0x00
	sbc	(___slong2fs_PARM_1 + 2)
	sta	(___ulong2fs_PARM_1 + 2)
	lda	#0x00
	sbc	(___slong2fs_PARM_1 + 3)
	sta	(___ulong2fs_PARM_1 + 3)
	jsr	___ulong2fs
	sta	*___slong2fs_sloc0_1_0
	stx	*(___slong2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___slong2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___slong2fs_sloc0_1_0 + 3)
	eor	#0x80
	sta	*(___slong2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___slong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___slong2fs_sloc0_1_0 + 1)
	lda	*___slong2fs_sloc0_1_0
	rts
00102$:
;	../_slong2fs.c: 83: return __ulong2fs(sl);
	lda	___slong2fs_PARM_1
	sta	___ulong2fs_PARM_1
	lda	(___slong2fs_PARM_1 + 1)
	sta	(___ulong2fs_PARM_1 + 1)
	lda	(___slong2fs_PARM_1 + 2)
	sta	(___ulong2fs_PARM_1 + 2)
	lda	(___slong2fs_PARM_1 + 3)
	sta	(___ulong2fs_PARM_1 + 3)
	jsr	___ulong2fs
	sta	*___slong2fs_sloc0_1_0
	stx	*(___slong2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___slong2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___slong2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___slong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___slong2fs_sloc0_1_0 + 1)
	lda	*___slong2fs_sloc0_1_0
;	../_slong2fs.c: 84: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
