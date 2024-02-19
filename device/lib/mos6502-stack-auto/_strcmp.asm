;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
;Allocation info for local variables in function 'strcmp'
;------------------------------------------------------------
;adst                      Allocated to stack - sp +13
;asrc                      Allocated to registers 
;ret                       Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strcmp.c: 34: int strcmp ( const char * asrc, const char * adst )
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_strcmp:
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
	stx	*(__TEMP+0)
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x108,x
;	../_strcmp.c: 51: while( ! (ret = *(unsigned char *)asrc - *(unsigned char *)adst) && *adst)
	tsx
	lda	0x10d,x
	sta	0x105,x
	lda	0x10e,x
	sta	0x106,x
00102$:
	tsx
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	sta	0x103,x
	lda	#0x00
	sta	0x104,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	sta	0x101,x
	lda	#0x00
	sta	0x102,x
	lda	0x103,x
	sec
	sbc	0x101,x
	sta	0x109,x
	lda	0x104,x
	sbc	0x102,x
	sta	0x10a,x
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	ora	0x10a,x
	bne	00104$
	cpy	#0x00
	beq	00104$
;	../_strcmp.c: 52: ++asrc, ++adst;
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
	jmp	00102$
00104$:
;	../_strcmp.c: 54: return( ret );
	tsx
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_strcmp.c: 56: }
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
