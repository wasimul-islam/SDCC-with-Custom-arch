;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __memcpy
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
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
;Allocation info for local variables in function '__memcpy'
;------------------------------------------------------------
;src                       Allocated to stack - sp +15
;n                         Allocated to stack - sp +17
;dst                       Allocated to stack - sp +11
;ret                       Allocated to stack - sp +9
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../__memcpy.c: 31: void *__memcpy (void *dst, const void *src, size_t n)
;	-----------------------------------------
;	 function __memcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
___memcpy:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../__memcpy.c: 33: void *ret = dst;
	tsx
	lda	0x10b,x
	sta	0x109,x
	lda	0x10c,x
	sta	0x10a,x
;	../__memcpy.c: 34: char *d = dst;
	lda	0x10b,x
	sta	0x107,x
	lda	0x10c,x
	sta	0x108,x
;	../__memcpy.c: 35: const char *s = src;
	lda	0x10f,x
	sta	0x105,x
	lda	0x110,x
	sta	0x106,x
;	../__memcpy.c: 37: while (n--)
	lda	0x111,x
	sta	0x103,x
	lda	0x112,x
	sta	0x104,x
00101$:
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
	lda	0x101,x
	ora	0x102,x
	beq	00103$
;	../__memcpy.c: 38: *d++ = *s++;
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x101,x
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	lda	0x101,x
	sta	[__DPTR],y
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
	jmp	00101$
00103$:
;	../__memcpy.c: 40: return(ret);
	tsx
	lda	0x10a,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x109,x
	php
	ldx	*(__TEMP+0)
	plp
;	../__memcpy.c: 41: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
