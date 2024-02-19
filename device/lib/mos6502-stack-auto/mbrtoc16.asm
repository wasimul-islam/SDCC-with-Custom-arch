;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc16
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc16
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
_mbrtoc16_sps_65536_16:
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
;Allocation info for local variables in function 'mbrtoc16'
;------------------------------------------------------------
;s                         Allocated to stack - sp +21
;n                         Allocated to stack - sp +23
;ps                        Allocated to stack - sp +25
;pc16                      Allocated to stack - sp +17
;codepoint                 Allocated to stack - sp +1
;ret                       Allocated to stack - sp +15
;low_surrogate             Allocated to stack - sp +13
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +5
;sps                       Allocated with name '_mbrtoc16_sps_65536_16'
;------------------------------------------------------------
;	../mbrtoc16.c: 34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_mbrtoc16:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../mbrtoc16.c: 41: if(!s)
	tsx
	lda	0x115,x
	ora	0x116,x
	bne	00102$
;	../mbrtoc16.c: 42: return(mbrtoc16(0, "", 1, ps));
	lda	0x11a,x
	pha
	lda	0x119,x
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
	jsr	_mbrtoc16
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	jmp	00119$
00102$:
;	../mbrtoc16.c: 44: if(!ps)
	tsx
	lda	0x119,x
	ora	0x11a,x
	bne	00104$
;	../mbrtoc16.c: 45: ps = &sps;
	lda	#_mbrtoc16_sps_65536_16
	sta	0x119,x
	lda	#>_mbrtoc16_sps_65536_16
	sta	0x11a,x
00104$:
;	../mbrtoc16.c: 47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
	tsx
	lda	0x119,x
	sta	0x10b,x
	lda	0x11a,x
	sta	0x10c,x
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00159$
	jmp	00108$
00159$:
	lda	0x10b,x
	sta	0x109,x
	lda	0x10c,x
	sta	0x10a,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	bne	00107$
	lda	0x10b,x
	sta	0x109,x
	lda	0x10c,x
	sta	0x10a,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	bne	00161$
	jmp	00108$
00161$:
00107$:
;	../mbrtoc16.c: 49: if(pc16)
	tsx
	lda	0x111,x
	ora	0x112,x
	beq	00106$
;	../mbrtoc16.c: 50: *pc16 = ps->c[1] + (ps->c[2] << 8);
	lda	0x119,x
	sta	0x109,x
	lda	0x11a,x
	sta	0x10a,x
	lda	0x109,x
	sta	0x10b,x
	lda	0x10a,x
	sta	0x10c,x
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tay
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	tax
	lda	#0x00
	clc
	stx	*(__TEMP+0)
	tsx
	adc	0x10b,x
	php
	ldx	*(__TEMP+0)
	plp
	pha
	txa
	stx	*(__TEMP+0)
	tsx
	adc	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
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
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
00106$:
;	../mbrtoc16.c: 51: ps->c[1] = ps->c[2] = 0;
	tsx
	lda	0x119,x
	sta	0x109,x
	lda	0x11a,x
	sta	0x10a,x
	lda	0x109,x
	sta	0x10b,x
	lda	0x10a,x
	sta	0x10c,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	#0x00
	ldy	#0x02
	sta	[__DPTR],y
	lda	0x10b,x
	sta	*(__DPTR+0)
	lda	0x10c,x
	sta	*(__DPTR+1)
	lda	#0x00
	dey
	sta	[__DPTR],y
;	../mbrtoc16.c: 52: return(-3);
	lda	#0xfd
	ldx	#0xff
	jmp	00119$
00108$:
;	../mbrtoc16.c: 55: ret = mbrtowc(&codepoint, s, n, ps);
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
	lda	0x11b, x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x10b,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_mbrtowc
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
;	../mbrtoc16.c: 57: if(ret > MB_LEN_MAX)
	tsx 
	lda	#0x04
	sec
	sbc	0x10f,x
	lda	#0x00
	sbc	0x110,x
	bcs	00112$
;	../mbrtoc16.c: 58: return(ret);
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00119$
00112$:
;	../mbrtoc16.c: 60: if (codepoint <= 0xffff) // Basic multilingual plane
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
	bcc	00116$
;	../mbrtoc16.c: 62: if(pc16)
	lda	0x111,x
	ora	0x112,x
	beq	00114$
;	../mbrtoc16.c: 63: *pc16 = codepoint;
	lda	0x101,x
	sta	0x109,x
	lda	0x102,x
	sta	0x10a,x
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
00114$:
;	../mbrtoc16.c: 64: return(ret);
	tsx
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00119$
00116$:
;	../mbrtoc16.c: 67: codepoint -= 0x100000;
	tsx
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
;	../mbrtoc16.c: 68: if(pc16)
	lda	0x111,x
	ora	0x112,x
	bne	00166$
	jmp	00118$
00166$:
;	../mbrtoc16.c: 69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
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
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
00118$:
;	../mbrtoc16.c: 70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
	tsx
	lda	0x101,x
	sta	*(__TEMP+0)
	lda	0x102,x
	tax
	and	#0x03
	tax
	lda	*(__TEMP+0)
	clc
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	clc
	adc	#0xdc
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
;	../mbrtoc16.c: 71: ps->c[0] = 0;
	tsx
	lda	0x119,x
	sta	0x105,x
	lda	0x11a,x
	sta	0x106,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../mbrtoc16.c: 72: ps->c[1] = low_surrogate & 0xff;
	lda	0x105,x
	sta	0x109,x
	lda	0x106,x
	sta	0x10a,x
	lda	0x10d,x
	sta	*(__TEMP+0)
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../mbrtoc16.c: 73: ps->c[2] = low_surrogate >> 8;
	lda	0x10e,x
	sta	*(__TEMP+0)
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	iny
	sta	[__DPTR],y
;	../mbrtoc16.c: 75: return(ret);
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
	php
	ldx	*(__TEMP+0)
	plp
00119$:
;	../mbrtoc16.c: 76: }
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
	.area RODATA
___str_0:
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
