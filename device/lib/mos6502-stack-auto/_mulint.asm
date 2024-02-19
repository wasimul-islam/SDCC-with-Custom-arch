;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mulint
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulint
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
;Allocation info for local variables in function '_mulint'
;------------------------------------------------------------
;b                         Allocated to stack - sp +19
;a                         Allocated to stack - sp +15
;x                         Allocated to stack - sp +13
;y                         Allocated to stack - sp +11
;t                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +8
;sloc2                     Allocated to stack - sp +7
;sloc3                     Allocated to stack - sp +5
;sloc4                     Allocated to stack - sp +3
;------------------------------------------------------------
;	../_mulint.c: 232: _mulint (int a, int b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mulint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
__mulint:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_mulint.c: 244: x = (union uu *)&a;
	tsx
	txa
	clc
	adc	#0x0f
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x10f,x
	pla
	sta	0x10e,x
	lda	0x10f,x
;	../_mulint.c: 245: y = (union uu *)&b;
	txa
	clc
	adc	#0x14
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x10d,x
	pla
	sta	0x10c,x
	lda	0x10d,x
;	../_mulint.c: 249: t.t = (unsigned char)a * (unsigned char)b;
	inx
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
	lda	0x10e,x
	tay
	lda	0x112,x
	tax
	tya
	jsr	__muluchar
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../_mulint.c: 250: t.s.hi += ((unsigned char)a * y->s.hi) + (x->s.hi * (unsigned char)b);
	tsx
	inx
	txa
	sta	0x108,x
	tya
	sta	0x109,x
	lda	0x108,x
	sta	*(__DPTR+0)
	lda	0x109,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	sta	0x107,x
	lda	0x10e,x
	sta	0x106,x
	lda	0x10a,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x105,x
	lda	0x104,x
	sta	*(__DPTR+0)
	lda	0x105,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x107,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	tsx
	lda	0x10d,x
	sta	0x103,x
	lda	0x10e,x
	sta	0x104,x
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tay
	lda	0x113,x
	tax
	tya
	jsr	__muluchar
	tsx
	clc
	adc	0x105,x
	clc
	adc	0x108,x
	sta	*(__TEMP+0)
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x01
	sta	[__DPTR],y
;	../_mulint.c: 252: return t.t;
	inx
	txa
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
;	../_mulint.c: 253: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
