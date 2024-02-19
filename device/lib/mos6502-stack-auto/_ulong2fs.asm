;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a                         Allocated to stack - sp +13
;exp                       Allocated to registers y 
;fl                        Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../_ulong2fs.c: 84: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
___ulong2fs:
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
;	../_ulong2fs.c: 89: if (!a)
	tsx
	lda	0x110,x
	ora	0x10f,x
	ora	0x10e,x
	ora	0x10d,x
	bne	00102$
;	../_ulong2fs.c: 91: return 0.0;
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00113$
00102$:
;	../_ulong2fs.c: 94: if (a == 0xfffffffful)
	tsx
	lda	0x10d,x
	cmp	#0xff
	bne	00118$
	lda	0x10e,x
	cmp	#0xff
	bne	00118$
	lda	0x10f,x
	cmp	#0xff
	bne	00118$
	lda	0x110,x
	cmp	#0xff
	bne	00118$
;	../_ulong2fs.c: 96: return 4294967296.0f;
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x4f
	sty	*___SDCC_m6502_ret3
	jmp	00113$
;	../_ulong2fs.c: 99: while (a < HIDDEN)
00118$:
	ldy	#0x96
00105$:
	tsx
	lda	0x10f,x
	sec
	sbc	#0x80
	lda	0x110,x
	sbc	#0x00
	bcs	00121$
;	../_ulong2fs.c: 101: a <<= 1;
	lda	0x10d,x
	asl	a
	sta	0x10d,x
	lda	0x10e,x
	rol	a
	sta	0x10e,x
	lda	0x10f,x
	rol	a
	sta	0x10f,x
	lda	0x110,x
	rol	a
	sta	0x110,x
;	../_ulong2fs.c: 102: exp--;
	dey
	jmp	00105$
;	../_ulong2fs.c: 105: while (a & NORM)
00121$:
00110$:
	tsx
	lda	0x110,x
	beq	00112$
;	../_ulong2fs.c: 108: if (a & 1)
	lda	#0x01
	and	0x10d,x
	beq	00109$
;	../_ulong2fs.c: 109: a += 2;
	lda	0x10d,x
	clc
	adc	#0x02
	sta	0x10d,x
	lda	0x10e,x
	adc	#0x00
	sta	0x10e,x
	lda	0x10f,x
	adc	#0x00
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
00109$:
;	../_ulong2fs.c: 110: a >>= 1;
	tsx
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
;	../_ulong2fs.c: 111: exp++;
	iny
	jmp	00110$
00112$:
;	../_ulong2fs.c: 114: a &= ~HIDDEN ;
	tsx
	lda	0x10f,x
	and	#0x7f
	sta	0x10f,x
;	../_ulong2fs.c: 116: fl.l = PACK(0,(unsigned long)exp, a);
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
	tya
	sta	0x104,x
	lda	#0x00
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	lda	0x104,x
	sta	*(__TEMP+0)
	lda	0x105,x
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
	sta	0x109,x
	pla
	sta	0x108,x
	lda	#0x00
	sta	0x106,x
	sta	0x107,x
	lda	0x106,x
	ora	0x10e,x
	sta	0x106,x
	lda	0x107,x
	ora	0x10f,x
	sta	0x107,x
	lda	0x108,x
	ora	0x110,x
	sta	0x108,x
	lda	0x109,x
	ora	0x111,x
	sta	0x109,x
	lda	0x10a,x
	sta	*(__DPTR+0)
	lda	0x10b,x
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
;	../_ulong2fs.c: 118: return (fl.f);
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
;	../_ulong2fs.c: 119: }
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
