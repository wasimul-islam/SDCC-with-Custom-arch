;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulonglong2fs
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
;Allocation info for local variables in function '__ulonglong2fs'
;------------------------------------------------------------
;a                         Allocated to stack - sp +17
;exp                       Allocated to registers y 
;fl                        Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../_ulonglong2fs.c: 61: float __ulonglong2fs (unsigned long long a ) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __ulonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
___ulonglong2fs:
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
;	../_ulonglong2fs.c: 66: if (!a)
	tsx
	lda	0x118,x
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
	ora	0x114,x
	ora	0x113,x
	ora	0x112,x
	ora	0x111,x
	bne	00102$
;	../_ulonglong2fs.c: 68: return 0.0;
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00113$
00102$:
;	../_ulonglong2fs.c: 71: if (a == 0xffffffffffffffffull)
	tsx
	lda	0x111,x
	cmp	#0xff
	bne	00118$
	lda	0x112,x
	cmp	#0xff
	bne	00118$
	lda	0x113,x
	cmp	#0xff
	bne	00118$
	lda	0x114,x
	cmp	#0xff
	bne	00118$
	lda	0x115,x
	cmp	#0xff
	bne	00118$
	lda	0x116,x
	cmp	#0xff
	bne	00118$
	lda	0x117,x
	cmp	#0xff
	bne	00118$
	lda	0x118,x
	cmp	#0xff
	bne	00118$
;	../_ulonglong2fs.c: 73: return 18446744073709551616.0f;
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x5f
	sty	*___SDCC_m6502_ret3
	jmp	00113$
;	../_ulonglong2fs.c: 76: while (a < HIDDEN)
00118$:
	ldy	#0x96
00105$:
	tsx
	lda	0x113,x
	sec
	sbc	#0x80
	lda	0x114,x
	sbc	#0x00
	lda	0x115,x
	sbc	#0x00
	lda	0x116,x
	sbc	#0x00
	lda	0x117,x
	sbc	#0x00
	lda	0x118,x
	sbc	#0x00
	bcc	00155$
	jmp	00121$
00155$:
;	../_ulonglong2fs.c: 78: a <<= 1;
	sta	*(__TEMP+0)
	tya
	pha
	lda	*(__TEMP+0)
	lda	#0x00
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	lda	#0x01
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	__rlulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x122,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x123,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x124,x
	lda	*___SDCC_m6502_ret3
	sta	0x125,x
	lda	*___SDCC_m6502_ret4
	sta	0x126,x
	lda	*___SDCC_m6502_ret5
	sta	0x127,x
	lda	*___SDCC_m6502_ret6
	sta	0x128,x
	lda	*___SDCC_m6502_ret7
	sta	0x129,x
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
	sta	*(__TEMP+0)
	pla
	tay
	lda	*(__TEMP+0)
;	../_ulonglong2fs.c: 79: exp--;
	dey
	jmp	00105$
;	../_ulonglong2fs.c: 82: while (a & NORM)
00121$:
00110$:
	tsx
	lda	0x114,x
	bne	00157$
	jmp	00112$
00157$:
;	../_ulonglong2fs.c: 85: if (a & 1)
	lda	#0x01
	and	0x111,x
	beq	00109$
;	../_ulonglong2fs.c: 86: a += 2;
	lda	0x111,x
	clc
	adc	#0x02
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
	lda	0x115,x
	adc	#0x00
	sta	0x115,x
	lda	0x116,x
	adc	#0x00
	sta	0x116,x
	lda	0x117,x
	adc	#0x00
	sta	0x117,x
	lda	0x118,x
	adc	#0x00
	sta	0x118,x
00109$:
;	../_ulonglong2fs.c: 87: a >>= 1;
	sta	*(__TEMP+0)
	tya
	pha
	lda	*(__TEMP+0)
	lda	#0x00
	pha
	lda	#0x01
	pha
	tsx
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	jsr	__rrulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11e,x
	lda	*___SDCC_m6502_ret3
	sta	0x11f,x
	lda	*___SDCC_m6502_ret4
	sta	0x120,x
	lda	*___SDCC_m6502_ret5
	sta	0x121,x
	lda	*___SDCC_m6502_ret6
	sta	0x122,x
	lda	*___SDCC_m6502_ret7
	sta	0x123,x
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
	sta	*(__TEMP+0)
	pla
	tay
	lda	*(__TEMP+0)
;	../_ulonglong2fs.c: 88: exp++;
	iny
	jmp	00110$
00112$:
;	../_ulonglong2fs.c: 91: a &= ~HIDDEN ;
	tsx
	lda	0x113,x
	and	#0x7f
	sta	0x113,x
	pha
	lda	#0x00
	sta	0x115,x
	lda	#0x00
	sta	0x116,x
	lda	#0x00
	sta	0x117,x
	lda	#0x00
	sta	0x118,x
	pla
;	../_ulonglong2fs.c: 93: fl.l = PACK(0,(unsigned long)exp, a);
	inx
	txa
	sta	0x10c,x
	lda	#0x01
	sta	0x10d,x
	tya
	sta	0x108,x
	lda	#0x00
	sta	0x109,x
	sta	0x10a,x
	sta	0x10b,x
	lda	0x108,x
	sta	*(__TEMP+0)
	lda	0x109,x
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
	lda	0x112,x
	sta	0x106,x
	lda	0x113,x
	sta	0x107,x
	lda	0x114,x
	sta	0x108,x
	lda	0x115,x
	sta	0x109,x
	lda	0x10a,x
	ora	0x106,x
	sta	0x106,x
	lda	0x10b,x
	ora	0x107,x
	sta	0x107,x
	lda	0x10c,x
	ora	0x108,x
	sta	0x108,x
	lda	0x10d,x
	ora	0x109,x
	sta	0x109,x
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	lda	0x106,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x107,x
	iny
	sta	[__DPTR],y
	lda	0x108,x
	iny
	sta	[__DPTR],y
	lda	0x109,x
	iny
	sta	[__DPTR],y
;	../_ulonglong2fs.c: 95: return (fl.f);
	inx
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
00113$:
;	../_ulonglong2fs.c: 96: }
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
