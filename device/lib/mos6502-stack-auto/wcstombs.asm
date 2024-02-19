;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcstombs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _wcstombs
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
;Allocation info for local variables in function 'wcstombs'
;------------------------------------------------------------
;pwcs                      Allocated to stack - sp +23
;n                         Allocated to stack - sp +25
;s                         Allocated to stack - sp +19
;m                         Allocated to stack - sp +17
;buffer                    Allocated to stack - sp +1
;b                         Allocated to stack - sp +15
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +11
;sloc2                     Allocated to stack - sp +7
;sloc3                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../wcstombs.c: 33: size_t wcstombs(char *restrict s, const wchar_t *restrict pwcs, size_t n)
;	-----------------------------------------
;	 function wcstombs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 20 bytes.
_wcstombs:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	../wcstombs.c: 35: size_t m = 0;
	tsx
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
;	../wcstombs.c: 38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
	inx
	txa
	sta	0x10c,x
	lda	#0x01
	sta	0x10d,x
	lda	0x116,x
	sta	0x10a,x
	lda	0x117,x
	sta	0x10b,x
00107$:
	tsx
	lda	#0x04
	sec
	sbc	0x119,x
	lda	#0x00
	sbc	0x11a,x
	bcc	00108$
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108,x
	iny
	lda	[__DPTR],y
	sta	0x109,x
	iny
	lda	[__DPTR],y
	sta	0x10a,x
	lda	0x10d,x
	sta	0x105,x
	lda	0x10e,x
	sta	0x106,x
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x109,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_wctomb
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x11a, x
	sec
	sbc	0x106,x
	lda	0x11b,x
	sbc	0x107,x
	bcs	00129$
	jmp	00109$
00129$:
00108$:
;	../wcstombs.c: 40: int b = wctomb(s, *pwcs);
	tsx
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108,x
	iny
	lda	[__DPTR],y
	sta	0x109,x
	iny
	lda	[__DPTR],y
	sta	0x10a, x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x114,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x117,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_wctomb
	stx	*(__TEMP+0)
	tsx
	sta	0x113,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x114,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../wcstombs.c: 42: if(b == 1 && !*s)
	tsx
	lda	0x10f,x
	cmp	#0x01
	bne	00102$
	lda	0x110,x
	bne	00102$
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00109$
;	../wcstombs.c: 43: break;
00102$:
;	../wcstombs.c: 44: if(b < 0)
	tsx
	lda	0x110,x
	sec
	sbc	#0x00
	bvc	00135$
	bpl	00134$
	bmi	00105$
00135$:
	bpl	00105$
00134$:
;	../wcstombs.c: 45: return(-1);
	lda	#0xff
	tax
	jmp	00110$
00105$:
;	../wcstombs.c: 47: n -= b;
	tsx
	lda	0x10f,x
	sta	0x105,x
	lda	0x110,x
	sta	0x106,x
	lda	0x119,x
	sec
	sbc	0x105,x
	sta	0x119,x
	lda	0x11a,x
	sbc	0x106,x
	sta	0x11a,x
;	../wcstombs.c: 48: m += b;
	lda	0x111,x
	clc
	adc	0x105,x
	sta	0x111,x
	lda	0x112,x
	adc	0x106,x
	sta	0x112,x
;	../wcstombs.c: 49: s += b;
	lda	0x113,x
	clc
	adc	0x10f,x
	sta	0x113,x
	lda	0x114,x
	adc	0x110,x
	sta	0x114,x
;	../wcstombs.c: 50: pwcs++;
	lda	0x10b,x
	clc
	adc	#0x04
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
	jmp	00107$
00109$:
;	../wcstombs.c: 53: return(m);
	tsx
	lda	0x112,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
00110$:
;	../wcstombs.c: 54: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
