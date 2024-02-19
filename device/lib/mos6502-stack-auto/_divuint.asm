;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divuint
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuint
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
;Allocation info for local variables in function '_divuint'
;------------------------------------------------------------
;y                         Allocated to stack - sp +7
;x                         Allocated to stack - sp +3
;reste                     Allocated to stack - sp +1
;count                     Allocated to registers y 
;c                         Allocated to registers a 
;------------------------------------------------------------
;	../_divuint.c: 161: _divuint (unsigned int x, unsigned int y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
__divuint:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
;	../_divuint.c: 163: unsigned int reste = 0;
	tsx
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
;	../_divuint.c: 167: do
	ldy	#0x10
00105$:
;	../_divuint.c: 170: c = MSB_SET(x);
	tsx
	lda	0x104,x
	rol	a
	lda	#0x00
	rol	a
	ldx	#0x00
	and	#0x01
;	../_divuint.c: 171: x <<= 1;
	tsx
	sta	*(__TEMP+0)
	lda	0x103,x
	sta	*(__TEMP+1)
	lda	0x104,x
	tax
	lda	*(__TEMP+1)
	stx	*(__TEMP+1)
	asl	a
	rol	*(__TEMP+1)
	ldx	*(__TEMP+1)
	pha
	txa
	tsx
	sta	0x105,x
	pla
	sta	0x104,x
;	../_divuint.c: 172: reste <<= 1;
	lda	0x102, x
	sta	*(__TEMP+1)
	lda	0x103,x
	tax
	lda	*(__TEMP+1)
	stx	*(__TEMP+1)
	asl	a
	rol	*(__TEMP+1)
	ldx	*(__TEMP+1)
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
;	../_divuint.c: 173: if (c)
	lda	*(__TEMP+0)
	beq	00102$
;	../_divuint.c: 174: reste |= 1;
	lda	0x102,x
	ora	#0x01
	sta	0x102,x
00102$:
;	../_divuint.c: 176: if (reste >= y)
	tsx
	lda	0x101,x
	sec
	sbc	0x107,x
	lda	0x102,x
	sbc	0x108,x
	bcc	00106$
;	../_divuint.c: 178: reste -= y;
	lda	0x101,x
	sec
	sbc	0x107,x
	sta	0x101,x
	lda	0x102,x
	sbc	0x108,x
	sta	0x102,x
;	../_divuint.c: 180: x |= 1;
	lda	0x103,x
	ora	#0x01
	sta	0x103,x
00106$:
;	../_divuint.c: 183: while (--count);
	dey
	beq	00129$
	jmp	00105$
00129$:
;	../_divuint.c: 184: return x;
	tsx
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_divuint.c: 185: }
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
