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
;Allocation info for local variables in function 'isgraph'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../isgraph.c: 33: int isgraph (int c)
;	-----------------------------------------
;	 function isgraph
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_isgraph:
	pha
;	../isgraph.c: 35: return (c > ' ' && c <= '~');
	sta	*(__TEMP+0)
	sta	*(__TEMP+1)
	lda	#0x20
	sec
	sbc	*(__TEMP+1)
	lda	#0x00
	stx	*(__TEMP+1)
	sbc	*(__TEMP+1)
	php
	lda	*(__TEMP+0)
	plp
	bvc	00111$
	bpl	00110$
	bmi	00103$
00111$:
	bpl	00103$
00110$:
	sta	*(__TEMP+0)
	lda	#0x7e
	sec
	sbc	*(__TEMP+0)
	lda	#0x00
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
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
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
