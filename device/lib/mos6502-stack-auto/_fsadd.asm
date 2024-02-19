;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd
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
;Allocation info for local variables in function '__fsadd'
;------------------------------------------------------------
;a1                        Allocated to stack - sp +35
;a2                        Allocated to stack - sp +39
;mant1                     Allocated to stack - sp +5
;mant2                     Allocated to stack - sp +1
;pfl1                      Allocated to stack - sp +31
;pfl2                      Allocated to registers a x 
;exp1                      Allocated to stack - sp +29
;exp2                      Allocated to stack - sp +27
;expd                      Allocated to stack - sp +25
;sign                      Allocated to registers y 
;sloc0                     Allocated to stack - sp +21
;sloc1                     Allocated to stack - sp +17
;sloc2                     Allocated to stack - sp +13
;sloc3                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../_fsadd.c: 170: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 32 bytes.
___fsadd:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe0
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_fsadd.c: 178: pfl2 = (long _AUTOMEM *)&a2;
	tsx
	txa
	clc
	adc	#0x27
	ldx	#0x01
;	../_fsadd.c: 179: exp2 = EXP (*pfl2);
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x115,x
	iny
	lda	[__DPTR],y
	sta	0x116,x
	iny
	lda	[__DPTR],y
	sta	0x117,x
	iny
	lda	[__DPTR],y
	sta	0x118,x
	lda	0x115,x
	sta	0x111,x
	lda	0x116,x
	sta	0x112,x
	lda	0x117,x
	sta	0x113,x
	lda	0x118,x
	sta	0x114,x
	lda	0x113,x
	sta	*(__TEMP+0)
	lda	0x114,x
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
	sta	0x10f,x
	pla
	sta	0x10e,x
	lda	0x10f,x
	pha
	lda	#0x00
	sta	0x110,x
	lda	#0x00
	sta	0x111,x
	pla
	lda	0x10e,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10f,x
	lda	0x10e,x
	sta	0x11c,x
	lda	#0x00
	sta	0x11d,x
;	../_fsadd.c: 180: mant2 = MANT (*pfl2) << 4;
	lda	0x116,x
	sta	0x10e,x
	lda	0x117,x
	sta	0x10f,x
	lda	0x118,x
	sta	0x110,x
	lda	#0x00
	sta	0x111,x
	lda	0x110,x
	ora	#0x80
	sta	0x110,x
	lda	0x10e,x
	asl	a
	sta	0x10e,x
	lda	0x10f,x
	rol	a
	sta	0x10f,x
	lda	0x110,x
	rol	a
	sta	0x110,x
	lda	0x111,x
	rol	a
	sta	0x111,x
	lda	0x10e,x
	asl	a
	sta	0x10e,x
	lda	0x10f,x
	rol	a
	sta	0x10f,x
	lda	0x110,x
	rol	a
	sta	0x110,x
	lda	0x111,x
	rol	a
	sta	0x111,x
	lda	0x10e,x
	asl	a
	sta	0x10e,x
	lda	0x10f,x
	rol	a
	sta	0x10f,x
	lda	0x110,x
	rol	a
	sta	0x110,x
	lda	0x111,x
	rol	a
	sta	0x111,x
	lda	0x10e,x
	asl	a
	sta	0x10e,x
	lda	0x10f,x
	rol	a
	sta	0x10f,x
	lda	0x110,x
	rol	a
	sta	0x110,x
	lda	0x111,x
	rol	a
	sta	0x111,x
	lda	0x10e,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x103,x
	lda	0x110,x
	sta	0x104,x
	lda	0x111,x
	sta	0x105,x
;	../_fsadd.c: 181: if (SIGN (*pfl2))
	lda	0x115,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x112,x
	pha
	lda	#0x00
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
	lda	#0x00
	sta	0x115,x
	pla
	lda	#0x01
	and	0x112,x
	beq	00102$
;	../_fsadd.c: 182: mant2 = -mant2;
	lda	#0x00
	sec
	sbc	0x10e,x
	sta	0x102,x
	lda	#0x00
	sbc	0x10f,x
	sta	0x103,x
	lda	#0x00
	sbc	0x110,x
	sta	0x104,x
	lda	#0x00
	sbc	0x111,x
	sta	0x105,x
00102$:
;	../_fsadd.c: 184: if (!*pfl2)
	tsx
	lda	0x118,x
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
	bne	00104$
;	../_fsadd.c: 185: return (a1);
	lda	0x126,x
	sta	*___SDCC_m6502_ret3
	lda	0x125,x
	sta	*___SDCC_m6502_ret2
	lda	0x124,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x123,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00137$
00104$:
;	../_fsadd.c: 187: pfl1 = (long _AUTOMEM *)&a1;
	tsx
	txa
	clc
	adc	#0x23
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x121,x
	pla
;	../_fsadd.c: 188: exp1 = EXP (*pfl1);
	sta	0x120, x
	sta	*(__DPTR+0)
	lda	0x121,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x10e,x
	iny
	lda	[__DPTR],y
	sta	0x10f,x
	iny
	lda	[__DPTR],y
	sta	0x110,x
	iny
	lda	[__DPTR],y
	sta	0x111,x
	lda	0x10e,x
	sta	0x112,x
	lda	0x10f,x
	sta	0x113,x
	lda	0x110,x
	sta	0x114,x
	lda	0x111,x
	sta	0x115,x
	lda	0x114,x
	sta	*(__TEMP+0)
	lda	0x115,x
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
	sta	0x117,x
	pla
	sta	0x116,x
	lda	0x117,x
	pha
	lda	#0x00
	sta	0x118,x
	lda	#0x00
	sta	0x119,x
	pla
	lda	0x116,x
	sta	0x116,x
	lda	0x117,x
	sta	0x117,x
	lda	0x116,x
	sta	0x116,x
	lda	#0x00
	sta	0x117,x
;	../_fsadd.c: 189: mant1 = MANT (*pfl1) << 4;
	lda	0x10e,x
	sta	0x10a,x
	lda	0x10f,x
	sta	0x10b,x
	lda	0x110,x
	sta	0x10c,x
	lda	#0x00
	sta	0x10d,x
	lda	0x10c,x
	ora	#0x80
	sta	0x10c,x
	lda	0x10a,x
	asl	a
	sta	0x10a,x
	lda	0x10b,x
	rol	a
	sta	0x10b,x
	lda	0x10c,x
	rol	a
	sta	0x10c,x
	lda	0x10d,x
	rol	a
	sta	0x10d,x
	lda	0x10a,x
	asl	a
	sta	0x10a,x
	lda	0x10b,x
	rol	a
	sta	0x10b,x
	lda	0x10c,x
	rol	a
	sta	0x10c,x
	lda	0x10d,x
	rol	a
	sta	0x10d,x
	lda	0x10a,x
	asl	a
	sta	0x10a,x
	lda	0x10b,x
	rol	a
	sta	0x10b,x
	lda	0x10c,x
	rol	a
	sta	0x10c,x
	lda	0x10d,x
	rol	a
	sta	0x10d,x
	lda	0x10a,x
	asl	a
	sta	0x10a,x
	lda	0x10b,x
	rol	a
	sta	0x10b,x
	lda	0x10c,x
	rol	a
	sta	0x10c,x
	lda	0x10d,x
	rol	a
	sta	0x10d,x
	lda	0x10a,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x107,x
	lda	0x10c,x
	sta	0x108,x
	lda	0x10d,x
	sta	0x109,x
;	../_fsadd.c: 190: if (SIGN(*pfl1))
	lda	0x115,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x112,x
	pha
	lda	#0x00
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
	lda	#0x00
	sta	0x115,x
	pla
	lda	#0x01
	and	0x112,x
	beq	00108$
;	../_fsadd.c: 191: if (*pfl1 & 0x80000000)
	lda	#0x80
	and	0x111,x
	beq	00108$
;	../_fsadd.c: 192: mant1 = -mant1;
	lda	#0x00
	sec
	sbc	0x10a,x
	sta	0x106,x
	lda	#0x00
	sbc	0x10b,x
	sta	0x107,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x108,x
	lda	#0x00
	sbc	0x10d,x
	sta	0x109,x
00108$:
;	../_fsadd.c: 194: if (!*pfl1)
	tsx
	lda	0x110,x
	ora	0x10f,x
	ora	0x10e,x
	ora	0x10d,x
	bne	00110$
;	../_fsadd.c: 195: return (a2);
	lda	0x12a,x
	sta	*___SDCC_m6502_ret3
	lda	0x129,x
	sta	*___SDCC_m6502_ret2
	lda	0x128,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x127,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00137$
00110$:
;	../_fsadd.c: 197: expd = exp1 - exp2;
	tsx
	lda	0x115,x
	sec
	sbc	0x11b,x
	sta	0x109,x
	lda	0x116,x
	sbc	0x11c,x
	sta	0x10a,x
;	../_fsadd.c: 198: if (expd > 25)
	lda	#0x19
	sec
	sbc	0x109,x
	lda	#0x00
	sbc	0x10a,x
	bvc	00248$
	bpl	00247$
	bmi	00112$
00248$:
	bpl	00112$
00247$:
;	../_fsadd.c: 199: return (a1);
	lda	0x126,x
	sta	*___SDCC_m6502_ret3
	lda	0x125,x
	sta	*___SDCC_m6502_ret2
	lda	0x124,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x123,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00137$
00112$:
;	../_fsadd.c: 200: if (expd < -25)
	tsx
	lda	0x109,x
	sec
	sbc	#0xe7
	lda	0x10a,x
	sbc	#0xff
	bvc	00251$
	bpl	00250$
	bmi	00114$
00251$:
	bpl	00114$
00250$:
;	../_fsadd.c: 201: return (a2);
	lda	0x12a,x
	sta	*___SDCC_m6502_ret3
	lda	0x129,x
	sta	*___SDCC_m6502_ret2
	lda	0x128,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x127,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00137$
00114$:
;	../_fsadd.c: 203: if (expd < 0)
	tsx
	lda	0x10a,x
	sec
	sbc	#0x00
	bvc	00254$
	bpl	00253$
	bmi	00116$
00254$:
	bpl	00116$
00253$:
;	../_fsadd.c: 205: expd = -expd;
	lda	#0x00
	sec
	sbc	0x109,x
	sta	0x119,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x11a,x
;	../_fsadd.c: 206: exp1 += expd;
	lda	0x115,x
	clc
	adc	0x119,x
	sta	0x115,x
	lda	0x116,x
	adc	0x11a,x
	sta	0x116,x
;	../_fsadd.c: 207: mant1 >>= expd;
	lda	0x119,x
	tay
	beq	00117$
00256$:
	lda	0x108,x
	cmp	#0x80
	ror	a
	sta	0x108,x
	lda	0x107,x
	ror	a
	sta	0x107,x
	lda	0x106,x
	ror	a
	sta	0x106,x
	lda	0x105,x
	ror	a
	sta	0x105,x
	dey
	bne	00256$
	jmp	00117$
00116$:
;	../_fsadd.c: 211: mant2 >>= expd;
	tsx
	lda	0x109,x
	tay
	beq	00259$
00258$:
	lda	0x104,x
	cmp	#0x80
	ror	a
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
	bne	00258$
00259$:
00117$:
;	../_fsadd.c: 213: mant1 += mant2;
	tsx
	lda	0x105,x
	clc
	adc	0x101,x
	sta	0x105,x
	lda	0x106,x
	adc	0x102,x
	sta	0x106,x
	lda	0x107,x
	adc	0x103,x
	sta	0x107,x
	lda	0x108,x
	adc	0x104,x
	sta	0x108,x
;	../_fsadd.c: 215: sign = false;
	ldy	#0x00
;	../_fsadd.c: 217: if (mant1 < 0)
	lda	0x108,x
	sec
	sbc	#0x00
	bvc	00261$
	bpl	00260$
	bmi	00121$
00261$:
	bpl	00121$
00260$:
;	../_fsadd.c: 219: mant1 = -mant1;
	tya
	sec
	sbc	0x105,x
	sta	0x105,x
	tya
	sbc	0x106,x
	sta	0x106,x
	tya
	sbc	0x107,x
	sta	0x107,x
	tya
	sbc	0x108,x
	sta	0x108,x
;	../_fsadd.c: 220: sign = true;
	iny
	jmp	00154$
00121$:
;	../_fsadd.c: 222: else if (!mant1)
	tsx
	lda	0x108,x
	ora	0x107,x
	ora	0x106,x
	ora	0x105,x
	bne	00154$
;	../_fsadd.c: 223: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00137$
;	../_fsadd.c: 226: while (mant1 < (HIDDEN<<4)) {
00154$:
	tsx
	lda	0x115,x
	sta	0x109,x
	lda	0x116,x
	sta	0x10a,x
00123$:
	tsx
	lda	0x105,x
	sta	0x10d,x
	lda	0x106,x
	sta	0x10e,x
	lda	0x107,x
	sta	0x10f,x
	lda	0x108,x
	sta	0x110, x
	sec
	sbc	#0x08
	bcs	00157$
;	../_fsadd.c: 227: mant1 <<= 1;
	lda	0x105,x
	asl	a
	sta	0x105,x
	lda	0x106,x
	rol	a
	sta	0x106,x
	lda	0x107,x
	rol	a
	sta	0x107,x
	lda	0x108,x
	rol	a
	sta	0x108,x
;	../_fsadd.c: 228: exp1--;
	lda	0x109,x
	sec
	sbc	#0x01
	sta	0x109,x
	lda	0x10a,x
	sbc	#0x00
	sta	0x10a,x
	jmp	00123$
;	../_fsadd.c: 232: while (mant1 & 0xf0000000) {
00157$:
	tsx
	lda	0x109,x
	sta	0x11d,x
	lda	0x10a,x
	sta	0x11e,x
00128$:
	tsx
	lda	#0xf0
	and	0x108,x
	beq	00163$
;	../_fsadd.c: 233: if (mant1&1)
	lda	#0x01
	and	0x105,x
	beq	00127$
;	../_fsadd.c: 234: mant1 += 2;
	lda	0x105,x
	clc
	adc	#0x02
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
	lda	0x107,x
	adc	#0x00
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
00127$:
;	../_fsadd.c: 235: mant1 >>= 1;
	tsx
	lda	0x108,x
	cmp	#0x80
	ror	a
	sta	0x108,x
	lda	0x107,x
	ror	a
	sta	0x107,x
	lda	0x106,x
	ror	a
	sta	0x106,x
	lda	0x105,x
	ror	a
	sta	0x105,x
;	../_fsadd.c: 236: exp1++;
	lda	0x11d,x
	clc
	adc	#0x01
	sta	0x11d,x
	lda	0x11e,x
	adc	#0x00
	sta	0x11e,x
	jmp	00128$
00163$:
	tsx
	lda	0x11d,x
	sta	0x109,x
	lda	0x11e,x
	sta	0x10a,x
;	../_fsadd.c: 240: mant1 &= ~(HIDDEN<<4);
	lda	0x108,x
	and	#0xf7
	sta	0x108,x
;	../_fsadd.c: 243: if (exp1 >= 0x100)
	lda	0x11e,x
	sec
	sbc	#0x01
	bvs	00269$
	bpl	00268$
	bmi	00135$
00269$:
	bpl	00135$
00268$:
;	../_fsadd.c: 244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	cpy	#0x00
	beq	00139$
	lda	#0x00
	sta	0x10d,x
	sta	0x10e,x
	lda	#0x80
	sta	0x10f,x
	lda	#0xff
	sta	0x110,x
	jmp	00140$
00139$:
	tsx
	lda	#0x00
	sta	0x10d,x
	sta	0x10e,x
	lda	#0x80
	sta	0x10f,x
	lda	#0x7f
	sta	0x110,x
00140$:
	tsx
	lda	0x11f,x
	sta	*(__DPTR+0)
	lda	0x120,x
	sta	*(__DPTR+1)
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
	jmp	00136$
00135$:
;	../_fsadd.c: 245: else if (exp1 < 0)
	tsx
	lda	0x11e,x
	sec
	sbc	#0x00
	bvc	00273$
	bpl	00272$
	bmi	00132$
00273$:
	bpl	00132$
00272$:
;	../_fsadd.c: 246: *pfl1 = 0;
	lda	0x11f,x
	sta	*(__DPTR+0)
	lda	0x120,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	jmp	00136$
00132$:
;	../_fsadd.c: 248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	cpy	#0x00
	beq	00141$
	tsx
	lda	#0x00
	sta	0x10d,x
	sta	0x10e,x
	sta	0x10f,x
	lda	#0x80
	sta	0x110,x
	jmp	00142$
00141$:
	tsx
	lda	#0x00
	sta	0x10d,x
	sta	0x10e,x
	sta	0x10f,x
	sta	0x110,x
00142$:
	tsx
	lda	0x109,x
	sta	0x109,x
	lda	0x10a,x
	sta	0x10a,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x10b,x
	sta	0x10c,x
	lda	0x109,x
	sta	*(__TEMP+0)
	lda	0x10a,x
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
	sta	0x10d,x
	pla
	sta	0x10c,x
	lda	#0x00
	sta	0x10a,x
	sta	0x10b,x
	lda	0x10e,x
	ora	0x10a,x
	sta	0x10a,x
	lda	0x10f,x
	ora	0x10b,x
	sta	0x10b,x
	lda	0x110,x
	ora	0x10c,x
	sta	0x10c,x
	lda	0x111,x
	ora	0x10d,x
	sta	0x10d,x
	lda	0x106,x
	sta	*(__TEMP+0)
	lda	0x107,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x10f,x
	pla
	sta	0x10e,x
	lda	0x108,x
	asl	a
	asl	a
	asl	a
	asl	a
	ora	0x10f,x
	sta	0x10f,x
	lda	0x108,x
	sta	*(__TEMP+0)
	lda	0x109,x
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
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x111,x
	pla
	sta	0x110,x
	lda	0x10a,x
	ora	0x10e,x
	sta	0x10a,x
	lda	0x10b,x
	ora	0x10f,x
	sta	0x10b,x
	lda	0x10c,x
	ora	0x110,x
	sta	0x10c,x
	lda	0x10d,x
	ora	0x111,x
	sta	0x10d,x
	lda	0x120,x
	sta	*(__DPTR+0)
	lda	0x121,x
	sta	*(__DPTR+1)
	lda	0x10a,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10b,x
	iny
	sta	[__DPTR],y
	lda	0x10c,x
	iny
	sta	[__DPTR],y
	lda	0x10d,x
	iny
	sta	[__DPTR],y
00136$:
;	../_fsadd.c: 249: return (a1);
	tsx
	lda	0x126,x
	sta	*___SDCC_m6502_ret3
	lda	0x125,x
	sta	*___SDCC_m6502_ret2
	lda	0x124,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x123,x
	php
	ldx	*(__TEMP+0)
	plp
00137$:
;	../_fsadd.c: 250: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x20
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
