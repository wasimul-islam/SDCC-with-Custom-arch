;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module bsearch
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bsearch
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
;Allocation info for local variables in function 'bsearch'
;------------------------------------------------------------
;base                      Allocated to stack - sp +13
;nmemb                     Allocated to stack - sp +15
;size                      Allocated to stack - sp +17
;compar                    Allocated to stack - sp +19
;key                       Allocated to stack - sp +9
;left                      Allocated to stack - sp +5
;middle                    Allocated to stack - sp +7
;c                         Allocated to registers a x 
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +3
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../bsearch.c: 31: void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function bsearch
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_bsearch:
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
;	../bsearch.c: 33: for(const char *left = base; nmemb;)
	tsx
	lda	0x10d,x
	sta	0x105,x
	lda	0x10e,x
	sta	0x106,x
00109$:
	tsx
	lda	0x10f,x
	ora	0x110,x
	bne	00129$
	jmp	00107$
00129$:
;	../bsearch.c: 35: const char *middle = left + nmemb / 2 * size;
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x105,x
	pla
	sta	0x104,x
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x105,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__mulint
	stx	*(__TEMP+0)
	tsx
	sta	0x103,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x104,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x105,x
	clc
	adc	0x101,x
	sta	0x107,x
	lda	0x106,x
	adc	0x102,x
	sta	0x108,x
;	../bsearch.c: 36: int c = (*compar)(key, middle);
	lda	0x107,x
	sta	*(__TEMP+0)
	lda	0x108,x
	tax
	pha
	lda	*(__TEMP+0)
	pha
	tsx
	lda	0x115,x
	sta	*(__TEMP+0)
	lda	0x116,x
	sta	*(__TEMP+1)
	lda	0x10c,x
	tax
	stx	*(__TEMP+2)
	tsx
	lda	0x10b,x
	php
	ldx	*(__TEMP+2)
	plp
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
;	../bsearch.c: 38: if(c < 0)
	txa
	sec
	sbc	#0x00
	php
	lda	*(__TEMP+0)
	plp
	bvc	00131$
	bpl	00130$
	bmi	00105$
00131$:
	bpl	00105$
00130$:
;	../bsearch.c: 39: nmemb = nmemb / 2;	
	tsx
	lda	0x103,x
	sta	0x10f,x
	lda	0x104,x
	sta	0x110,x
	jmp	00109$
00105$:
;	../bsearch.c: 40: else if(c > 0)
	sta	*(__TEMP+0)
	lda	#0x00
	sec
	sbc	*(__TEMP+0)
	lda	#0x00
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	bvc	00134$
	bpl	00133$
	bmi	00102$
00134$:
	bpl	00102$
00133$:
;	../bsearch.c: 42: left = middle + size;
	tsx
	lda	0x107,x
	clc
	adc	0x111,x
	sta	0x105,x
	lda	0x108,x
	adc	0x112,x
	sta	0x106,x
;	../bsearch.c: 43: nmemb = (nmemb - 1) / 2;
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sec
	sbc	#0x01
	bcs	00136$
	dex
00136$:
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x111,x
	pla
	sta	0x110,x
	jmp	00109$
00102$:
;	../bsearch.c: 46: return(middle);
	tsx
	lda	0x107,x
	sta	*(__TEMP+0)
	lda	0x108,x
	tax
	lda	*(__TEMP+0)
	jmp	00111$
00107$:
;	../bsearch.c: 49: return(0);
	lda	#0x00
	tax
00111$:
;	../bsearch.c: 50: }
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
