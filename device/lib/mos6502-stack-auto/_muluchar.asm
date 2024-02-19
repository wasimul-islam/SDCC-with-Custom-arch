;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _muluchar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __muluchar
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
;Allocation info for local variables in function '_muluchar'
;------------------------------------------------------------
;y                         Allocated to stack - sp +6
;x                         Allocated to stack - sp +5
;result                    Allocated to stack - sp +3
;i                         Allocated to registers y 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_muluchar.c: 30: _muluchar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _muluchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
__muluchar:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
	pha
	pha
;	../_muluchar.c: 32: unsigned int result = 0;
	tsx
	lda	#0x00
	sta	0x103,x
	sta	0x104,x
;	../_muluchar.c: 34: for (unsigned char i = 0; i < 8; i++)
	tay
00105$:
	cpy	#0x08
	bcs	00103$
;	../_muluchar.c: 36: result <<= 1;
	tsx
	lda	0x103,x
	sta	*(__TEMP+0)
	lda	0x104,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x105,x
	pla
	sta	0x104,x
;	../_muluchar.c: 37: if (x & 0x80)
	lda	#0x80
	and	0x106,x
	beq	00102$
;	../_muluchar.c: 38: result += y;
	lda	0x107,x
	ldx	#0x00
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x104, x
	clc
	adc	0x102,x
	sta	0x104,x
	lda	0x105,x
	adc	0x103,x
	sta	0x105,x
00102$:
;	../_muluchar.c: 39: x <<= 1;
	tsx
	lda	0x105,x
	asl	a
	sta	0x105,x
;	../_muluchar.c: 34: for (unsigned char i = 0; i < 8; i++)
	iny
	jmp	00105$
00103$:
;	../_muluchar.c: 42: return result;
	tsx
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_muluchar.c: 43: }
	sta	*(__TEMP+0)
	pla
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
