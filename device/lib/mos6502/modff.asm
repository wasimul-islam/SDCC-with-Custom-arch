;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module modff
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _modff_PARM_2
	.globl _modff_PARM_1
	.globl _modff
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_modff_sloc0_1_0:
	.ds 2
_modff_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_modff_PARM_1:
	.ds 4
_modff_PARM_2:
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
;Allocation info for local variables in function 'modff'
;------------------------------------------------------------
;sloc0                     Allocated with name '_modff_sloc0_1_0'
;sloc1                     Allocated with name '_modff_sloc1_1_0'
;x                         Allocated with name '_modff_PARM_1'
;y                         Allocated with name '_modff_PARM_2'
;------------------------------------------------------------
;	../modff.c: 33: float modff(float x, float * y)
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_modff:
;	../modff.c: 35: *y=(long)x;
	lda	_modff_PARM_2
	sta	*_modff_sloc0_1_0
	lda	(_modff_PARM_2 + 1)
	sta	*(_modff_sloc0_1_0 + 1)
	lda	_modff_PARM_1
	sta	___fs2slong_PARM_1
	lda	(_modff_PARM_1 + 1)
	sta	(___fs2slong_PARM_1 + 1)
	lda	(_modff_PARM_1 + 2)
	sta	(___fs2slong_PARM_1 + 2)
	lda	(_modff_PARM_1 + 3)
	sta	(___fs2slong_PARM_1 + 3)
	jsr	___fs2slong
	sta	___slong2fs_PARM_1
	stx	(___slong2fs_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___slong2fs_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___slong2fs_PARM_1 + 3)
	jsr	___slong2fs
	sta	*_modff_sloc1_1_0
	stx	*(_modff_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_modff_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_modff_sloc1_1_0 + 3)
	lda	*_modff_sloc1_1_0
	ldy	#0x00
	sta	[*_modff_sloc0_1_0],y
	lda	*(_modff_sloc1_1_0 + 1)
	iny
	sta	[*_modff_sloc0_1_0],y
	lda	*(_modff_sloc1_1_0 + 2)
	iny
	sta	[*_modff_sloc0_1_0],y
	lda	*(_modff_sloc1_1_0 + 3)
	iny
	sta	[*_modff_sloc0_1_0],y
;	../modff.c: 36: return (x-*y);
	lda	_modff_PARM_1
	sta	___fssub_PARM_1
	lda	(_modff_PARM_1 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	(_modff_PARM_1 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	(_modff_PARM_1 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*_modff_sloc1_1_0
	sta	___fssub_PARM_2
	lda	*(_modff_sloc1_1_0 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	*(_modff_sloc1_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	*(_modff_sloc1_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
	jsr	___fssub
	sta	*_modff_sloc1_1_0
	stx	*(_modff_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_modff_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_modff_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_modff_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_modff_sloc1_1_0 + 1)
	lda	*_modff_sloc1_1_0
;	../modff.c: 37: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
