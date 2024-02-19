;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
;s                         Allocated to stack - sp +23
;n                         Allocated to stack - sp +25
;pwc                       Allocated to stack - sp +19
;codepoint                 Allocated to stack - sp +1
;seqlen                    Allocated to stack - sp +18
;i                         Allocated to stack - sp +17
;first_byte                Allocated to stack - sp +16
;sloc0                     Allocated to stack - sp +15
;sloc1                     Allocated to stack - sp +13
;sloc2                     Allocated to stack - sp +11
;sloc3                     Allocated to stack - sp +9
;sloc4                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../mbtowc.c: 31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 20 bytes.
_mbtowc:
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
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../mbtowc.c: 37: if(!s)
	tsx
	lda	0x117,x
	ora	0x118,x
	bne	00102$
;	../mbtowc.c: 38: return(0);
	lda	#0x00
	tax
	jmp	00126$
00102$:
;	../mbtowc.c: 40: seqlen = 1;
	tsx
	lda	#0x01
	sta	0x10f,x
;	../mbtowc.c: 41: first_byte = *s;
	lda	0x117,x
	sta	0x10d,x
	lda	0x118,x
	sta	0x10e,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x110,x
;	../mbtowc.c: 43: if(first_byte & 0x80)
	lda	#0x80
	and	0x110,x
	beq	00107$
;	../mbtowc.c: 45: while (first_byte & (0x80 >> seqlen))
	lda	#0x01
	sta	0x112,x
00103$:
	tsx
	lda	0x112,x
	tay
	lda	#0x80
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
	cpy	#0x00
	beq	00190$
00189$:
	lda	0x10c,x
	cmp	#0x80
	ror	a
	sta	0x10c,x
	lda	0x10b,x
	ror	a
	sta	0x10b,x
	dey
	bne	00189$
00190$:
	lda	0x110,x
	sta	0x109,x
	lda	#0x00
	sta	0x10a,x
	lda	0x10b,x
	and	0x109,x
	bne	00191$
	lda	0x10c,x
	and	0x10a,x
00191$:
	beq	00143$
;	../mbtowc.c: 46: seqlen++;
	lda	0x112,x
	clc
	adc	#0x01
	sta	0x112,x
	jmp	00103$
00143$:
	tsx
	lda	0x112,x
	sta	0x10f,x
;	../mbtowc.c: 47: first_byte &= (0xff >> (seqlen + 1));
	lda	0x112,x
	clc
	adc	#0x01
	tay
	lda	#0xff
	ldx	#0x00
	cpy	#0x00
	beq	00194$
00193$:
	pha
	txa
	cmp	#0x80
	ror	a
	tax
	pla
	ror	a
	dey
	bne	00193$
00194$:
	tsx
	and	0x110,x
	sta	0x110,x
00107$:
;	../mbtowc.c: 50: if(seqlen > 4 || n < seqlen)
	tsx
	lda	0x10f,x
	cmp	#0x04
	beq	00195$
	bcs	00108$
00195$:
	lda	0x10f,x
	sta	0x109,x
	lda	#0x00
	sta	0x10a,x
	lda	0x119,x
	sec
	sbc	0x109,x
	lda	0x11a,x
	sbc	0x10a,x
	bcs	00136$
00108$:
;	../mbtowc.c: 51: return(-1);
	lda	#0xff
	tax
	jmp	00126$
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
00136$:
	tsx
	lda	#0x01
	sta	0x111,x
00121$:
	tsx
	lda	0x111,x
	cmp	0x10f,x
	bcs	00113$
;	../mbtowc.c: 54: if((s[i] & 0xc0) != 0x80)
	lda	0x10d,x
	clc
	adc	0x111,x
	pha
	lda	0x10e,x
	adc	#0x00
	tax
	pla
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	and	#0xc0
	cmp	#0x80
	bne	00200$
	cpx	#0x00
	beq	00122$
00200$:
;	../mbtowc.c: 55: return(-1);
	lda	#0xff
	tax
	jmp	00126$
00122$:
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
	tsx
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	jmp	00121$
00113$:
;	../mbtowc.c: 57: codepoint = first_byte;
	tsx
	lda	0x110,x
	sta	0x101,x
	lda	#0x00
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
	lda	0x10d,x
	clc
	adc	#0x01
	sta	0x117,x
	lda	0x10e,x
	adc	#0x00
	sta	0x118,x
	lda	0x10f,x
	sec
	sbc	#0x01
	sta	0x109,x
	lda	0x117,x
	sta	0x10b,x
	lda	0x118,x
	sta	0x10c,x
00124$:
	tsx
	lda	0x109,x
	bne	00201$
	jmp	00114$
00201$:
;	../mbtowc.c: 61: codepoint <<= 6;
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
;	../mbtowc.c: 62: codepoint |= (*s & 0x3f);
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	and	#0x3f
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x107,x
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	0x108,x
	sta	0x109,x
	lda	0x102,x
	ora	0x106,x
	sta	0x102,x
	lda	0x103,x
	ora	0x107,x
	sta	0x103,x
	lda	0x104,x
	ora	0x108,x
	sta	0x104,x
	lda	0x105,x
	ora	0x109,x
	sta	0x105,x
;	../mbtowc.c: 63: s++;
	lda	0x10c,x
	clc
	adc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	adc	#0x00
	sta	0x10d,x
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
	lda	0x10a,x
	sec
	sbc	#0x01
	sta	0x10a,x
	jmp	00124$
00114$:
;	../mbtowc.c: 66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	tsx
	lda	0x102,x
	sec
	sbc	#0xd8
	lda	0x103,x
	sbc	#0x00
	lda	0x104,x
	sbc	#0x00
	bcc	00116$
	lda	#0xff
	sec
	sbc	0x101,x
	lda	#0xdf
	sbc	0x102,x
	lda	#0x00
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	bcc	00116$
;	../mbtowc.c: 67: return(-1);
	lda	#0xff
	tax
	jmp	00126$
00116$:
;	../mbtowc.c: 69: if(pwc)
	tsx
	lda	0x113,x
	ora	0x114,x
	beq	00119$
;	../mbtowc.c: 70: *pwc = codepoint;
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
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
00119$:
;	../mbtowc.c: 71: return(codepoint ? seqlen : 0);
	tsx
	lda	0x104,x
	ora	0x103,x
	ora	0x102,x
	ora	0x101,x
	beq	00128$
	lda	0x10f,x
	ldx	#0x00
	jmp	00129$
00128$:
	lda	#0x00
	tax
00129$:
00126$:
;	../mbtowc.c: 72: }
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
