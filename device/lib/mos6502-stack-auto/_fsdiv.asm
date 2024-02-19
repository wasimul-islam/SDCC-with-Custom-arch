;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv
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
;Allocation info for local variables in function '__fsdiv_org'
;------------------------------------------------------------
;a1                        Allocated to stack - sp +50
;a2                        Allocated to stack - sp +54
;fl1                       Allocated to stack - sp +25
;fl2                       Allocated to stack - sp +21
;result                    Allocated to stack - sp +17
;mask                      Allocated to stack - sp +13
;mant1                     Allocated to stack - sp +9
;mant2                     Allocated to stack - sp +5
;exp                       Allocated to stack - sp +46
;sign                      Allocated to stack - sp +45
;diff                      Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +41
;sloc1                     Allocated to stack - sp +37
;sloc2                     Allocated to stack - sp +33
;sloc3                     Allocated to stack - sp +29
;------------------------------------------------------------
;	../_fsdiv.c: 274: static float __fsdiv_org (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv_org
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 47 bytes.
___fsdiv_org:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xd1
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_fsdiv.c: 283: fl1.f = a1;
	tsx
	txa
	clc
	adc	#0x19
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x132,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x133,x
	iny
	sta	[__DPTR],y
	lda	0x134,x
	iny
	sta	[__DPTR],y
	lda	0x135,x
	iny
	sta	[__DPTR],y
;	../_fsdiv.c: 285: exp = EXP (fl1.l);
	txa
	clc
	adc	#0x19
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x129,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x12a,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x12b,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x12c,x
	tsx
	lda	0x12b,x
	sta	*(__TEMP+0)
	lda	0x12c,x
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
	sta	0x12b,x
	pla
	sta	0x12a,x
	lda	0x12b,x
	pha
	lda	#0x00
	sta	0x12c,x
	lda	#0x00
	sta	0x12d,x
	pla
	lda	0x12a,x
	sta	0x12a,x
	lda	0x12b,x
	sta	0x12b,x
	lda	0x12a,x
	sta	0x12a,x
	lda	#0x00
	sta	0x12b,x
;	../_fsdiv.c: 287: if (!exp)
	lda	0x12a,x
	ora	0x12b,x
	bne	00102$
;	../_fsdiv.c: 288: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00118$
00102$:
;	../_fsdiv.c: 290: fl2.f = a2;
	tsx
	txa
	clc
	adc	#0x15
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x136,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x137,x
	iny
	sta	[__DPTR],y
	lda	0x138,x
	iny
	sta	[__DPTR],y
	lda	0x139,x
	iny
	sta	[__DPTR],y
;	../_fsdiv.c: 292: exp -= EXP (fl2.l);
	txa
	clc
	adc	#0x15
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x125,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x126,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x127,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x128,x
	tsx
	lda	0x127,x
	sta	*(__TEMP+0)
	lda	0x128,x
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
	sta	0x127,x
	pla
	sta	0x126,x
	lda	0x127,x
	pha
	lda	#0x00
	sta	0x128,x
	lda	#0x00
	sta	0x129,x
	pla
	lda	0x126,x
	sta	0x126,x
	lda	0x127,x
	sta	0x127,x
	lda	0x126,x
	sta	0x126,x
	lda	#0x00
	sta	0x127,x
	lda	0x12a,x
	sec
	sbc	0x126,x
	sta	0x12f,x
	lda	0x12b,x
	sbc	0x127,x
	sta	0x130,x
;	../_fsdiv.c: 293: exp += EXCESS;
	lda	0x12f,x
	clc
	adc	#0x7e
	sta	0x126,x
	lda	0x130,x
	adc	#0x00
	sta	0x127,x
;	../_fsdiv.c: 296: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	txa
	clc
	adc	#0x1a
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x129,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x12a,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x12b,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x12c,x
	tsx
	lda	0x12c,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x129,x
	pha
	lda	#0x00
	sta	0x12a,x
	lda	#0x00
	sta	0x12b,x
	lda	#0x00
	sta	0x12c,x
	pla
	lda	0x129,x
	and	#0x01
	sta	0x129,x
	txa
	clc
	adc	#0x15
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x121,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x122,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x123,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x124,x
	tsx
	lda	0x124,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x121,x
	pha
	lda	#0x00
	sta	0x122,x
	lda	#0x00
	sta	0x123,x
	lda	#0x00
	sta	0x124,x
	pla
	lda	0x121,x
	and	#0x01
	eor	0x129,x
	sta	0x12d,x
;	../_fsdiv.c: 299: mant1 = MANT (fl1.l);
	txa
	clc
	adc	#0x19
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x121,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x122,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x123,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x124,x
	tsx
	lda	#0x00
	sta	0x124,x
	lda	0x121,x
	sta	0x109,x
	lda	0x122,x
	sta	0x10a,x
	lda	0x123,x
	ora	#0x80
	sta	0x10b,x
	sta	*(__TEMP+0)
	lda	0x124,x
	tax
	lda	*(__TEMP+0)
	pha
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	pla
;	../_fsdiv.c: 300: mant2 = MANT (fl2.l);
	tsx
	txa
	clc
	adc	#0x15
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x121,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x122,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x123,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x124,x
	tsx
	lda	#0x00
	sta	0x124,x
	lda	0x123,x
	ora	#0x80
	sta	0x123,x
	lda	0x121,x
	sta	0x105,x
	lda	0x122,x
	sta	0x106,x
	lda	0x123,x
	sta	0x107,x
	lda	0x124,x
	sta	0x108,x
;	../_fsdiv.c: 303: if (mant1 < mant2)
	lda	0x109,x
	sec
	sbc	0x105,x
	lda	0x10a,x
	sbc	0x106,x
	lda	0x10b,x
	sbc	0x107,x
	lda	0x10c,x
	sbc	0x108,x
	bcs	00104$
;	../_fsdiv.c: 305: mask = 0x1000000;
	lda	#0x00
	sta	0x10d,x
	sta	0x10e,x
	sta	0x10f,x
	lda	#0x01
	sta	0x110,x
	jmp	00105$
00104$:
;	../_fsdiv.c: 309: mask = 0x0800000;
	tsx
	lda	#0x00
	sta	0x10d,x
	sta	0x10e,x
	sta	0x110,x
	lda	#0x80
	sta	0x10f,x
;	../_fsdiv.c: 310: exp++;
	lda	0x125,x
	clc
	adc	#0x01
	sta	0x125,x
	lda	0x126,x
	adc	#0x00
	sta	0x126,x
00105$:
;	../_fsdiv.c: 313: if (exp < 1) /* denormal */
	tsx
	lda	0x125,x
	sec
	sbc	#0x01
	lda	0x126,x
	sbc	#0x00
	bvc	00177$
	bpl	00176$
	bmi	00107$
00177$:
	bpl	00107$
00176$:
;	../_fsdiv.c: 314: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00118$
00107$:
;	../_fsdiv.c: 316: if (exp >= 255)
	tsx
	lda	0x125,x
	sec
	sbc	#0xff
	lda	0x126,x
	sbc	#0x00
	bvs	00180$
	bpl	00179$
	bmi	00116$
00180$:
	bpl	00116$
00179$:
;	../_fsdiv.c: 318: fl1.l = sign ? SIGNBIT | __INFINITY : __INFINITY;
	txa
	clc
	adc	#0x19
	sta	0x129,x
	lda	#0x01
	sta	0x12a,x
	lda	0x12d,x
	beq	00120$
	lda	#0x00
	sta	0x11d,x
	sta	0x11e,x
	lda	#0x80
	sta	0x11f,x
	lda	#0xff
	sta	0x120,x
	jmp	00121$
00120$:
	tsx
	lda	#0x00
	sta	0x11d,x
	sta	0x11e,x
	lda	#0x80
	sta	0x11f,x
	lda	#0x7f
	sta	0x120,x
00121$:
	tsx
	lda	0x129,x
	sta	*(__DPTR+0)
	lda	0x12a,x
	sta	*(__DPTR+1)
	lda	0x11d,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x11e,x
	iny
	sta	[__DPTR],y
	lda	0x11f,x
	iny
	sta	[__DPTR],y
	lda	0x120,x
	iny
	sta	[__DPTR],y
	jmp	00117$
00116$:
;	../_fsdiv.c: 323: result = 0;
	tsx
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
;	../_fsdiv.c: 324: do
00110$:
;	../_fsdiv.c: 326: long diff = mant1 - mant2;
	tsx
	lda	0x109,x
	sec
	sbc	0x121,x
	sta	0x11d,x
	lda	0x10a,x
	sbc	0x122,x
	sta	0x11e,x
	lda	0x10b,x
	sbc	0x123,x
	sta	0x11f,x
	lda	0x10c,x
	sbc	0x124,x
	sta	0x120,x
	lda	0x11d,x
	sta	0x101,x
	lda	0x11e,x
	sta	0x102,x
	lda	0x11f,x
	sta	0x103,x
	lda	0x120,x
;	../_fsdiv.c: 327: if (diff >= 0)
	sta	0x104, x
	sec
	sbc	#0x00
	bvs	00184$
	bpl	00183$
	bmi	00109$
00184$:
	bpl	00109$
00183$:
;	../_fsdiv.c: 329: mant1 = diff;
	lda	0x11d,x
	sta	0x109,x
	lda	0x11e,x
	sta	0x10a,x
	lda	0x11f,x
	sta	0x10b,x
	lda	0x120,x
	sta	0x10c,x
;	../_fsdiv.c: 330: result |= mask;
	lda	0x111,x
	ora	0x10d,x
	sta	0x111,x
	lda	0x112,x
	ora	0x10e,x
	sta	0x112,x
	lda	0x113,x
	ora	0x10f,x
	sta	0x113,x
	lda	0x114,x
	ora	0x110,x
	sta	0x114,x
00109$:
;	../_fsdiv.c: 332: mant1 <<= 1;
	tsx
	lda	0x109,x
	asl	a
	sta	0x109,x
	lda	0x10a,x
	rol	a
	sta	0x10a,x
	lda	0x10b,x
	rol	a
	sta	0x10b,x
	lda	0x10c,x
	rol	a
	sta	0x10c,x
;	../_fsdiv.c: 333: mask >>= 1;
	lda	0x110,x
	lsr	a
	sta	0x110,x
	lda	0x10f,x
	ror	a
	sta	0x10f,x
	lda	0x10e,x
	ror	a
	sta	0x10e,x
	lda	0x10d,x
	ror	a
	sta	0x10d,x
;	../_fsdiv.c: 335: while (mask);
	lda	0x110,x
	ora	0x10f,x
	ora	0x10e,x
	ora	0x10d,x
	beq	00186$
	jmp	00110$
00186$:
;	../_fsdiv.c: 338: if (mant1 >= mant2)
	lda	0x109,x
	sec
	sbc	0x105,x
	lda	0x10a,x
	sbc	0x106,x
	lda	0x10b,x
	sbc	0x107,x
	lda	0x10c,x
	sbc	0x108,x
	bcc	00114$
;	../_fsdiv.c: 339: result += 1;
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
	lda	0x113,x
	adc	#0x00
	sta	0x113,x
	lda	0x114,x
	adc	#0x00
	sta	0x114,x
00114$:
;	../_fsdiv.c: 341: result &= ~HIDDEN;
	tsx
	lda	0x113,x
	and	#0x7f
	sta	0x113,x
;	../_fsdiv.c: 344: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	txa
	clc
	adc	#0x19
	sta	0x11d,x
	lda	#0x01
	sta	0x11e,x
	lda	0x12d,x
	beq	00122$
	lda	#0x00
	sta	0x121,x
	sta	0x122,x
	sta	0x123,x
	lda	#0x80
	sta	0x124,x
	jmp	00123$
00122$:
	tsx
	lda	#0x00
	sta	0x121,x
	sta	0x122,x
	sta	0x123,x
	sta	0x124,x
00123$:
	tsx
	lda	0x125,x
	sta	0x125,x
	lda	0x126,x
	sta	0x126,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x127,x
	sta	0x128,x
	lda	0x125,x
	sta	*(__TEMP+0)
	lda	0x126,x
	tax
	lda	*(__TEMP+0)
	pha
	txa
	lsr	a
	tax
	pla
	ror	a
	tax
	lda	#0x00
	ror	a
	pha
	txa
	tsx
	sta	0x129,x
	pla
	sta	0x128,x
	lda	#0x00
	sta	0x126,x
	sta	0x127,x
	lda	0x122,x
	ora	0x126,x
	sta	0x122,x
	lda	0x123,x
	ora	0x127,x
	sta	0x123,x
	lda	0x124,x
	ora	0x128,x
	sta	0x124,x
	lda	0x125,x
	ora	0x129,x
	sta	0x125,x
	lda	0x122,x
	ora	0x112,x
	sta	0x122,x
	lda	0x123,x
	ora	0x113,x
	sta	0x123,x
	lda	0x124,x
	ora	0x114,x
	sta	0x124,x
	lda	0x125,x
	ora	0x115,x
	sta	0x125,x
	lda	0x11e,x
	sta	*(__DPTR+0)
	lda	0x11f,x
	sta	*(__DPTR+1)
	lda	0x122,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x123,x
	iny
	sta	[__DPTR],y
	lda	0x124,x
	iny
	sta	[__DPTR],y
	lda	0x125,x
	iny
	sta	[__DPTR],y
00117$:
;	../_fsdiv.c: 346: return (fl1.f);
	tsx
	txa
	clc
	adc	#0x19
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x11d,x
	iny
	lda	[__DPTR],y
	sta	0x11e,x
	iny
	lda	[__DPTR],y
	sta	0x11f,x
	iny
	lda	[__DPTR],y
	sta	0x120, x
	sta	*___SDCC_m6502_ret3
	lda	0x11f,x
	sta	*___SDCC_m6502_ret2
	lda	0x11e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x11d,x
	php
	ldx	*(__TEMP+0)
	plp
00118$:
;	../_fsdiv.c: 347: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x2f
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__fsdiv'
;------------------------------------------------------------
;a1                        Allocated to stack - sp +13
;a2                        Allocated to stack - sp +17
;p2                        Allocated to registers a x 
;f                         Allocated to stack - sp +1
;p                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../_fsdiv.c: 349: float __fsdiv (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
___fsdiv:
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
;	../_fsdiv.c: 351: unsigned long _AUTOMEM *p2 = (unsigned long *) &a2;
	tsx
	txa
	clc
	adc	#0x11
	ldx	#0x01
;	../_fsdiv.c: 353: if (EXP (*p2) == 0) // a2 is denormal or zero, treat as zero
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
	sta	0x108,x
	lda	0x107,x
	sta	*(__TEMP+0)
	lda	0x108,x
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
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x107,x
	pha
	lda	#0x00
	sta	0x108,x
	lda	#0x00
	sta	0x109,x
	pla
	lda	0x106,x
	beq	00124$
	jmp	00108$
00124$:
;	../_fsdiv.c: 356: unsigned long _AUTOMEM *p = (unsigned long *) &f;
	inx
	inx
	txa
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a,x
;	../_fsdiv.c: 357: if (a1 > 0.0f)
	lda	0x111, x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	#0x00
	pha
	pha
	pha
	pha
	jsr	___fslt
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	beq	00105$
;	../_fsdiv.c: 358: *p = __INFINITY;           // +inf
	tsx
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	lda	#0x80
	iny
	sta	[__DPTR],y
	lda	#0x7f
	iny
	sta	[__DPTR],y
	jmp	00106$
00105$:
;	../_fsdiv.c: 359: else if (a1 < 0.0f)
	lda	#0x00
	pha
	pha
	pha
	pha
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	___fslt
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	beq	00102$
;	../_fsdiv.c: 360: *p = SIGNBIT | __INFINITY; // -inf
	tsx
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	lda	#0x80
	iny
	sta	[__DPTR],y
	lda	#0xff
	iny
	sta	[__DPTR],y
	jmp	00106$
00102$:
;	../_fsdiv.c: 362: *p = __NAN;                // nan
	tsx
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	lda	#0xc0
	iny
	sta	[__DPTR],y
	lda	#0xff
	iny
	sta	[__DPTR],y
00106$:
;	../_fsdiv.c: 363: return f;
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
	jmp	00109$
00108$:
;	../_fsdiv.c: 365: return __fsdiv_org (a1, a2);
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	jsr	___fsdiv_org
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x108,x
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
00109$:
;	../_fsdiv.c: 366: }
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
