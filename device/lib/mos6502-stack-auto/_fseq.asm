;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fseq
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fseq
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
;Allocation info for local variables in function '__fseq'
;------------------------------------------------------------
;a1                        Allocated to stack - sp +19
;a2                        Allocated to stack - sp +23
;fl1                       Allocated to stack - sp +5
;fl2                       Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../_fseq.c: 83: __fseq (float a1, float a2)
;	-----------------------------------------
;	 function __fseq
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
___fseq:
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
;	../_fseq.c: 87: fl1.f = a1;
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
;	../_fseq.c: 88: fl2.f = a2;
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
;	../_fseq.c: 90: if (fl1.l == fl2.l)
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
	cmp	0x109,x
	bne	00102$
	lda	0x10e,x
	cmp	0x10a,x
	bne	00102$
	lda	0x10f,x
	cmp	0x10b,x
	bne	00102$
	lda	0x110,x
	cmp	0x10c,x
	bne	00102$
;	../_fseq.c: 91: return (1);
	lda	#0x01
	jmp	00106$
00102$:
;	../_fseq.c: 93: if ((fl1.l & 0x7fffffff) == 0 && (fl2.l & 0x7fffffff) == 0)
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
	lda	0x109,x
	bne	00125$
	lda	0x10a,x
	bne	00125$
	lda	0x10b,x
	bne	00125$
	lda	#0x7f
	and	0x10c,x
00125$:
	bne	00104$
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
	lda	0x109,x
	bne	00127$
	lda	0x10a,x
	bne	00127$
	lda	0x10b,x
	bne	00127$
	lda	#0x7f
	and	0x10c,x
00127$:
	bne	00104$
;	../_fseq.c: 94: return (1);
	lda	#0x01
	jmp	00106$
00104$:
;	../_fseq.c: 95: return (0);
	lda	#0x00
00106$:
;	../_fseq.c: 96: }
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
