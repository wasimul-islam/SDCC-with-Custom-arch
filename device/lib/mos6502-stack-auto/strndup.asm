;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strndup
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl ___memcpy
	.globl _strlen
	.globl _strndup
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
;Allocation info for local variables in function 'strndup'
;------------------------------------------------------------
;n                         Allocated to stack - sp +13
;s                         Allocated to stack - sp +9
;l                         Allocated to stack - sp +7
;r                         Allocated to stack - sp +5
;sloc0                     Allocated to stack - sp +3
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../strndup.c: 33: char *strndup (const char *s, size_t n)
;	-----------------------------------------
;	 function strndup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_strndup:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../strndup.c: 35: size_t l = strlen (s);
	tsx
	lda	0x10a,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x109,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strlen
	stx	*(__TEMP+0)
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x108,x
;	../strndup.c: 36: if (l > n)
	tsx
	lda	0x10d,x
	sec
	sbc	0x107,x
	lda	0x10e,x
	sbc	0x108,x
	bcs	00102$
;	../strndup.c: 37: l = n;
	lda	0x10d,x
	sta	0x107,x
	lda	0x10e,x
	sta	0x108,x
00102$:
;	../strndup.c: 38: char *r = malloc (l + 1);
	tsx
	lda	0x107,x
	sta	*(__TEMP+0)
	lda	0x108,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x01
	bcc	00116$
	inx
00116$:
	jsr	_malloc
	pha
	txa
	tsx
	sta	0x107,x
	pla
;	../strndup.c: 39: if (r)
	sta	0x106, x
	ora	0x107,x
	beq	00104$
;	../strndup.c: 41: memcpy (r, s, l);
	lda	0x10a,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x105,x
	lda	0x106,x
	sta	0x102,x
	lda	0x107,x
	sta	0x103,x
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	___memcpy
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../strndup.c: 42: r[l] = 0;
	tsx
	lda	0x105,x
	clc
	adc	0x107,x
	pha
	lda	0x106,x
	adc	0x108,x
	tax
	pla
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
00104$:
;	../strndup.c: 44: return (r);
	tsx
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
;	../strndup.c: 45: }
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
