;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fssub
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fssub_PARM_2
	.globl ___fssub_PARM_1
	.globl ___fssub
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fssub_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fssub_PARM_1:
	.ds 4
___fssub_PARM_2:
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
;Allocation info for local variables in function '__fssub'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fssub_sloc0_1_0'
;a1                        Allocated with name '___fssub_PARM_1'
;a2                        Allocated with name '___fssub_PARM_2'
;neg                       Allocated with name '___fssub_neg_65536_21'
;------------------------------------------------------------
;	../_fssub.c: 73: float __fssub (float a1, float a2)
;	-----------------------------------------
;	 function __fssub
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fssub:
;	../_fssub.c: 75: float neg = -a1;
	lda	___fssub_PARM_1
	sta	___fsadd_PARM_1
	lda	(___fssub_PARM_1 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	(___fssub_PARM_1 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(___fssub_PARM_1 + 3)
	eor	#0x80
	sta	(___fsadd_PARM_1 + 3)
;	../_fssub.c: 76: return -(neg + a2);
	lda	___fssub_PARM_2
	sta	___fsadd_PARM_2
	lda	(___fssub_PARM_2 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	(___fssub_PARM_2 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(___fssub_PARM_2 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	*___fssub_sloc0_1_0
	stx	*(___fssub_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fssub_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fssub_sloc0_1_0 + 3)
	eor	#0x80
	sta	*(___fssub_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fssub_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fssub_sloc0_1_0 + 1)
	lda	*___fssub_sloc0_1_0
;	../_fssub.c: 77: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
