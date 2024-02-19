;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl ___mbstoc16s
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
;Allocation info for local variables in function '__mbstoc16s'
;------------------------------------------------------------
;s                         Allocated to stack - sp +21
;n                         Allocated to stack - sp +23
;c16s                      Allocated to stack - sp +17
;m                         Allocated to stack - sp +15
;l                         Allocated to stack - sp +13
;codepoint                 Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../mbstoc16s.c: 44: size_t __mbstoc16s(char16_t *restrict c16s, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function __mbstoc16s
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
___mbstoc16s:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10c,x
;	../mbstoc16s.c: 46: size_t m = 0;
	tsx
	lda	#0x00
	sta	0x10f,x
	sta	0x110,x
;	../mbstoc16s.c: 85: return(m);
00116$:
;	../mbstoc16s.c: 53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	tsx
	inx
	txa
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a,x
	lda	#0x00
	pha
	lda	#0x04
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x10b,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_mbtowc
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x112,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../mbstoc16s.c: 55: if(l < 0)
	tsx
	lda	0x10e,x
	sec
	sbc	#0x00
	bvc	00156$
	bpl	00155$
	bmi	00106$
00156$:
	bpl	00106$
00155$:
;	../mbstoc16s.c: 56: return(-1);
	lda	#0xff
	tax
	jmp	00118$
00106$:
;	../mbstoc16s.c: 57: else if(!l)
	tsx
	lda	0x10d,x
	ora	0x10e,x
	bne	00107$
;	../mbstoc16s.c: 59: if(m < n)
	lda	0x10f,x
	sec
	sbc	0x117,x
	lda	0x110,x
	sbc	0x118,x
	bcc	00159$
	jmp	00115$
00159$:
;	../mbstoc16s.c: 60: *c16s = 0;
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
;	../mbstoc16s.c: 61: break;
	jmp	00115$
00107$:
;	../mbstoc16s.c: 64: if (codepoint <= 0xffff) // Basic multilingual plane
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
	bcc	00113$
;	../mbstoc16s.c: 66: if (m >= n)
	lda	0x10f,x
	sec
	sbc	0x117,x
	lda	0x110,x
	sbc	0x118,x
	bcc	00161$
	jmp	00115$
00161$:
;	../mbstoc16s.c: 69: *c16s++ = codepoint;
	lda	0x101,x
	sta	0x109,x
	lda	0x102,x
	sta	0x10a,x
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
	lda	0x10b,x
	clc
	adc	#0x02
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
;	../mbstoc16s.c: 70: m++;
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
	jmp	00114$
00113$:
;	../mbstoc16s.c: 74: if (m + 1 >= n)
	tsx
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x109,x
	lda	0x110,x
	adc	#0x00
	sta	0x10a,x
	lda	0x109,x
	sec
	sbc	0x117,x
	lda	0x10a,x
	sbc	0x118,x
	bcc	00162$
	jmp	00115$
00162$:
;	../mbstoc16s.c: 77: codepoint -= 0x100000;
	lda	0x101,x
	sec
	sbc	#0x00
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
	lda	0x103,x
	sbc	#0x10
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
;	../mbstoc16s.c: 78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	lda	0x102,x
	sta	*(__TEMP+0)
	lda	0x103,x
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
	sta	*(__TEMP+0)
	lda	0x105,x
	tax
	lda	#0x00
	stx	*(__TEMP+0)
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
	sta	*(__TEMP+0)
	lda	0x107,x
	tax
	and	#0x03
	tax
	lda	*(__TEMP+0)
	clc
	pha
	txa
	clc
	adc	#0xd8
	tax
	pla
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	tsx
	lda	0x10b,x
	clc
	adc	#0x02
	sta	0x111,x
	lda	0x10c,x
	adc	#0x00
	sta	0x112,x
;	../mbstoc16s.c: 79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	lda	0x101,x
	sta	*(__TEMP+0)
	lda	0x102,x
	tax
	and	#0x03
	tax
	lda	*(__TEMP+0)
	clc
	pha
	txa
	clc
	adc	#0xdc
	tax
	pla
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	dey
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	tsx
	lda	0x111,x
	clc
	adc	#0x02
	sta	0x10b,x
	lda	0x112,x
	adc	#0x00
	sta	0x10c,x
;	../mbstoc16s.c: 80: m += 2;
	lda	0x10f,x
	clc
	adc	#0x02
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
00114$:
;	../mbstoc16s.c: 82: s += l;
	tsx
	lda	0x115,x
	clc
	adc	0x10d,x
	sta	0x115,x
	lda	0x116,x
	adc	0x10e,x
	sta	0x116,x
	jmp	00116$
00115$:
;	../mbstoc16s.c: 85: return(m);
	tsx
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
	php
	ldx	*(__TEMP+0)
	plp
00118$:
;	../mbstoc16s.c: 86: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
