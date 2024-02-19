;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module qsort
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _qsort
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;src                       Allocated to stack - sp +12
;n                         Allocated to stack - sp +14
;dst                       Allocated to registers a x 
;d                         Allocated to registers 
;s                         Allocated to registers 
;tmp                       Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../qsort.c: 33: static void swap(void *restrict dst, void *restrict src, size_t n)
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
_swap:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../qsort.c: 35: unsigned char *restrict d = dst;
	pha
	txa
	tsx
	sta	0x109,x
	pla
	sta	0x108,x
;	../qsort.c: 36: unsigned char *restrict s = src;
	lda	0x10d, x
	sta	0x106,x
	lda	0x10e,x
	sta	0x107,x
;	../qsort.c: 38: while(n--)
	lda	0x10f,x
	sta	0x104,x
	lda	0x110,x
	sta	0x105,x
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
	beq	00104$
;	../qsort.c: 40: unsigned char tmp = *d;
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x109,x
;	../qsort.c: 41: *d = *s;
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	../qsort.c: 42: *s = tmp;
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	0x109,x
	sta	[__DPTR],y
;	../qsort.c: 43: d++;
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	../qsort.c: 44: s++;
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
	jmp	00101$
00104$:
;	../qsort.c: 46: }
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
;------------------------------------------------------------
;Allocation info for local variables in function 'qsort'
;------------------------------------------------------------
;nmemb                     Allocated to stack - sp +19
;size                      Allocated to stack - sp +21
;compar                    Allocated to stack - sp +23
;base                      Allocated to registers a x 
;b                         Allocated to stack - sp +15
;i                         Allocated to stack - sp +13
;j                         Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +7
;sloc2                     Allocated to stack - sp +5
;sloc3                     Allocated to stack - sp +3
;sloc4                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../qsort.c: 48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_qsort:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../qsort.c: 50: unsigned char *b = base;
	pha
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a, x
	sta	0x110,x
	lda	0x10b,x
	sta	0x111,x
;	../qsort.c: 52: if(nmemb <= 1)
	lda	#0x01
	sec
	sbc	0x114,x
	lda	#0x00
	sbc	0x115,x
	bcc	00102$
;	../qsort.c: 53: return;
	jmp	00112$
00102$:
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	tsx
	lda	0x109,x
	sta	0x10d,x
	lda	0x10a,x
	sta	0x10e,x
	lda	0x115,x
	sta	0x109,x
	lda	0x116,x
	sta	0x10a, x
	pha
	lda	0x109,x
	pha
	lda	0x114,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x115,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__mulint
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	tsx
	lda	0x10f,x
	clc
	adc	0x107,x
	sta	0x107,x
	lda	0x110,x
	adc	0x108,x
	sta	0x108,x
00110$:
	tsx
	lda	0x10d,x
	sec
	sbc	0x107,x
	lda	0x10e,x
	sbc	0x108,x
	bcc	00139$
	jmp	00112$
00139$:
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	lda	0x10d,x
	sta	0x10b,x
	lda	0x10e,x
	sta	0x10c,x
00107$:
	tsx
	lda	0x10f,x
	sec
	sbc	0x10b,x
	lda	0x110,x
	sbc	0x10c,x
	bcc	00140$
	jmp	00111$
00140$:
	lda	0x10b,x
	sec
	sbc	0x109,x
	sta	0x105,x
	lda	0x10c,x
	sbc	0x10a,x
	sta	0x106,x
	lda	0x105,x
	sta	0x103,x
	lda	0x106,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x101,x
	lda	0x10c,x
	sta	0x102,x
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x117,x
	sta	*(__TEMP+0)
	lda	0x118,x
	sta	*(__TEMP+1)
	lda	0x102,x
	tax
	stx	*(__TEMP+2)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+2)
	plp
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	txa
	sec
	sbc	#0x00
	bvc	00142$
	bpl	00141$
	bmi	00111$
00142$:
	bpl	00111$
00141$:
;	../qsort.c: 58: swap(j, j - size, size);
	tsx
	lda	0x105,x
	sta	0x101,x
	lda	0x106,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x107,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_swap
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	tsx
	lda	0x105,x
	sta	0x10b,x
	lda	0x106,x
	sta	0x10c,x
	jmp	00107$
00111$:
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	tsx
	lda	0x10d,x
	clc
	adc	0x109,x
	sta	0x10d,x
	lda	0x10e,x
	adc	0x10a,x
	sta	0x10e,x
	jmp	00110$
00112$:
;	../qsort.c: 60: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
