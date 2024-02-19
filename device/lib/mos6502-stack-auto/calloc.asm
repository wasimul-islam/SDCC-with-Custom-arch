;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module calloc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;size                      Allocated to stack - sp +11
;nmemb                     Allocated to registers a x 
;ptr                       Allocated to stack - sp +5
;msize                     Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../calloc.c: 44: void *calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_calloc:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../calloc.c: 49: unsigned long msize = (unsigned long)nmemb * (unsigned long)size;
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x107,x
	pha
	lda	#0x00
	sta	0x108,x
	lda	#0x00
	sta	0x109,x
	pla
	lda	0x10c,x
	sta	0x102,x
	lda	0x10d,x
	sta	0x103,x
	lda	#0x00
	sta	0x104,x
	sta	0x105, x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	../calloc.c: 54: if (msize > SIZE_MAX)
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	tsx
	lda	#0xff
	sec
	sbc	0x101,x
	lda	#0xff
	sbc	0x102,x
	lda	#0x00
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	bcs	00102$
;	../calloc.c: 55: return(0);
	lda	#0x00
	tax
	jmp	00105$
00102$:
;	../calloc.c: 57: if (ptr = malloc(msize))
	tsx
	lda	0x101,x
	sta	0x101,x
	lda	0x102,x
	sta	0x102, x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_malloc
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	ldx	*(__TEMP+0)
	cmp	#0x00
	bne	00116$
	cpx	#0x00
00116$:
	beq	00104$
;	../calloc.c: 58: memset(ptr, 0, msize);
	tsx
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	#0x00
	pha
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x108,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_memset
	sta	*(__TEMP+0)
	pla
	pla
	pla
	lda	*(__TEMP+0)
00104$:
;	../calloc.c: 60: return(ptr);
	tsx
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
00105$:
;	../calloc.c: 61: }
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
