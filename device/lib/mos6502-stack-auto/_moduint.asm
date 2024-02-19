;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _moduint
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduint
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
;Allocation info for local variables in function '_moduint'
;------------------------------------------------------------
;b                         Allocated to stack - sp +6
;a                         Allocated to stack - sp +2
;count                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_moduint.c: 179: _moduint (unsigned int a, unsigned int b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 3 bytes.
__moduint:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
;	../_moduint.c: 181: unsigned char count = 0;
	ldy	#0x00
;	../_moduint.c: 183: while (!MSB_SET(b))
	tsx
	tya
	sta	0x101,x
00103$:
	tsx
	lda	0x107,x
	rol	a
	lda	#0x00
	rol	a
	ldx	#0x00
	and	#0x01
	bne	00117$
;	../_moduint.c: 185: b <<= 1;
	tsx
	lda	0x106,x
	sta	*(__TEMP+0)
	lda	0x107,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x108,x
	pla
	sta	0x107,x
;	../_moduint.c: 186: if (b > a)
	lda	0x103, x
	sec
	sbc	0x107,x
	lda	0x104,x
	sbc	0x108,x
	bcs	00102$
;	../_moduint.c: 188: b >>=1;
	lda	0x107,x
	sta	*(__TEMP+0)
	lda	0x108,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x108,x
	pla
	sta	0x107,x
;	../_moduint.c: 189: break;
	jmp	00117$
00102$:
;	../_moduint.c: 191: count++;
	tsx
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101, x
	tay
	jmp	00103$
;	../_moduint.c: 193: do
00117$:
00108$:
;	../_moduint.c: 195: if (a >= b)
	tsx
	lda	0x102,x
	sec
	sbc	0x106,x
	lda	0x103,x
	sbc	0x107,x
	bcc	00107$
;	../_moduint.c: 196: a -= b;
	lda	0x102,x
	sec
	sbc	0x106,x
	sta	0x102,x
	lda	0x103,x
	sbc	0x107,x
	sta	0x103,x
00107$:
;	../_moduint.c: 197: b >>= 1;
	tsx
	lda	0x106,x
	sta	*(__TEMP+0)
	lda	0x107,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x108,x
	pla
	sta	0x107,x
;	../_moduint.c: 199: while (count--);
	tya
	dey
	cmp	#0x00
	bne	00108$
;	../_moduint.c: 200: return a;
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x102,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_moduint.c: 201: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
