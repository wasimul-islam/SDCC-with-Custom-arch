;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module frexpf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
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
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +13
;pw2                       Allocated to stack - sp +17
;fl                        Allocated to stack - sp +1
;i                         Allocated to stack - sp +3
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../frexpf.c: 34: float frexpf(float x, int *pw2)
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_frexpf:
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
;	../frexpf.c: 39: fl.f=x;
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
;	../frexpf.c: 41: i  = ( fl.l >> 23) & 0x000000ff;
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
	sta	0x107,x
	lda	0x106,x
	sta	*(__TEMP+0)
	lda	0x107,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x107,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x108,x
	sta	0x109,x
	lda	0x106,x
	sta	*(__TEMP+0)
	lda	0x107,x
	tax
	lda	*(__TEMP+0)
	ldx	#0x00
;	../frexpf.c: 42: i -= 0x7e;
	sec
	sbc	#0x7e
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	#0x00
	txa
	sbc	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x106,x
;	../frexpf.c: 43: *pw2 = i;
	tsx
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x105,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x106,x
	iny
	sta	[__DPTR],y
;	../frexpf.c: 44: fl.l &= 0x807fffff; /* strip all exponent bits */
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	sta	0x105,x
	iny
	lda	[__DPTR],y
	sta	0x106,x
	iny
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108,x
	lda	0x107,x
	and	#0x7f
	sta	0x107,x
	lda	0x108,x
	and	#0x80
	sta	0x108,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	0x105,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x106,x
	iny
	sta	[__DPTR],y
	lda	0x107,x
	iny
	sta	[__DPTR],y
	lda	0x108,x
	iny
	sta	[__DPTR],y
;	../frexpf.c: 45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	lda	0x108,x
	ora	#0x3f
	sta	0x108,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	0x105,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x106,x
	iny
	sta	[__DPTR],y
	lda	0x107,x
	iny
	sta	[__DPTR],y
	lda	0x108,x
	iny
	sta	[__DPTR],y
;	../frexpf.c: 46: return(fl.f);
	inx
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
;	../frexpf.c: 47: }
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
