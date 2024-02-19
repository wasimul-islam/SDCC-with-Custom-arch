;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isgraph
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isgraph
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_isgraph_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_isgraph_c_65536_21:
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
;Allocation info for local variables in function 'isgraph'
;------------------------------------------------------------
;c                         Allocated with name '_isgraph_c_65536_21'
;sloc0                     Allocated with name '_isgraph_sloc0_1_0'
;------------------------------------------------------------
;	../isgraph.c: 33: int isgraph (int c)
;	-----------------------------------------
;	 function isgraph
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isgraph:
	sta	_isgraph_c_65536_21
	stx	(_isgraph_c_65536_21 + 1)
;	../isgraph.c: 35: return (c > ' ' && c <= '~');
	lda	#0x20
	sec
	sbc	_isgraph_c_65536_21
	lda	#0x00
	sbc	(_isgraph_c_65536_21 + 1)
	bvc	00111$
	bpl	00110$
	bmi	00103$
00111$:
	bpl	00103$
00110$:
	lda	#0x7e
	sec
	sbc	_isgraph_c_65536_21
	lda	#0x00
	sbc	(_isgraph_c_65536_21 + 1)
	bvc	00114$
	bpl	00113$
	bmi	00104$
00114$:
	bpl	00104$
00113$:
00103$:
	lda	#0x00
	jmp	00105$
00104$:
	lda	#0x01
00105$:
	ldx	#0x00
;	../isgraph.c: 36: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
