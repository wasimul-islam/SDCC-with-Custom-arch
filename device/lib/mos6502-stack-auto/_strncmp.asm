;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last                      Allocated to stack - sp +11
;count                     Allocated to stack - sp +13
;first                     Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +3
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strncmp.c: 31: int strncmp ( const char * first, const char * last, size_t count )
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_strncmp:
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
;	../_strncmp.c: 33: if (!count)
	tsx
	lda	0x10d,x
	ora	0x10e,x
	bne	00114$
;	../_strncmp.c: 34: return(0);
	lda	#0x00
	tax
	jmp	00108$
;	../_strncmp.c: 36: while (--count && *first && *first == *last) {
00114$:
	tsx
	lda	0x107,x
	sta	0x105,x
	lda	0x108,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
	lda	0x10d,x
	sta	0x101,x
	lda	0x10e,x
	sta	0x102,x
00105$:
	tsx
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
	lda	0x101,x
	ora	0x102,x
	beq	00107$
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tax
	beq	00107$
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	ldx	*(__TEMP+0)
	cmp	*(__TEMP+0)
	bne	00107$
;	../_strncmp.c: 37: first++;
	tsx
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	../_strncmp.c: 38: last++;
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
	jmp	00105$
00107$:
;	../_strncmp.c: 41: return( *first - *last );
	tsx
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
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	sta	0x103,x
	lda	#0x00
	sta	0x104,x
	lda	0x101,x
	sec
	sbc	0x103,x
	pha
	lda	0x102,x
	sbc	0x104,x
	tax
	pla
00108$:
;	../_strncmp.c: 42: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
