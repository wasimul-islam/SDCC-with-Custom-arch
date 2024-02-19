;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtowc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
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
_mbrtowc_sps_65536_10:
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
;Allocation info for local variables in function 'mbrtowc'
;------------------------------------------------------------
;s                         Allocated to stack - sp +37
;n                         Allocated to stack - sp +39
;ps                        Allocated to stack - sp +41
;pwc                       Allocated to stack - sp +33
;first_byte                Allocated to stack - sp +32
;seqlen                    Allocated to stack - sp +31
;mbseq                     Allocated to stack - sp +5
;codepoint                 Allocated to stack - sp +1
;i                         Allocated to stack - sp +30
;j                         Allocated to registers y 
;sloc0                     Allocated to stack - sp +28
;sloc1                     Allocated to stack - sp +26
;sloc2                     Allocated to stack - sp +25
;sloc3                     Allocated to stack - sp +23
;sloc4                     Allocated to stack - sp +21
;sloc5                     Allocated to stack - sp +19
;sloc6                     Allocated to stack - sp +18
;sloc7                     Allocated to stack - sp +16
;sloc8                     Allocated to stack - sp +14
;sloc9                     Allocated to stack - sp +13
;sloc10                    Allocated to stack - sp +9
;sps                       Allocated with name '_mbrtowc_sps_65536_10'
;------------------------------------------------------------
;	../mbrtowc.c: 32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 34 bytes.
_mbrtowc:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe0
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../mbrtowc.c: 41: if(!s)
	tsx
	lda	0x125,x
	ora	0x126,x
	bne	00102$
;	../mbrtowc.c: 42: return(mbrtowc(0, "", 1, ps));
	lda	0x12a,x
	pha
	lda	0x129,x
	pha
	lda	#0x00
	pha
	lda	#0x01
	pha
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
	ldx	#0x00
	txa
	jsr	_mbrtowc
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	jmp	00145$
00102$:
;	../mbrtowc.c: 43: if(!n)
	tsx
	lda	0x127,x
	ora	0x128,x
	bne	00280$
	jmp	00128$
00280$:
;	../mbrtowc.c: 45: if(!ps)
	lda	0x129,x
	ora	0x12a,x
	bne	00106$
;	../mbrtowc.c: 47: ps = &sps;
	lda	#_mbrtowc_sps_65536_10
	sta	0x129,x
	lda	#>_mbrtowc_sps_65536_10
	sta	0x12a,x
00106$:
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
	tsx
	txa
	clc
	adc	#0x05
	sta	0x11c,x
	lda	#0x01
	sta	0x11d,x
	lda	0x129,x
	sta	0x11a,x
	lda	0x12a,x
	sta	0x11b,x
	lda	#0x00
	sta	0x11e,x
00131$:
	tsx
	lda	0x11a,x
	clc
	adc	0x11e,x
	pha
	lda	0x11b,x
	adc	#0x00
	tax
	pla
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	beq	00174$
	tsx
	lda	0x11e,x
	cmp	#0x03
	bcs	00174$
;	../mbrtowc.c: 51: mbseq[i] = ps->c[i];
	lda	0x11c,x
	clc
	adc	0x11e,x
	pha
	lda	0x11d,x
	adc	#0x00
	tax
	pla
	sty	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	*(__TEMP+0)
	tya
	ldy	#0x00
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
	tsx
	lda	0x11e,x
	clc
	adc	#0x01
	sta	0x11e,x
	jmp	00131$
00174$:
	tsx
	lda	0x11e,x
	sta	0x11a,x
;	../mbrtowc.c: 53: seqlen = 1;
	lda	#0x01
	sta	0x119,x
;	../mbrtowc.c: 54: first_byte = ps->c[0] ? ps->c[0] : *s;
	lda	0x129,x
	sta	*(__DPTR+0)
	lda	0x12a,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	bne	00148$
	tsx
	lda	0x125,x
	sta	*(__DPTR+0)
	lda	0x126,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
00148$:
	tsx
	sta	0x120,x
;	../mbrtowc.c: 56: if(first_byte & 0x80)
	lda	#0x80
	and	0x120,x
	beq	00112$
;	../mbrtowc.c: 58: while (first_byte & (0x80 >> seqlen))
	lda	#0x01
	sta	0x11f,x
00108$:
	tsx
	lda	0x11f,x
	tay
	lda	#0x80
	sta	0x117,x
	lda	#0x00
	sta	0x118,x
	cpy	#0x00
	beq	00287$
00286$:
	lda	0x118,x
	cmp	#0x80
	ror	a
	sta	0x118,x
	lda	0x117,x
	ror	a
	sta	0x117,x
	dey
	bne	00286$
00287$:
	lda	0x120,x
	sta	0x115,x
	lda	#0x00
	sta	0x116,x
	lda	0x117,x
	and	0x115,x
	bne	00288$
	lda	0x118,x
	and	0x116,x
00288$:
	beq	00175$
;	../mbrtowc.c: 59: seqlen++;
	lda	0x11f,x
	clc
	adc	#0x01
	sta	0x11f,x
	jmp	00108$
00175$:
	tsx
	lda	0x11f,x
	sta	0x119,x
;	../mbrtowc.c: 60: first_byte &= (0xff >> (seqlen + 1));
	lda	0x11f,x
	clc
	adc	#0x01
	tay
	lda	#0xff
	ldx	#0x00
	cpy	#0x00
	beq	00291$
00290$:
	pha
	txa
	cmp	#0x80
	ror	a
	tax
	pla
	ror	a
	dey
	bne	00290$
00291$:
	tsx
	and	0x120,x
	sta	0x120,x
00112$:
;	../mbrtowc.c: 63: if(seqlen > 4)
	tsx
	lda	0x119,x
	cmp	#0x04
	beq	00292$
	bcc	00292$
	jmp	00128$
00292$:
;	../mbrtowc.c: 66: if(i + n < seqlen) // Incomplete multibyte character
	lda	0x11a,x
	sta	0x115,x
	lda	#0x00
	sta	0x116,x
	lda	0x115,x
	sta	0x117,x
	lda	0x116,x
	sta	0x118,x
	lda	0x117,x
	clc
	adc	0x127,x
	sta	0x117,x
	lda	0x118,x
	adc	0x128,x
	sta	0x118,x
	lda	0x119,x
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
	lda	0x117,x
	sec
	sbc	0x113,x
	lda	0x118,x
	sbc	0x114,x
	bcc	00294$
	jmp	00164$
00294$:
;	../mbrtowc.c: 70: return(-2);
	lda	0x129,x
	sta	0x113,x
	lda	0x12a,x
	sta	0x114,x
	lda	0x125,x
	sta	0x117,x
	lda	0x126,x
	sta	0x118,x
	lda	0x11a,x
	sta	0x112,x
	lda	0x127,x
	sta	0x110,x
	lda	0x128,x
	sta	0x111,x
00134$:
;	../mbrtowc.c: 68: for(;n-- ; i++)
	tsx
	lda	0x110,x
	sta	0x10e,x
	lda	0x111,x
	sta	0x10f,x
	lda	0x110,x
	sec
	sbc	#0x01
	sta	0x110,x
	lda	0x111,x
	sbc	#0x00
	sta	0x111,x
	lda	0x10e,x
	ora	0x10f,x
	beq	00115$
;	../mbrtowc.c: 69: ps->c[i] = *s++;
	lda	0x113,x
	clc
	adc	0x112,x
	sta	0x10e,x
	lda	0x114,x
	adc	#0x00
	sta	0x10f,x
	lda	0x117,x
	sta	*(__DPTR+0)
	lda	0x118,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x10d,x
	lda	0x117,x
	clc
	adc	#0x01
	sta	0x117,x
	lda	0x118,x
	adc	#0x00
	sta	0x118,x
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	lda	0x10d,x
	sta	[__DPTR],y
;	../mbrtowc.c: 68: for(;n-- ; i++)
	lda	0x112,x
	clc
	adc	#0x01
	sta	0x112,x
	jmp	00134$
00115$:
;	../mbrtowc.c: 70: return(-2);
	lda	#0xfe
	ldx	#0xff
	jmp	00145$
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
00164$:
	tsx
	lda	0x129,x
	sta	0x10e,x
	lda	0x12a,x
	sta	0x10f,x
	ldy	#0x00
00137$:
	tsx
	tya
	cmp	0x11a,x
	bcs	00118$
;	../mbrtowc.c: 74: ps->c[j] = 0;
	tya
	clc
	adc	0x10e,x
	pha
	lda	#0x00
	adc	0x10f,x
	tax
	pla
	sty	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
	iny
	jmp	00137$
00118$:
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	tsx
	lda	#0x01
	sta	0x127,x
	lda	#0x00
	sta	0x128,x
	lda	0x11a,x
	beq	00149$
	lda	0x115,x
	sta	0x10e,x
	lda	0x116,x
	sta	0x10f,x
	jmp	00150$
00149$:
	tsx
	lda	#0x01
	sta	0x10e,x
	lda	#0x00
	sta	0x10f,x
00150$:
	tsx
	lda	0x10e,x
	sta	0x10d,x
	lda	0x11c,x
	sta	0x10e,x
	lda	0x11d,x
	sta	0x10f,x
	lda	0x125,x
	sta	0x110,x
	lda	0x126,x
	sta	0x111,x
	lda	#0x01
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
00140$:
	tsx
	lda	0x10d,x
	cmp	0x119,x
	bcc	00298$
	jmp	00121$
00298$:
;	../mbrtowc.c: 78: mbseq[i] = *s++;
	lda	0x10e,x
	clc
	adc	0x10d,x
	sta	0x115,x
	lda	0x10f,x
	adc	#0x00
	sta	0x116,x
	lda	0x110,x
	sta	*(__DPTR+0)
	lda	0x111,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	pha
	lda	0x110,x
	clc
	adc	#0x01
	sta	0x110,x
	lda	0x111,x
	adc	#0x00
	sta	0x111,x
	pla
	sta	*(__TEMP+0)
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	lda	*(__TEMP+0)
;	../mbrtowc.c: 79: if((mbseq[i] & 0xc0) != 0x80)
	ldx	#0x00
	and	#0xc0
	cmp	#0x80
	bne	00300$
	cpx	#0x00
	beq	00301$
00300$:
	jmp	00128$
00301$:
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	tsx
	lda	0x10d,x
	clc
	adc	#0x01
	sta	0x10d,x
	lda	0x113,x
	clc
	adc	#0x01
	sta	0x113,x
	lda	0x114,x
	adc	#0x00
	sta	0x114,x
	lda	0x113,x
	sta	0x127,x
	lda	0x114,x
	sta	0x128,x
	jmp	00140$
00121$:
;	../mbrtowc.c: 83: codepoint = first_byte;
	tsx
	lda	0x120,x
	sta	0x101,x
	lda	#0x00
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	lda	0x11c,x
	clc
	adc	#0x01
	sta	0x10e,x
	lda	0x11d,x
	adc	#0x00
	sta	0x10f,x
	lda	0x119,x
	sec
	sbc	#0x01
	sta	0x10d,x
00143$:
	tsx
	lda	0x10d,x
	bne	00302$
	jmp	00122$
00302$:
;	../mbrtowc.c: 87: codepoint <<= 6;
	lda	0x101,x
	asl	a
	sta	0x101,x
	lda	0x102,x
	rol	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
	lda	0x101,x
	asl	a
	sta	0x101,x
	lda	0x102,x
	rol	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
	lda	0x101,x
	asl	a
	sta	0x101,x
	lda	0x102,x
	rol	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
	lda	0x101,x
	asl	a
	sta	0x101,x
	lda	0x102,x
	rol	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
	lda	0x101,x
	asl	a
	sta	0x101,x
	lda	0x102,x
	rol	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
	lda	0x101,x
	asl	a
	sta	0x101,x
	lda	0x102,x
	rol	a
	sta	0x102,x
	lda	0x103,x
	rol	a
	sta	0x103,x
	lda	0x104,x
	rol	a
	sta	0x104,x
;	../mbrtowc.c: 88: codepoint |= (*s & 0x3f);
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	and	#0x3f
	pha
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a,x
	lda	0x10b,x
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	0x10c,x
	sta	0x10d,x
	lda	0x102,x
	ora	0x10a,x
	sta	0x102,x
	lda	0x103,x
	ora	0x10b,x
	sta	0x103,x
	lda	0x104,x
	ora	0x10c,x
	sta	0x104,x
	lda	0x105,x
	ora	0x10d,x
	sta	0x105,x
;	../mbrtowc.c: 89: s++;
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	lda	0x10e,x
	sec
	sbc	#0x01
	sta	0x10e,x
	jmp	00143$
00122$:
;	../mbrtowc.c: 92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	tsx
	lda	0x102,x
	sec
	sbc	#0xd8
	lda	0x103,x
	sbc	#0x00
	lda	0x104,x
	sbc	#0x00
	bcc	00124$
	lda	#0xff
	sec
	sbc	0x101,x
	lda	#0xdf
	sbc	0x102,x
	lda	#0x00
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	bcc	00124$
;	../mbrtowc.c: 93: return(-1);
	lda	#0xff
	tax
	jmp	00145$
00124$:
;	../mbrtowc.c: 95: if(pwc)
	tsx
	lda	0x121,x
	ora	0x122,x
	beq	00127$
;	../mbrtowc.c: 96: *pwc = codepoint;
	lda	0x121,x
	sta	*(__DPTR+0)
	lda	0x122,x
	sta	*(__DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
	lda	0x103,x
	iny
	sta	[__DPTR],y
	lda	0x104,x
	iny
	sta	[__DPTR],y
00127$:
;	../mbrtowc.c: 97: return(n);
	tsx
	lda	0x128,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x127,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00145$
;	../mbrtowc.c: 99: eilseq:
00128$:
;	../mbrtowc.c: 100: errno = EILSEQ;
	ldx	#0x54
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../mbrtowc.c: 101: return(-1);
	lda	#0xff
	tax
00145$:
;	../mbrtowc.c: 102: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x22
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
