;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstowcs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl _mbstowcs
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
;Allocation info for local variables in function 'mbstowcs'
;------------------------------------------------------------
;s                         Allocated to stack - sp +15
;n                         Allocated to stack - sp +17
;pwcs                      Allocated to registers 
;m                         Allocated to stack - sp +11
;b                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../mbstowcs.c: 33: size_t mbstowcs(wchar_t *restrict pwcs, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbstowcs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_mbstowcs:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x108,x
;	../mbstowcs.c: 35: size_t m = 0;
	tsx
	lda	#0x00
	sta	0x105,x
	sta	0x106,x
;	../mbstowcs.c: 36: while(n--)
	sta	0x10b,x
	sta	0x10c,x
	lda	0x111,x
	sta	0x103,x
	lda	0x112,x
	sta	0x104,x
00105$:
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
	bne	00126$
	jmp	00107$
00126$:
;	../mbstowcs.c: 38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
	lda	0x107,x
	sta	0x101,x
	lda	0x108,x
	sta	0x102,x
	lda	0x107,x
	clc
	adc	#0x04
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
	lda	#0x00
	pha
	lda	#0x04
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_mbtowc
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../mbstowcs.c: 39: if(!b)
	tsx
	lda	0x109,x
	ora	0x10a,x
	beq	00107$
;	../mbstowcs.c: 41: if(b < 0)
	lda	0x10a,x
	sec
	sbc	#0x00
	bvc	00129$
	bpl	00128$
	bmi	00104$
00129$:
	bpl	00104$
00128$:
;	../mbstowcs.c: 42: return(-1);
	lda	#0xff
	tax
	jmp	00108$
00104$:
;	../mbstowcs.c: 43: s += b;
	tsx
	lda	0x10f,x
	clc
	adc	0x109,x
	sta	0x10f,x
	lda	0x110,x
	adc	0x10a,x
	sta	0x110,x
;	../mbstowcs.c: 44: m++;
	lda	0x10b,x
	clc
	adc	#0x01
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
	lda	0x10b,x
	sta	0x105,x
	lda	0x10c,x
	sta	0x106,x
	jmp	00105$
00107$:
;	../mbstowcs.c: 47: return(m);
	tsx
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
00108$:
;	../mbstowcs.c: 48: }
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
