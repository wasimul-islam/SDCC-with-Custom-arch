;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2                      Allocated to stack - sp +12
;count                     Allocated to stack - sp +14
;buf1                      Allocated to stack - sp +8
;sloc0                     Allocated to stack - sp +6
;sloc1                     Allocated to stack - sp +4
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_memcmp.c: 31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
_memcmp:
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
;	../_memcmp.c: 33: if (!count)
	tsx
	lda	0x10e,x
	ora	0x10f,x
	bne	00112$
;	../_memcmp.c: 34: return(0);
	lda	#0x00
	tax
	jmp	00107$
;	../_memcmp.c: 36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	tsx
	lda	0x10e,x
	sta	0x106,x
	lda	0x10f,x
	sta	0x107,x
00104$:
	tsx
	lda	0x106,x
	sec
	sbc	#0x01
	sta	0x106,x
	lda	0x107,x
	sbc	#0x00
	sta	0x107,x
	lda	0x106,x
	ora	0x107,x
	beq	00106$
	lda	0x108,x
	sta	0x104,x
	lda	0x109,x
	sta	0x105,x
	lda	0x104,x
	sta	*(__DPTR+0)
	lda	0x105,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x103,x
	lda	0x10c,x
	sta	0x101,x
	lda	0x10d,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	cmp	0x103,x
	bne	00106$
;	../_memcmp.c: 37: buf1 = (char *)buf1 + 1;
	lda	0x104,x
	clc
	adc	#0x01
	sta	0x104,x
	lda	0x105,x
	adc	#0x00
	sta	0x105,x
	lda	0x104,x
	sta	0x108,x
	lda	0x105,x
	sta	0x109,x
;	../_memcmp.c: 38: buf2 = (char *)buf2 + 1;
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
	lda	0x101,x
	sta	0x10c,x
	lda	0x102,x
	sta	0x10d,x
	jmp	00104$
00106$:
;	../_memcmp.c: 41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	tsx
	lda	0x108,x
	sta	*(__TEMP+0)
	lda	0x109,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	tsx
	tya
	sta	0x101,x
	lda	#0x00
	sta	0x102,x
	lda	0x10c,x
	sta	*(__TEMP+0)
	lda	0x10d,x
	tax
	lda	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	tsx
	tya
	sta	0x104,x
	lda	#0x00
	sta	0x105,x
	lda	0x101,x
	sec
	sbc	0x104,x
	pha
	lda	0x102,x
	sbc	0x105,x
	tax
	pla
00107$:
;	../_memcmp.c: 42: }
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
