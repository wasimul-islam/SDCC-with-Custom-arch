;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16rtomb
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _c16rtomb
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
_c16rtomb_sps_65536_43:
	.ds 3
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
;Allocation info for local variables in function 'c16rtomb'
;------------------------------------------------------------
;c16                       Allocated to stack - sp +31
;ps                        Allocated to stack - sp +33
;s                         Allocated to stack - sp +27
;codepoint                 Allocated to stack - sp +5
;buf                       Allocated to stack - sp +1
;high_surrogate            Allocated to stack - sp +25
;sloc0                     Allocated to stack - sp +23
;sloc1                     Allocated to stack - sp +21
;sloc2                     Allocated to stack - sp +19
;sloc3                     Allocated to stack - sp +17
;sloc4                     Allocated to stack - sp +15
;sloc5                     Allocated to stack - sp +13
;sloc6                     Allocated to stack - sp +9
;sps                       Allocated with name '_c16rtomb_sps_65536_43'
;------------------------------------------------------------
;	../c16rtomb.c: 35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 28 bytes.
_c16rtomb:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe6
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../c16rtomb.c: 41: if(!s)
	tsx
	lda	0x11b,x
	ora	0x11c,x
	bne	00102$
;	../c16rtomb.c: 42: s = buf;
	inx
	txa
	ldx	#0x01
	pha
	txa
	tsx
	sta	0x11d,x
	pla
	sta	0x11c,x
	lda	0x11d,x
00102$:
;	../c16rtomb.c: 44: if(!ps)
	tsx
	lda	0x121,x
	ora	0x122,x
	bne	00104$
;	../c16rtomb.c: 45: ps = &sps;
	lda	#_c16rtomb_sps_65536_43
	sta	0x121,x
	lda	#>_c16rtomb_sps_65536_43
	sta	0x122,x
00104$:
;	../c16rtomb.c: 47: if (!c16) // 0 always resets conversion state.
	tsx
	lda	0x11f,x
	ora	0x120,x
	bne	00119$
;	../c16rtomb.c: 49: ps->c[1] = ps->c[2] = 0;
	lda	0x121,x
	sta	0x117,x
	lda	0x122,x
	sta	0x118,x
	lda	0x117,x
	sta	0x115,x
	lda	0x118,x
	sta	0x116,x
	lda	0x117,x
	sta	*(__DPTR+0)
	lda	0x118,x
	sta	*(__DPTR+1)
	lda	#0x00
	ldy	#0x02
	sta	[__DPTR],y
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	lda	#0x00
	dey
	sta	[__DPTR],y
;	../c16rtomb.c: 50: codepoint = 0;
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
	jmp	00120$
00119$:
;	../c16rtomb.c: 52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
	tsx
	lda	0x121,x
	sta	0x115,x
	lda	0x122,x
	sta	0x116,x
	lda	0x115,x
	sta	0x117,x
	lda	0x116,x
	sta	0x118,x
	lda	0x117,x
	sta	*(__DPTR+0)
	lda	0x118,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	bne	00114$
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	bne	00160$
	jmp	00115$
00160$:
00114$:
;	../c16rtomb.c: 56: if(c16 < 0xdc00 || c16 > 0xdfff)
	tsx
	lda	0x120,x
	sec
	sbc	#0xdc
	bcs	00161$
	jmp	00121$
00161$:
	lda	#0xff
	sec
	sbc	0x11f,x
	lda	#0xdf
	sbc	0x120,x
	bcs	00162$
	jmp	00121$
00162$:
;	../c16rtomb.c: 59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
	lda	0x121,x
	sta	0x113,x
	lda	0x122,x
	sta	0x114,x
	lda	0x113,x
	sta	0x111,x
	lda	0x114,x
	sta	0x112,x
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tay
	sta	0x10f,x
	lda	#0x00
	sta	0x110,x
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	ldx	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	ldx	#0x00
	pha
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	tax
	pla
	tsx
	lda	0x10f,x
	clc
	adc	0x10d,x
	sta	0x119,x
	lda	0x110,x
	adc	0x10e,x
	sta	0x11a,x
;	../c16rtomb.c: 60: ps->c[1] = ps->c[2] = 0;
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	lda	#0x00
	sta	[__DPTR],y
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	lda	#0x00
	dey
	sta	[__DPTR],y
;	../c16rtomb.c: 61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
	lda	0x119,x
	asl	a
	asl	a
	sta	0x10e,x
	pha
	lda	#0x00
	sta	0x10d,x
	pla
	lda	0x10d,x
	clc
	adc	0x11f,x
	sta	0x10d,x
	lda	0x10e,x
	adc	0x120,x
	sta	0x10e,x
	lda	0x10d,x
	sta	0x109,x
	lda	0x10e,x
	sta	0x10a,x
	lda	#0x00
	sta	0x10b,x
	sta	0x10c,x
	lda	0x109,x
	clc
	sta	0x105,x
	lda	0x10a,x
	clc
	adc	#0x24
	sta	0x106,x
	lda	0x10b,x
	adc	#0x00
	sta	0x107,x
	lda	0x10c,x
	adc	#0x00
	sta	0x108,x
	jmp	00120$
00115$:
;	../c16rtomb.c: 63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
	tsx
	lda	0x11f,x
	sec
	sbc	#0xff
	lda	0x120,x
	sbc	#0xd7
	bcc	00110$
	lda	0x120,x
	sec
	sbc	#0xe0
	bcc	00111$
00110$:
;	../c16rtomb.c: 64: codepoint = c16;
	tsx
	lda	0x11f,x
	sta	0x105,x
	lda	0x120,x
	sta	0x106,x
	lda	#0x00
	sta	0x107,x
	sta	0x108,x
	jmp	00120$
00111$:
;	../c16rtomb.c: 67: if(c16 > 0xdbff)
	tsx
	lda	#0xff
	sec
	sbc	0x11f,x
	lda	#0xdb
	sbc	0x120,x
	bcc	00121$
;	../c16rtomb.c: 70: ps->c[1] = c16 & 0xff;
	lda	0x11f,x
	sta	*(__TEMP+0)
	lda	0x117,x
	sta	*(__DPTR+0)
	lda	0x118,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x01
	sta	[__DPTR],y
;	../c16rtomb.c: 71: ps->c[2] = c16 >> 8;
	lda	0x120,x
	sta	*(__TEMP+0)
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../c16rtomb.c: 72: return(0);
	lda	#0x00
	tax
	jmp	00122$
00120$:
;	../c16rtomb.c: 75: return(wctomb(s, codepoint));
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x11c,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x11f,x
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
	jmp	00122$
;	../c16rtomb.c: 77: eilseq:
00121$:
;	../c16rtomb.c: 78: errno = EILSEQ;
	ldx	#0x54
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../c16rtomb.c: 79: return(-1);
	lda	#0xff
	tax
00122$:
;	../c16rtomb.c: 80: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x1c
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
