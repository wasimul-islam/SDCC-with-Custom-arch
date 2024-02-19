;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2slong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2slong
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
;Allocation info for local variables in function '__fs2slong'
;------------------------------------------------------------
;f                         Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_fs2slong.c: 108: signed long __fs2slong (float f)
;	-----------------------------------------
;	 function __fs2slong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
___fs2slong:
	pha
	pha
	pha
	pha
;	../_fs2slong.c: 111: if (!f)
	tsx
	lda	0x10a,x
	and	#0x7F
	ora	0x109,x
	ora	0x108,x
	ora	0x107,x
	bne	00102$
;	../_fs2slong.c: 112: return 0;
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00106$
00102$:
;	../_fs2slong.c: 114: if (f<0) {
	lda	#0x00
	pha
	pha
	pha
	pha
	tsx
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
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
	bne	00117$
	jmp	00104$
00117$:
;	../_fs2slong.c: 115: return -__fs2ulong(-f);
	tsx
	lda	0x107,x
	sta	0x101,x
	lda	0x108,x
	sta	0x102,x
	lda	0x109,x
	sta	0x103,x
	lda	0x10a,x
	eor	#0x80
	sta	0x104, x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	jsr	___fs2ulong
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	#0x00
	sec
	sbc	0x105,x
	sta	0x105,x
	lda	#0x00
	sbc	0x106,x
	sta	0x106,x
	lda	#0x00
	sbc	0x107,x
	sta	0x107,x
	lda	#0x00
	sbc	0x108,x
	sta	0x108, x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00106$
00104$:
;	../_fs2slong.c: 117: return __fs2ulong(f);
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	jsr	___fs2ulong
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	0x108, x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
00106$:
;	../_fs2slong.c: 119: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
