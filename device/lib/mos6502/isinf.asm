;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isinf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isinf_PARM_1
	.globl _isinf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_isinf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_isinf_PARM_1:
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
;Allocation info for local variables in function 'isinf'
;------------------------------------------------------------
;f                         Allocated with name '_isinf_PARM_1'
;pl                        Allocated to registers 
;sloc0                     Allocated with name '_isinf_sloc0_1_0'
;------------------------------------------------------------
;	../isinf.c: 33: int isinf (float f)
;	-----------------------------------------
;	 function isinf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isinf:
;	../isinf.c: 35: unsigned long *pl = (unsigned long *) &f;
;	../isinf.c: 36: return *pl == 0x7f800000 || *pl == 0xff800000;
	lda	(_isinf_PARM_1 + 3)
	sta	*(_isinf_sloc0_1_0 + 3)
	lda	(_isinf_PARM_1 + 2)
	sta	*(_isinf_sloc0_1_0 + 2)
	lda	(_isinf_PARM_1 + 1)
	sta	*(_isinf_sloc0_1_0 + 1)
	lda	_isinf_PARM_1
	sta	*_isinf_sloc0_1_0
	cmp	#0x00
	bne	00115$
	lda	*(_isinf_sloc0_1_0 + 1)
	bne	00115$
	lda	*(_isinf_sloc0_1_0 + 2)
	cmp	#0x80
	bne	00115$
	lda	*(_isinf_sloc0_1_0 + 3)
	cmp	#0x7f
	beq	00104$
00115$:
	lda	*_isinf_sloc0_1_0
	bne	00119$
	lda	*(_isinf_sloc0_1_0 + 1)
	bne	00119$
	lda	*(_isinf_sloc0_1_0 + 2)
	cmp	#0x80
	bne	00119$
	lda	*(_isinf_sloc0_1_0 + 3)
	cmp	#0xff
	beq	00104$
00119$:
	lda	#0x00
	jmp	00105$
00104$:
	lda	#0x01
00105$:
	ldx	#0x00
;	../isinf.c: 37: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
