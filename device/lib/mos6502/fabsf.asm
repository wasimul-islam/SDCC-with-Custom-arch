;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module fabsf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
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
;Allocation info for local variables in function 'fabsf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +13
;fl                        Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../fabsf.c: 34: float fabsf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function fabsf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_fabsf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../fabsf.c: 38: fl.f = x;
	tsx
	inx
	txa
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x10d,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10e,x
	iny
	sta	[__DPTR],y
	lda	0x10f,x
	iny
	sta	[__DPTR],y
	lda	0x110,x
	iny
	sta	[__DPTR],y
;	../fabsf.c: 39: fl.l &= 0x7fffffff;
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
	lda	0x108,x
	sta	*(__DPTR+0)
	lda	0x109,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x104,x
	iny
	lda	[__DPTR],y
	sta	0x105,x
	iny
	lda	[__DPTR],y
	sta	0x106,x
	iny
	lda	[__DPTR],y
	sta	0x107, x
	and	#0x7f
	sta	0x107,x
	lda	0x108,x
	sta	*(__DPTR+0)
	lda	0x109,x
	sta	*(__DPTR+1)
	lda	0x104,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x105,x
	iny
	sta	[__DPTR],y
	lda	0x106,x
	iny
	sta	[__DPTR],y
	lda	0x107,x
	iny
	sta	[__DPTR],y
;	../fabsf.c: 40: return fl.f;
	txa
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x105,x
	iny
	lda	[__DPTR],y
	sta	0x106,x
	iny
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108, x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
;	../fabsf.c: 41: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
