;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong
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
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;a                         Allocated to stack - sp +26
;b                         Allocated to stack - sp +30
;t                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +22
;sloc1                     Allocated to stack - sp +20
;sloc2                     Allocated to stack - sp +18
;sloc3                     Allocated to stack - sp +17
;sloc4                     Allocated to stack - sp +15
;sloc5                     Allocated to stack - sp +13
;sloc6                     Allocated to stack - sp +9
;sloc7                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../_mullong.c: 743: _mullong (long a, long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 23 bytes.
__mullong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe9
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_mullong.c: 747: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	tsx
	inx
	txa
	sta	0x115,x
	lda	#0x01
	sta	0x116,x
	lda	0x115,x
	sta	0x113,x
	lda	0x116,x
	sta	0x114,x
	txa
	clc
	adc	#0x19
	sta	0x111,x
	lda	#0x01
	sta	0x112,x
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	txa
	clc
	adc	#0x1e
	sta	0x10f,x
	lda	#0x01
	sta	0x110,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x114,x
	sta	*(__DPTR+0)
	lda	0x115,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x02
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../_mullong.c: 748: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	tsx
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x116,x
	sta	*(__DPTR+0)
	lda	0x117,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../_mullong.c: 749: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	tsx
	inx
	txa
	sta	0x113,x
	tya
	sta	0x114,x
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	sta	0x110,x
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	[__DPTR],y
	tsx
	sta	0x116,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x116,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	tsx
	clc
	adc	0x111,x
	sta	0x111,x
	lda	0x114,x
	sta	*(__DPTR+0)
	lda	0x115,x
	sta	*(__DPTR+1)
	lda	0x111,x
	ldy	#0x03
	sta	[__DPTR],y
;	../_mullong.c: 750: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	tsx
	sta	0x116,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x116,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	tsx
	clc
	adc	0x111,x
	sta	*(__TEMP+0)
	lda	0x114,x
	sta	*(__DPTR+0)
	lda	0x115,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x03
	sta	[__DPTR],y
;	../_mullong.c: 751: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	inx
	txa
	sta	0x113,x
	lda	#0x01
	sta	0x114,x
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	sta	0x115,x
	iny
	lda	[__DPTR],y
	sta	0x116,x
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	tsx
	lda	0x116,x
	clc
	adc	0x10d,x
	sta	0x10d,x
	lda	0x117,x
	adc	0x10e,x
	sta	0x10e,x
	lda	0x114,x
	sta	*(__DPTR+0)
	lda	0x115,x
	sta	*(__DPTR+1)
	lda	0x10d,x
	ldy	#0x02
	sta	[__DPTR],y
	lda	0x10e,x
	iny
	sta	[__DPTR],y
;	../_mullong.c: 753: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	tsx
	lda	0x10d,x
	clc
	adc	0x116,x
	pha
	lda	0x10e,x
	adc	0x117,x
	tax
	pla
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x114,x
	sta	*(__DPTR+0)
	lda	0x115,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x02
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../_mullong.c: 755: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	tsx
	lda	0x112,x
	sta	0x10d,x
	lda	0x113,x
	sta	0x10e,x
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	sta	*(__TEMP+0)
	tsx
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x03
	sta	[__DPTR],y
;	../_mullong.c: 756: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	lda	0x112,x
	sta	0x10d,x
	lda	0x113,x
	sta	0x10e,x
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x01
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../_mullong.c: 758: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	tsx
	lda	0x10f,x
	sta	0x10d,x
	lda	0x110,x
	sta	0x10e,x
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	sta	*(__TEMP+0)
	tsx
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x03
	sta	[__DPTR],y
;	../_mullong.c: 759: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	lda	0x10f,x
	sta	0x10d,x
	lda	0x110,x
	sta	0x10e,x
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x01
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../_mullong.c: 761: bcast(b)->bi.b0 = 0;                                // B
	tsx
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../_mullong.c: 762: bcast(a)->bi.b0 = 0;                                // C
	tsx
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tya
	sta	[__DPTR],y
;	../_mullong.c: 763: t.l += a;
	tsx
	inx
	txa
	sta	0x10c,x
	lda	#0x01
	sta	0x10d,x
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	sta	0x108,x
	iny
	lda	[__DPTR],y
	sta	0x109,x
	iny
	lda	[__DPTR],y
	sta	0x10a,x
	iny
	lda	[__DPTR],y
	sta	0x10b,x
	lda	0x119,x
	sta	0x104,x
	lda	0x11a,x
	sta	0x105,x
	lda	0x11b,x
	sta	0x106,x
	lda	0x11c,x
	sta	0x107,x
	lda	0x108,x
	clc
	adc	0x104,x
	sta	0x104,x
	lda	0x109,x
	adc	0x105,x
	sta	0x105,x
	lda	0x10a,x
	adc	0x106,x
	sta	0x106,x
	lda	0x10b,x
	adc	0x107,x
	sta	0x107,x
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
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
;	../_mullong.c: 765: return t.l + b;
	lda	0x11d,x
	sta	0x108,x
	lda	0x11e,x
	sta	0x109,x
	lda	0x11f,x
	sta	0x10a,x
	lda	0x120,x
	sta	0x10b,x
	lda	0x104,x
	clc
	adc	0x108,x
	sta	0x104,x
	lda	0x105,x
	adc	0x109,x
	sta	0x105,x
	lda	0x106,x
	adc	0x10a,x
	sta	0x106,x
	lda	0x107,x
	adc	0x10b,x
	sta	0x107, x
	sta	*___SDCC_m6502_ret3
	lda	0x106,x
	sta	*___SDCC_m6502_ret2
	lda	0x105,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_mullong.c: 766: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x17
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
