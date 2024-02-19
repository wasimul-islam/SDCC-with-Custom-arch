;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wctomb
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
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
;Allocation info for local variables in function 'wctomb'
;------------------------------------------------------------
;wc                        Allocated to stack - sp +15
;s                         Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../wctomb.c: 31: int wctomb(char *s, wchar_t wc)
;	-----------------------------------------
;	 function wctomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_wctomb:
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
;	../wctomb.c: 33: if(!s)
	tsx
	lda	0x10b,x
	ora	0x10c,x
	bne	00102$
;	../wctomb.c: 34: return(0);
	lda	#0x00
	tax
	jmp	00119$
00102$:
;	../wctomb.c: 36: if(wc < 0x80)
	tsx
	lda	0x10f,x
	sec
	sbc	#0x80
	lda	0x110,x
	sbc	#0x00
	lda	0x111,x
	sbc	#0x00
	lda	0x112,x
	sbc	#0x00
	bcs	00117$
;	../wctomb.c: 38: s[0] = wc;
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
;	../wctomb.c: 39: return(1);
	lda	#0x01
	ldx	#0x00
	jmp	00119$
00117$:
;	../wctomb.c: 41: else if(wc < 0x800)
	tsx
	lda	0x110,x
	sec
	sbc	#0x08
	lda	0x111,x
	sbc	#0x00
	lda	0x112,x
	sbc	#0x00
	bcs	00114$
;	../wctomb.c: 43: s[0] = (wc >> 6) & 0x1f | 0xc0;
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	and	#0x1f
	ora	#0xc0
	sta	*(__TEMP+0)
	tsx
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
;	../wctomb.c: 44: s[1] = (wc >> 0) & 0x3f | 0x80;
	lda	0x10b,x
	sta	0x109,x
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10f,x
	and	#0x3f
	ora	#0x80
	sta	*(__TEMP+0)
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../wctomb.c: 45: return(2);
	lda	#0x02
	ldx	#0x00
	jmp	00119$
00114$:
;	../wctomb.c: 47: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
	tsx
	lda	0x110,x
	sec
	sbc	#0xd8
	lda	0x111,x
	sbc	#0x00
	lda	0x112,x
	sbc	#0x00
	bcc	00110$
	lda	0x110,x
	sec
	sbc	#0xe0
	lda	0x111,x
	sbc	#0x00
	lda	0x112,x
	sbc	#0x00
	bcs	00110$
;	../wctomb.c: 48: return(-1);
	lda	#0xff
	tax
	jmp	00119$
00110$:
;	../wctomb.c: 49: else if(wc < 0x10000)
	tsx
	lda	0x111,x
	sec
	sbc	#0x01
	lda	0x112,x
	sbc	#0x00
	bcc	00154$
	jmp	00107$
00154$:
;	../wctomb.c: 51: s[0] = (wc >> 12) & 0x0f | 0xe0;
	lda	0x110,x
	sta	*(__TEMP+0)
	lda	0x111,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	#0x00
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	tsx
	ora	0x106,x
	php
	ldx	*(__TEMP+0)
	plp
	pha
	txa
	tsx
	sta	0x108,x
	pla
	sta	0x107,x
	pha
	lda	#0x00
	sta	0x109,x
	pla
	lda	0x106,x
	and	#0x0f
	ora	#0xe0
	sta	*(__TEMP+0)
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
;	../wctomb.c: 52: s[1] = (wc >> 6) & 0x3f  | 0x80;
	lda	0x10c,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x107,x
	lda	0x110,x
	sta	*(__TEMP+0)
	lda	0x111,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	and	#0x3f
	ora	#0x80
	sta	*(__TEMP+0)
	tsx
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../wctomb.c: 53: s[2] = (wc >> 0) & 0x3f  | 0x80;
	lda	0x10b,x
	sta	0x105,x
	lda	0x10c,x
	sta	0x106,x
	lda	0x10f,x
	and	#0x3f
	ora	#0x80
	sta	*(__TEMP+0)
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../wctomb.c: 54: return(3);
	lda	#0x03
	ldx	#0x00
	jmp	00119$
00107$:
;	../wctomb.c: 56: else if(wc < 0x110000)
	tsx
	lda	0x111,x
	sec
	sbc	#0x11
	lda	0x112,x
	sbc	#0x00
	bcc	00155$
	jmp	00104$
00155$:
;	../wctomb.c: 58: s[0] = (wc >> 18) & 0x07 | 0xf0;
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
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
	lda	0x106,x
	and	#0x07
	ora	#0xf0
	sta	*(__TEMP+0)
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
;	../wctomb.c: 59: s[1] = (wc >> 12) & 0x3f | 0x80;
	lda	0x10c,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x107,x
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	tya
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	tsx
	ora	0x102,x
	php
	ldx	*(__TEMP+0)
	plp
	pha
	txa
	tsx
	sta	0x104,x
	pla
	sta	0x103,x
	pha
	tya
	sta	0x105,x
	pla
	lda	0x102,x
	and	#0x3f
	ora	#0x80
	sta	*(__TEMP+0)
	lda	0x106,x
	sta	*(__DPTR+0)
	lda	0x107,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../wctomb.c: 60: s[2] = (wc >> 6) & 0x3f  | 0x80;
	lda	0x10c,x
	sta	0x102,x
	lda	0x10d,x
	sta	0x103,x
	lda	0x110,x
	sta	*(__TEMP+0)
	lda	0x111,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	and	#0x3f
	ora	#0x80
	sta	*(__TEMP+0)
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../wctomb.c: 61: s[3] = (wc >> 0) & 0x3f  | 0x80;
	lda	0x10b,x
	sta	0x101,x
	lda	0x10c,x
	sta	0x102,x
	lda	0x10f,x
	and	#0x3f
	ora	#0x80
	sta	*(__TEMP+0)
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../wctomb.c: 62: return(4);
	lda	#0x04
	ldx	#0x00
	jmp	00119$
00104$:
;	../wctomb.c: 65: return(-1);
	lda	#0xff
	tax
00119$:
;	../wctomb.c: 66: }
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
