;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module labs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _labs_PARM_1
	.globl _labs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_labs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_labs_PARM_1:
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
;Allocation info for local variables in function 'labs'
;------------------------------------------------------------
;j                         Allocated with name '_labs_PARM_1'
;sloc0                     Allocated with name '_labs_sloc0_1_0'
;------------------------------------------------------------
;	../labs.c: 63: long int labs(long int j)
;	-----------------------------------------
;	 function labs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_labs:
;	../labs.c: 65: return (j < 0) ? -j : j;
	lda	(_labs_PARM_1 + 3)
	sec
	sbc	#0x00
	bvc	00110$
	bpl	00109$
	bmi	00103$
00110$:
	bpl	00103$
00109$:
	lda	#0x00
	sec
	sbc	_labs_PARM_1
	sta	*_labs_sloc0_1_0
	lda	#0x00
	sbc	(_labs_PARM_1 + 1)
	sta	*(_labs_sloc0_1_0 + 1)
	lda	#0x00
	sbc	(_labs_PARM_1 + 2)
	sta	*(_labs_sloc0_1_0 + 2)
	lda	#0x00
	sbc	(_labs_PARM_1 + 3)
	sta	*(_labs_sloc0_1_0 + 3)
	jmp	00104$
00103$:
	lda	_labs_PARM_1
	sta	*_labs_sloc0_1_0
	lda	(_labs_PARM_1 + 1)
	sta	*(_labs_sloc0_1_0 + 1)
	lda	(_labs_PARM_1 + 2)
	sta	*(_labs_sloc0_1_0 + 2)
	lda	(_labs_PARM_1 + 3)
	sta	*(_labs_sloc0_1_0 + 3)
00104$:
	lda	*(_labs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_labs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_labs_sloc0_1_0 + 1)
	lda	*_labs_sloc0_1_0
;	../labs.c: 66: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
