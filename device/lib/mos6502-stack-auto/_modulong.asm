;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modulong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong
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
;Allocation info for local variables in function '_modulong'
;------------------------------------------------------------
;a                         Allocated to stack - sp +8
;b                         Allocated to stack - sp +12
;count                     Allocated to stack - sp +5
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_modulong.c: 346: _modulong (unsigned long a, unsigned long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
__modulong:
	pha
	pha
	pha
	pha
	pha
;	../_modulong.c: 348: unsigned char count = 0;
	ldy	#0x00
;	../_modulong.c: 350: while (!MSB_SET(b))
	tsx
	tya
	sta	0x105,x
00103$:
	tsx
	lda	0x10f,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x101,x
	pha
	lda	#0x00
	sta	0x102,x
	lda	#0x00
	sta	0x103,x
	lda	#0x00
	sta	0x104,x
	pla
	lda	#0x01
	and	0x101,x
	bne	00117$
;	../_modulong.c: 352: b <<= 1;
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
;	../_modulong.c: 353: if (b > a)
	lda	0x108,x
	sec
	sbc	0x10c,x
	lda	0x109,x
	sbc	0x10d,x
	lda	0x10a,x
	sbc	0x10e,x
	lda	0x10b,x
	sbc	0x10f,x
	bcs	00102$
;	../_modulong.c: 355: b >>=1;
	lda	0x10f,x
	lsr	a
	sta	0x10f,x
	lda	0x10e,x
	ror	a
	sta	0x10e,x
	lda	0x10d,x
	ror	a
	sta	0x10d,x
	lda	0x10c,x
	ror	a
	sta	0x10c,x
;	../_modulong.c: 356: break;
	jmp	00117$
00102$:
;	../_modulong.c: 358: count++;
	tsx
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105, x
	tay
	jmp	00103$
;	../_modulong.c: 360: do
00117$:
00108$:
;	../_modulong.c: 362: if (a >= b)
	tsx
	lda	0x108,x
	sec
	sbc	0x10c,x
	lda	0x109,x
	sbc	0x10d,x
	lda	0x10a,x
	sbc	0x10e,x
	lda	0x10b,x
	sbc	0x10f,x
	bcc	00107$
;	../_modulong.c: 363: a -= b;
	lda	0x108,x
	sec
	sbc	0x10c,x
	sta	0x108,x
	lda	0x109,x
	sbc	0x10d,x
	sta	0x109,x
	lda	0x10a,x
	sbc	0x10e,x
	sta	0x10a,x
	lda	0x10b,x
	sbc	0x10f,x
	sta	0x10b,x
00107$:
;	../_modulong.c: 364: b >>= 1;
	tsx
	lda	0x10f,x
	lsr	a
	sta	0x10f,x
	lda	0x10e,x
	ror	a
	sta	0x10e,x
	lda	0x10d,x
	ror	a
	sta	0x10d,x
	lda	0x10c,x
	ror	a
	sta	0x10c,x
;	../_modulong.c: 366: while (count--);
	tya
	dey
	cmp	#0x00
	bne	00108$
;	../_modulong.c: 368: return a;
	lda	0x10b,x
	sta	*___SDCC_m6502_ret3
	lda	0x10a,x
	sta	*___SDCC_m6502_ret2
	lda	0x109,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x108,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_modulong.c: 369: }
	sta	*(__TEMP+0)
	pla
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
