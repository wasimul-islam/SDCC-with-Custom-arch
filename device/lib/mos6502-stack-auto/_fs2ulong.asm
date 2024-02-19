;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2ulong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
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
;Allocation info for local variables in function '__fs2ulong'
;------------------------------------------------------------
;a1                        Allocated to stack - sp +17
;fl1                       Allocated to stack - sp +5
;exp                       Allocated to stack - sp +13
;l                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../_fs2ulong.c: 104: __fs2ulong (float a1)
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
___fs2ulong:
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
;	../_fs2ulong.c: 110: fl1.f = a1;
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x111,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x112,x
	iny
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
	lda	0x114,x
	iny
	sta	[__DPTR],y
;	../_fs2ulong.c: 112: if (!fl1.l || SIGN(fl1.l))
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10a,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10c,x
	tsx
	lda	0x10c,x
	ora	0x10b,x
	ora	0x10a,x
	ora	0x109,x
	beq	00101$
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10a,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10c,x
	tsx
	lda	0x10c,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x109,x
	pha
	lda	#0x00
	sta	0x10a,x
	lda	#0x00
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
	pla
	lda	#0x01
	and	0x109,x
	beq	00102$
00101$:
;	../_fs2ulong.c: 113: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00109$
00102$:
;	../_fs2ulong.c: 115: exp = EXP (fl1.l) - EXCESS - 24;
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x109,x
	iny
	lda	[__DPTR],y
	sta	0x10a,x
	iny
	lda	[__DPTR],y
	sta	0x10b,x
	iny
	lda	[__DPTR],y
	sta	0x10c,x
	lda	0x10b,x
	sta	*(__TEMP+0)
	lda	0x10c,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a,x
	lda	0x10b,x
	pha
	lda	#0x00
	sta	0x10c,x
	lda	#0x00
	sta	0x10d,x
	pla
	lda	0x10a,x
	sta	*(__TEMP+0)
	lda	0x10b,x
	tax
	lda	*(__TEMP+0)
	ldx	#0x00
	sec
	sbc	#0x96
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	#0x00
	txa
	sbc	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
;	../_fs2ulong.c: 116: l = MANT (fl1.l);
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10a,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10c,x
	tsx
	lda	#0x00
	sta	0x10c,x
	lda	0x10b,x
	ora	#0x80
	sta	0x10b,x
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
;	../_fs2ulong.c: 118: if (exp > 8)
	lda	#0x08
	sec
	sbc	0x10d,x
	lda	#0x00
	sbc	0x10e,x
	bvc	00127$
	bpl	00126$
	bmi	00105$
00127$:
	bpl	00105$
00126$:
;	../_fs2ulong.c: 119: return 0xfffffffful;
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00109$
00105$:
;	../_fs2ulong.c: 121: if (exp < 0)
	tsx
	lda	0x10e,x
	sec
	sbc	#0x00
	bvc	00130$
	bpl	00129$
	bmi	00107$
00130$:
	bpl	00107$
00129$:
;	../_fs2ulong.c: 122: l >>= -exp;
	lda	0x10d,x
	eor	#0xff
	clc
	adc	#0x01
	tay
	beq	00108$
00132$:
	lda	0x104,x
	lsr	a
	sta	0x104,x
	lda	0x103,x
	ror	a
	sta	0x103,x
	lda	0x102,x
	ror	a
	sta	0x102,x
	lda	0x101,x
	ror	a
	sta	0x101,x
	dey
	bne	00132$
	jmp	00108$
00107$:
;	../_fs2ulong.c: 124: l <<= exp;
	tsx
	lda	0x10d,x
	tay
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
	cpy	#0x00
	beq	00135$
00134$:
	lda	0x101,x
	asl	a
	sta	0x101,x
	lda	0x102,x
	rol	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
	dey
	bne	00134$
00135$:
00108$:
;	../_fs2ulong.c: 126: return l;
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
00109$:
;	../_fs2ulong.c: 127: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
