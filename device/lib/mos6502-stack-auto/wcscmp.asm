;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcscmp
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wcscmp
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
;Allocation info for local variables in function 'wcscmp'
;------------------------------------------------------------
;s2                        Allocated to stack - sp +15
;s1                        Allocated to registers 
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +5
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../wcscmp.c: 31: int wcscmp(const wchar_t *s1, const wchar_t *s2)
;	-----------------------------------------
;	 function wcscmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_wcscmp:
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
;	../wcscmp.c: 33: while(*s1 == *s2 && *s1)
	tsx
	lda	0x10f,x
	sta	0x109,x
	lda	0x110,x
	sta	0x10a,x
00102$:
	tsx
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x105,x
	iny
	lda	[__DPTR],y
	sta	0x106,x
	iny
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x101,x
	iny
	lda	[__DPTR],y
	sta	0x102,x
	iny
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104,x
	lda	0x105,x
	cmp	0x101,x
	bne	00104$
	lda	0x106,x
	cmp	0x102,x
	bne	00104$
	lda	0x107,x
	cmp	0x103,x
	bne	00104$
	lda	0x108,x
	cmp	0x104,x
	bne	00104$
	lda	0x108,x
	ora	0x107,x
	ora	0x106,x
	ora	0x105,x
	beq	00104$
;	../wcscmp.c: 34: s1++, s2++;
	lda	0x10b,x
	clc
	adc	#0x04
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
	lda	0x109,x
	clc
	adc	#0x04
	sta	0x109,x
	lda	0x10a,x
	adc	#0x00
	sta	0x10a,x
	jmp	00102$
00104$:
;	../wcscmp.c: 36: if(*s1 < *s2)
	tsx
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x101,x
	iny
	lda	[__DPTR],y
	sta	0x102,x
	iny
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x105,x
	iny
	lda	[__DPTR],y
	sta	0x106,x
	iny
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108,x
	lda	0x101,x
	sec
	sbc	0x105,x
	lda	0x102,x
	sbc	0x106,x
	lda	0x103,x
	sbc	0x107,x
	lda	0x104,x
	sbc	0x108,x
	bcs	00106$
;	../wcscmp.c: 37: return(-1);
	lda	#0xff
	tax
	jmp	00109$
00106$:
;	../wcscmp.c: 38: if(*s1 > *s2)
	tsx
	lda	0x105,x
	sec
	sbc	0x101,x
	lda	0x106,x
	sbc	0x102,x
	lda	0x107,x
	sbc	0x103,x
	lda	0x108,x
	sbc	0x104,x
	bcs	00108$
;	../wcscmp.c: 39: return(1);
	lda	#0x01
	ldx	#0x00
	jmp	00109$
00108$:
;	../wcscmp.c: 40: return(0);
	lda	#0x00
	tax
00109$:
;	../wcscmp.c: 41: }
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
