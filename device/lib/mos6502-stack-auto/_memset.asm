;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memset
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
;Allocation info for local variables in function 'memset'
;------------------------------------------------------------
;c                         Allocated to stack - sp +12
;n                         Allocated to stack - sp +13
;s                         Allocated to stack - sp +8
;sz                        Allocated to stack - sp +6
;dst                       Allocated to registers 
;data                      Allocated to stack - sp +5
;sloc0                     Allocated to stack - sp +3
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_memset.c: 42: void *memset (void *s, unsigned char c, size_t n)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
_memset:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	pha
;	../_memset.c: 189: register size_t sz = n;
	tsx
	lda	0x10d,x
	sta	0x106,x
	lda	0x10e,x
	sta	0x107,x
;	../_memset.c: 190: if (sz != 0)
	lda	0x10d,x
	ora	0x10e,x
	beq	00105$
;	../_memset.c: 192: register char *dst = s;
	lda	0x108,x
	sta	0x103,x
	lda	0x109,x
	sta	0x104,x
;	../_memset.c: 193: register char data = (char)c;
	lda	0x10c,x
	sta	0x105,x
;	../_memset.c: 194: do {
	lda	0x106,x
	sta	0x101,x
	lda	0x107,x
	sta	0x102,x
00101$:
;	../_memset.c: 195: *dst++ = data;
	tsx
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	0x105,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	../_memset.c: 196: } while (--sz);
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
	lda	0x101,x
	ora	0x102,x
	bne	00101$
00105$:
;	../_memset.c: 198: return s;
	tsx
	lda	0x109,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x108,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_memset.c: 199: }
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
