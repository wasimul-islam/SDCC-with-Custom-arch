;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16stombs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _wctomb
	.globl ___c16stombs
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
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;c16s                      Allocated to stack - sp +33
;n                         Allocated to stack - sp +35
;s                         Allocated to stack - sp +29
;m                         Allocated to stack - sp +27
;b                         Allocated to stack - sp +5
;l                         Allocated to stack - sp +25
;codepoint                 Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +23
;sloc1                     Allocated to stack - sp +21
;sloc2                     Allocated to stack - sp +19
;sloc3                     Allocated to stack - sp +17
;sloc4                     Allocated to stack - sp +13
;sloc5                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../c16stombs.c: 44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 30 bytes.
___c16stombs:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe4
	tax
	txs
;	../c16stombs.c: 46: size_t m = 0;
	tsx
	lda	#0x00
	sta	0x11b,x
	sta	0x11c,x
;	../c16stombs.c: 87: return(m);
00119$:
;	../c16stombs.c: 54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	tsx
	lda	0x121,x
	sta	0x117,x
	lda	0x122,x
	sta	0x118,x
	lda	0x117,x
	sta	*(__DPTR+0)
	lda	0x118,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x115,x
	iny
	lda	[__DPTR],y
	sta	0x116, x
	sec
	sbc	#0xd8
	bcc	00106$
	lda	0x116,x
	sec
	sbc	#0xe0
	bcc	00107$
00106$:
;	../c16stombs.c: 56: codepoint = c16s[0];
	tsx
	lda	0x121,x
	sta	0x113,x
	lda	0x122,x
	sta	0x114,x
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x111,x
	iny
	lda	[__DPTR],y
	sta	0x112,x
	lda	0x111,x
	sta	0x101,x
	lda	0x112,x
	sta	0x102,x
	lda	#0x00
	sta	0x103,x
	sta	0x104,x
;	../c16stombs.c: 57: c16s++;
	lda	0x113,x
	clc
	adc	#0x02
	sta	0x121,x
	lda	0x114,x
	adc	#0x00
	sta	0x122,x
	jmp	00108$
00107$:
;	../c16stombs.c: 59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
	tsx
	lda	#0xff
	sec
	sbc	0x115,x
	lda	#0xdb
	sbc	0x116,x
	bcc	00101$
	lda	0x117,x
	sta	0x111,x
	lda	0x118,x
	sta	0x112,x
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	sta	0x111,x
	iny
	lda	[__DPTR],y
	sta	0x112, x
	sec
	sbc	#0xdc
	bcc	00101$
	lda	#0xff
	sec
	sbc	0x111,x
	lda	#0xdf
	sbc	0x112,x
	bcs	00102$
00101$:
;	../c16stombs.c: 60: return(-1);
	lda	#0xff
	tax
	jmp	00121$
00102$:
;	../c16stombs.c: 63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
	tsx
	lda	0x115,x
	sta	0x10d,x
	lda	0x116,x
	sta	0x10e,x
	lda	#0x00
	sta	0x10f,x
	sta	0x110,x
	lda	0x10e,x
	sta	*(__TEMP+0)
	lda	0x10f,x
	tax
	lda	*(__TEMP+0)
	asl	a
	pha
	txa
	rol	a
	tax
	pla
	asl	a
	pha
	txa
	rol	a
	tsx
	sta	0x111,x
	pla
	sta	0x110,x
	lda	0x10e,x
	asl	a
	asl	a
	sta	0x10f,x
	lda	0x10e,x
	rol	a
	rol	a
	rol	a
	and	#0x03
	ora	0x110,x
	sta	0x110,x
	lda	#0x00
	sta	0x10e,x
	lda	0x112,x
	sta	0x10a,x
	lda	0x113,x
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
	sta	0x10d,x
	lda	0x10e,x
	clc
	adc	0x10a,x
	sta	0x10a,x
	lda	0x10f,x
	adc	0x10b,x
	sta	0x10b,x
	lda	0x110,x
	adc	0x10c,x
	sta	0x10c,x
	lda	0x111,x
	adc	0x10d,x
	sta	0x10d,x
	lda	0x10a,x
	clc
	sta	0x102,x
	lda	0x10b,x
	clc
	adc	#0x24
	sta	0x103,x
	lda	0x10c,x
	adc	#0xa0
	sta	0x104,x
	lda	0x10d,x
	adc	#0xfc
	sta	0x105,x
;	../c16stombs.c: 64: c16s += 2;
	lda	0x118,x
	clc
	adc	#0x04
	sta	0x122,x
	lda	0x119,x
	adc	#0x00
	sta	0x123,x
00108$:
;	../c16stombs.c: 67: if(!codepoint)
	tsx
	lda	0x104,x
	ora	0x103,x
	ora	0x102,x
	ora	0x101,x
	bne	00113$
;	../c16stombs.c: 69: if(m < n)
	lda	0x11b,x
	sec
	sbc	0x123,x
	lda	0x11c,x
	sbc	0x124,x
	bcc	00161$
	jmp	00118$
00161$:
;	../c16stombs.c: 70: *s = 0;
	lda	0x11d,x
	sta	*(__DPTR+0)
	lda	0x11e,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../c16stombs.c: 71: break;
	jmp	00118$
00113$:
;	../c16stombs.c: 74: l = wctomb(b, codepoint);
	tsx
	txa
	clc
	adc	#0x05
	sta	0x109,x
	lda	#0x01
	sta	0x10a,x
	lda	0x109,x
	sta	0x10d,x
	lda	0x10a,x
	sta	0x10e,x
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_wctomb
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../c16stombs.c: 76: if(l < 0)
	tsx
	lda	0x11a,x
	sec
	sbc	#0x00
	bvc	00163$
	bpl	00162$
	bmi	00115$
00163$:
	bpl	00115$
00162$:
;	../c16stombs.c: 77: return(-1);
	lda	#0xff
	tax
	jmp	00121$
00115$:
;	../c16stombs.c: 79: if(m + l > n)
	tsx
	lda	0x119,x
	sta	0x10d,x
	lda	0x11a,x
	sta	0x10e,x
	lda	0x11b,x
	clc
	adc	0x10d,x
	sta	0x111,x
	lda	0x11c,x
	adc	0x10e,x
	sta	0x112,x
	lda	0x123,x
	sec
	sbc	0x111,x
	lda	0x124,x
	sbc	0x112,x
	bcc	00118$
;	../c16stombs.c: 82: memcpy(s, b, l);
	lda	0x109,x
	sta	0x109,x
	lda	0x10a,x
	sta	0x10a,x
	lda	0x11d,x
	sta	0x111,x
	lda	0x11e,x
	sta	0x112,x
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x112,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x115,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	___memcpy
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../c16stombs.c: 83: s += l;
	tsx
	lda	0x11d,x
	clc
	adc	0x119,x
	sta	0x11d,x
	lda	0x11e,x
	adc	0x11a,x
	sta	0x11e,x
;	../c16stombs.c: 84: m += l;
	lda	0x11b,x
	clc
	adc	0x10d,x
	sta	0x11b,x
	lda	0x11c,x
	adc	0x10e,x
	sta	0x11c,x
	jmp	00119$
00118$:
;	../c16stombs.c: 87: return(m);
	tsx
	lda	0x11c,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x11b,x
	php
	ldx	*(__TEMP+0)
	plp
00121$:
;	../c16stombs.c: 88: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x1e
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
