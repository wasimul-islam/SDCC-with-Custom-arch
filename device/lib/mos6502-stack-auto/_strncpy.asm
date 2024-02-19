;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy
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
;Allocation info for local variables in function 'strncpy'
;------------------------------------------------------------
;s                         Allocated to stack - sp +13
;n                         Allocated to stack - sp +15
;d                         Allocated to stack - sp +9
;d1                        Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +3
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strncpy.c: 33: char *strncpy ( char * d, const char * s, size_t n )
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_strncpy:
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
;	../_strncpy.c: 35: register char * d1 =  d;
	tsx
	lda	0x109,x
	sta	0x107,x
	lda	0x10a,x
	sta	0x108,x
;	../_strncpy.c: 37: while ( n && *s )
	lda	0x10f,x
	sta	0x105,x
	lda	0x110,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x103,x
	lda	0x10e,x
	sta	0x104,x
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
00102$:
	tsx
	lda	0x105,x
	ora	0x106,x
	beq	00114$
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	beq	00114$
;	../_strncpy.c: 39: n-- ;
	lda	0x105,x
	sec
	sbc	#0x01
	sta	0x105,x
	lda	0x106,x
	sbc	#0x00
	sta	0x106,x
;	../_strncpy.c: 40: *d++ = *s++ ;
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
	sty	*(__TEMP+0)
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	*(__TEMP+0)
	tya
	ldy	#0x00
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	jmp	00102$
;	../_strncpy.c: 42: while ( n-- )
00114$:
	tsx
	lda	0x101,x
	sta	0x109,x
	lda	0x102,x
	sta	0x10a,x
	lda	0x105,x
	sta	0x101,x
	lda	0x106,x
	sta	0x102,x
00105$:
	tsx
	lda	0x101,x
	sta	0x103,x
	lda	0x102,x
	sta	0x104,x
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
	lda	0x103,x
	ora	0x104,x
	beq	00107$
;	../_strncpy.c: 44: *d++ = '\0' ;
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	lda	0x109,x
	clc
	adc	#0x01
	sta	0x109,x
	lda	0x10a,x
	adc	#0x00
	sta	0x10a,x
	jmp	00105$
00107$:
;	../_strncpy.c: 46: return d1;
	tsx
	lda	0x108,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x107,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_strncpy.c: 47: }
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
