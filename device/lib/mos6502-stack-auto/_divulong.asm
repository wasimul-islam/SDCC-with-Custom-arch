;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong
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
;Allocation info for local variables in function '_divulong'
;------------------------------------------------------------
;x                         Allocated to stack - sp +12
;y                         Allocated to stack - sp +16
;reste                     Allocated to stack - sp +1
;count                     Allocated to registers y 
;c                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../_divulong.c: 337: _divulong (unsigned long x, unsigned long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
__divulong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	../_divulong.c: 339: unsigned long reste = 0L;
	tsx
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	../_divulong.c: 343: do
	ldy	#0x20
00105$:
;	../_divulong.c: 346: c = MSB_SET(x);
	tsx
	lda	0x10f,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x105,x
	pha
	lda	#0x00
	sta	0x106,x
	lda	#0x00
	sta	0x107,x
	lda	#0x00
	sta	0x108,x
	pla
	lda	0x105,x
	and	#0x01
	sta	0x109,x
;	../_divulong.c: 347: x <<= 1;
	lda	0x10c,x
	asl	a
	sta	0x10c,x
	lda	0x10d,x
	rol	a
	sta	0x10d,x
	lda	0x10e,x
	rol	a
	sta	0x10e,x
	lda	0x10f,x
	rol	a
	sta	0x10f,x
;	../_divulong.c: 348: reste <<= 1;
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
;	../_divulong.c: 349: if (c)
	lda	0x109,x
	beq	00102$
;	../_divulong.c: 350: reste |= 1L;
	lda	0x101,x
	ora	#0x01
	sta	0x101,x
00102$:
;	../_divulong.c: 352: if (reste >= y)
	tsx
	lda	0x101,x
	sec
	sbc	0x110,x
	lda	0x102,x
	sbc	0x111,x
	lda	0x103,x
	sbc	0x112,x
	lda	0x104,x
	sbc	0x113,x
	bcc	00106$
;	../_divulong.c: 354: reste -= y;
	lda	0x101,x
	sec
	sbc	0x110,x
	sta	0x101,x
	lda	0x102,x
	sbc	0x111,x
	sta	0x102,x
	lda	0x103,x
	sbc	0x112,x
	sta	0x103,x
	lda	0x104,x
	sbc	0x113,x
	sta	0x104,x
;	../_divulong.c: 356: x |= 1L;
	lda	0x10c,x
	ora	#0x01
	sta	0x10c,x
00106$:
;	../_divulong.c: 359: while (--count);
	dey
	beq	00129$
	jmp	00105$
00129$:
;	../_divulong.c: 360: return x;
	tsx
	lda	0x10f,x
	sta	*___SDCC_m6502_ret3
	lda	0x10e,x
	sta	*___SDCC_m6502_ret2
	lda	0x10d,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10c,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_divulong.c: 361: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
