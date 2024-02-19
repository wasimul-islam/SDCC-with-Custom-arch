;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module memccpy
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memccpy
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
;Allocation info for local variables in function 'memccpy'
;------------------------------------------------------------
;src                       Allocated to stack - sp +13
;c                         Allocated to stack - sp +15
;n                         Allocated to stack - sp +17
;dst                       Allocated to registers a x 
;d                         Allocated to stack - sp +9
;s                         Allocated to registers 
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../memccpy.c: 31: void *memccpy (void *restrict dst, const void *restrict src, int c, size_t n)
;	-----------------------------------------
;	 function memccpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_memccpy:
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
;	../memccpy.c: 33: char *d = dst;
	pha
	txa
	tsx
	sta	0x109,x
	pla
	sta	0x108,x
;	../memccpy.c: 34: const char *s = src;
	lda	0x10e, x
	sta	0x106,x
	lda	0x10f,x
	sta	0x107,x
;	../memccpy.c: 36: while (n--)
	lda	0x112,x
	sta	0x104,x
	lda	0x113,x
	sta	0x105,x
00103$:
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
	beq	00105$
;	../memccpy.c: 37: if ((*d++ = *s++) == (unsigned char)c)
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
	lda	0x107,x
	sta	0x109,x
	lda	0x108,x
	sta	0x10a,x
	lda	0x10f,x
	cmp	0x101,x
	bne	00103$
;	../memccpy.c: 38: return (d);
	lda	0x109,x
	sta	*(__TEMP+0)
	lda	0x10a,x
	tax
	lda	*(__TEMP+0)
	jmp	00106$
00105$:
;	../memccpy.c: 40: return (0);
	lda	#0x00
	tax
00106$:
;	../memccpy.c: 41: }
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
