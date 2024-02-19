;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fslt
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt
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
;Allocation info for local variables in function '__fslt'
;------------------------------------------------------------
;a1                        Allocated to stack - sp +19
;a2                        Allocated to stack - sp +23
;fl1                       Allocated to stack - sp +5
;fl2                       Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../_fslt.c: 108: _Bool __fslt (float a1, float a2)
;	-----------------------------------------
;	 function __fslt
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
___fslt:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_fslt.c: 112: fl1.f = a1;
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x113,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x114,x
	iny
	sta	[__DPTR],y
	lda	0x115,x
	iny
	sta	[__DPTR],y
	lda	0x116,x
	iny
	sta	[__DPTR],y
;	../_fslt.c: 113: fl2.f = a2;
	inx
	txa
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__TEMP+0)
	tsx
	lda	0x117,x
	php
	ldx	#0x01
	plp
	ldy	#0x00
	sta	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	lda	0x118,x
	php
	ldx	#0x01
	plp
	iny
	sta	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	lda	0x119,x
	php
	ldx	#0x01
	plp
	iny
	sta	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	lda	0x11a,x
	php
	ldx	#0x01
	plp
	iny
	sta	[__DPTR],y
;	../_fslt.c: 115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
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
	sta	0x10d,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10f,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x110,x
	tsx
	inx
	txa
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
	lda	0x10d,x
	ora	0x109,x
	sta	0x109,x
	lda	0x10e,x
	ora	0x10a,x
	sta	0x10a,x
	lda	0x10f,x
	ora	0x10b,x
	sta	0x10b,x
	lda	0x110,x
	ora	0x10c,x
	sta	0x10c,x
	lda	0x109,x
	bne	00132$
	lda	0x10a,x
	bne	00132$
	lda	0x10b,x
	bne	00132$
	lda	#0x7f
	and	0x10c,x
00132$:
	bne	00102$
;	../_fslt.c: 116: return (0);
	lda	#0x00
	jmp	00110$
00102$:
;	../_fslt.c: 118: if (fl1.l<0 && fl2.l<0) {
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
	sta	0x10c, x
	sec
	sbc	#0x00
	bvc	00135$
	bpl	00134$
	bmi	00136$
00135$:
	bmi	00134$
00136$:
	jmp	00106$
00134$:
	inx
	txa
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
	sec
	sbc	#0x00
	bvc	00138$
	bpl	00137$
	bmi	00139$
00138$:
	bmi	00137$
00139$:
	jmp	00106$
00137$:
;	../_fslt.c: 119: if (fl2.l < fl1.l)
	inx
	txa
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
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10f,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x110,x
	tsx
	lda	0x109,x
	sec
	sbc	0x10d,x
	lda	0x10a,x
	sbc	0x10e,x
	lda	0x10b,x
	sbc	0x10f,x
	lda	0x10c,x
	sbc	0x110,x
	bvc	00141$
	bpl	00140$
	bmi	00104$
00141$:
	bpl	00104$
00140$:
;	../_fslt.c: 120: return (1);
	lda	#0x01
	jmp	00110$
00104$:
;	../_fslt.c: 121: return (0);
	lda	#0x00
	jmp	00110$
00106$:
;	../_fslt.c: 124: if (fl1.l < fl2.l)
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
	inx
	txa
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10f,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x110,x
	tsx
	lda	0x109,x
	sec
	sbc	0x10d,x
	lda	0x10a,x
	sbc	0x10e,x
	lda	0x10b,x
	sbc	0x10f,x
	lda	0x10c,x
	sbc	0x110,x
	bvc	00144$
	bpl	00143$
	bmi	00109$
00144$:
	bpl	00109$
00143$:
;	../_fslt.c: 125: return (1);
	lda	#0x01
	jmp	00110$
00109$:
;	../_fslt.c: 126: return (0);
	lda	#0x00
00110$:
;	../_fslt.c: 127: }
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
