;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul
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
;Allocation info for local variables in function '__fsmul'
;------------------------------------------------------------
;a1                        Allocated to stack - sp +30
;a2                        Allocated to stack - sp +34
;fl1                       Allocated to stack - sp +9
;fl2                       Allocated to stack - sp +5
;result                    Allocated to stack - sp +1
;exp                       Allocated to stack - sp +26
;sign                      Allocated to stack - sp +25
;sloc0                     Allocated to stack - sp +21
;sloc1                     Allocated to stack - sp +17
;sloc2                     Allocated to stack - sp +13
;------------------------------------------------------------
;	../_fsmul.c: 241: float __fsmul (float a1, float a2) {
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 27 bytes.
___fsmul:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe5
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_fsmul.c: 247: fl1.f = a1;
	tsx
	txa
	clc
	adc	#0x09
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	tsx
	lda	0x11e,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x11f,x
	iny
	sta	[__DPTR],y
	lda	0x120,x
	iny
	sta	[__DPTR],y
	lda	0x121,x
	iny
	sta	[__DPTR],y
;	../_fsmul.c: 248: fl2.f = a2;
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__TEMP+0)
	tsx
	lda	0x122,x
	php
	ldx	#0x01
	plp
	ldy	#0x00
	sta	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	lda	0x123,x
	php
	ldx	#0x01
	plp
	iny
	sta	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	lda	0x124,x
	php
	ldx	#0x01
	plp
	iny
	sta	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	lda	0x125,x
	php
	ldx	#0x01
	plp
	iny
	sta	[__DPTR],y
;	../_fsmul.c: 250: if (!fl1.l || !fl2.l)
	tsx
	txa
	clc
	adc	#0x09
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x118,x
	tsx
	lda	0x118,x
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
	beq	00101$
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x118,x
	tsx
	lda	0x118,x
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
	bne	00102$
00101$:
;	../_fsmul.c: 251: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00113$
00102$:
;	../_fsmul.c: 254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	tsx
	txa
	clc
	adc	#0x09
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x115,x
	iny
	lda	[__DPTR],y
	sta	0x116,x
	iny
	lda	[__DPTR],y
	sta	0x117,x
	iny
	lda	[__DPTR],y
	sta	0x118, x
	rol	a
	lda	#0x00
	rol	a
	sta	0x115,x
	pha
	lda	#0x00
	sta	0x116,x
	lda	#0x00
	sta	0x117,x
	lda	#0x00
	sta	0x118,x
	pla
	lda	0x115,x
	and	#0x01
	sta	0x115,x
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x112,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x113,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x114,x
	tsx
	lda	0x114,x
	rol	a
	lda	#0x00
	rol	a
	sta	0x111,x
	pha
	lda	#0x00
	sta	0x112,x
	lda	#0x00
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
	pla
	lda	0x111,x
	and	#0x01
	eor	0x115,x
	sta	0x119,x
;	../_fsmul.c: 255: exp = EXP (fl1.l) - EXCESS;
	txa
	clc
	adc	#0x09
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x112,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x113,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x114,x
	tsx
	lda	0x113,x
	sta	*(__TEMP+0)
	lda	0x114,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x113,x
	pla
	sta	0x112,x
	lda	0x113,x
	pha
	lda	#0x00
	sta	0x114,x
	lda	#0x00
	sta	0x115,x
	pla
	lda	0x112,x
	sta	*(__TEMP+0)
	lda	0x113,x
	tax
	lda	*(__TEMP+0)
	ldx	#0x00
	sec
	sbc	#0x7e
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	#0x00
	txa
	sbc	#0x00
	stx	*(__TEMP+0)
	tsx
	sta	0x112,x
;	../_fsmul.c: 256: exp += EXP (fl2.l);
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x118,x
	tsx
	lda	0x117,x
	sta	*(__TEMP+0)
	lda	0x118,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x117,x
	pla
	sta	0x116,x
	lda	0x117,x
	pha
	lda	#0x00
	sta	0x118,x
	lda	#0x00
	sta	0x119,x
	pla
	lda	0x116,x
	sta	0x116,x
	lda	0x117,x
	sta	0x117,x
	lda	0x116,x
	sta	0x116,x
	lda	#0x00
	sta	0x117,x
	lda	0x112,x
	clc
	adc	0x116,x
	sta	0x11b,x
	lda	0x113,x
	adc	0x117,x
	sta	0x11c,x
;	../_fsmul.c: 258: fl1.l = MANT (fl1.l);
	txa
	clc
	adc	#0x0a
	sta	0x112,x
	lda	#0x01
	sta	0x113,x
	txa
	clc
	adc	#0x0a
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x118,x
	tsx
	lda	#0x00
	sta	0x118,x
	lda	0x117,x
	ora	#0x80
	sta	0x117,x
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	lda	0x115,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x116,x
	iny
	sta	[__DPTR],y
	lda	0x117,x
	iny
	sta	[__DPTR],y
	lda	0x118,x
	iny
	sta	[__DPTR],y
;	../_fsmul.c: 259: fl2.l = MANT (fl2.l);
	txa
	clc
	adc	#0x05
	sta	0x111,x
	lda	#0x01
	sta	0x112,x
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x115,x
	iny
	lda	[__DPTR],y
	sta	0x116,x
	iny
	lda	[__DPTR],y
	sta	0x117,x
	iny
	lda	[__DPTR],y
	sta	0x118,x
	lda	#0x00
	sta	0x118,x
	lda	0x117,x
	ora	#0x80
	sta	0x117,x
	lda	0x111,x
	sta	*(__DPTR+0)
	lda	0x112,x
	sta	*(__DPTR+1)
	lda	0x115,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x116,x
	iny
	sta	[__DPTR],y
	lda	0x117,x
	iny
	sta	[__DPTR],y
	lda	0x118,x
	iny
	sta	[__DPTR],y
;	../_fsmul.c: 262: result = (unsigned long)((unsigned short)(fl1.l >> 8)) * (unsigned short)(fl2.l >> 8);
	txa
	clc
	adc	#0x09
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	iny
	lda	[__DPTR],y
	sta	0x112,x
	iny
	lda	[__DPTR],y
	sta	0x113,x
	iny
	lda	[__DPTR],y
	sta	0x114,x
	lda	0x112,x
	sta	0x111,x
	lda	0x113,x
	sta	0x112,x
	lda	0x114,x
	sta	0x113,x
	pha
	lda	#0x00
	sta	0x114,x
	pla
	lda	0x111,x
	sta	0x111,x
	lda	0x112,x
	sta	0x112,x
	lda	0x111,x
	sta	0x111,x
	lda	0x112,x
	sta	0x112,x
	lda	#0x00
	sta	0x113,x
	sta	0x114,x
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x118,x
	tsx
	lda	0x116,x
	sta	0x115,x
	lda	0x117,x
	sta	0x116,x
	lda	0x118,x
	sta	0x117,x
	pha
	lda	#0x00
	sta	0x118,x
	pla
	lda	0x115,x
	sta	0x115,x
	lda	0x116,x
	sta	0x116,x
	lda	0x115,x
	sta	0x115,x
	lda	0x116,x
	sta	0x116,x
	lda	#0x00
	sta	0x117,x
	sta	0x118, x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	../_fsmul.c: 263: result += ((unsigned long)((unsigned short)(fl1.l & 0xff)) * (unsigned short)(fl2.l >> 8)) >> 8;
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	txa
	clc
	adc	#0x09
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x118,x
	tsx
	lda	0x115,x
	sta	*(__TEMP+0)
	lda	0x116,x
	tax
	lda	*(__TEMP+0)
	ldx	#0x00
	pha
	txa
	tsx
	sta	0x117,x
	pla
	sta	0x116,x
	lda	0x117,x
	pha
	lda	#0x00
	sta	0x118,x
	lda	#0x00
	sta	0x119,x
	pla
	txa
	clc
	adc	#0x06
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x10f,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x110,x
	tsx
	lda	0x10e,x
	sta	0x10d,x
	lda	0x10f,x
	sta	0x10e,x
	lda	0x110,x
	sta	0x10f,x
	pha
	lda	#0x00
	sta	0x110,x
	pla
	lda	0x10d,x
	sta	0x10d,x
	lda	0x10e,x
	sta	0x10e,x
	lda	0x10d,x
	sta	0x10d,x
	lda	0x10e,x
	sta	0x10e,x
	lda	#0x00
	sta	0x10f,x
	sta	0x110, x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x10e,x
	sta	0x10d,x
	lda	0x10f,x
	sta	0x10e,x
	lda	0x110,x
	sta	0x10f,x
	pha
	lda	#0x00
	sta	0x110,x
	pla
	lda	0x111,x
	clc
	adc	0x10d,x
	sta	0x10d,x
	lda	0x112,x
	adc	0x10e,x
	sta	0x10e,x
	lda	0x113,x
	adc	0x10f,x
	sta	0x10f,x
	lda	0x114,x
	adc	0x110,x
	sta	0x110,x
;	../_fsmul.c: 264: result += ((unsigned long)((unsigned short)(fl2.l & 0xff)) * (unsigned short)(fl1.l >> 8)) >> 8;
	txa
	clc
	adc	#0x05
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x112,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x113,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x114,x
	tsx
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	ldx	#0x00
	pha
	txa
	tsx
	sta	0x113,x
	pla
	sta	0x112,x
	lda	0x113,x
	pha
	lda	#0x00
	sta	0x114,x
	lda	#0x00
	sta	0x115,x
	pla
	txa
	clc
	adc	#0x0a
	ldx	#0x01
	sta	*(__DPTR+0)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x116,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	#0x01
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x118,x
	tsx
	lda	0x116,x
	sta	0x115,x
	lda	0x117,x
	sta	0x116,x
	lda	0x118,x
	sta	0x117,x
	pha
	lda	#0x00
	sta	0x118,x
	pla
	lda	0x115,x
	sta	0x115,x
	lda	0x116,x
	sta	0x116,x
	lda	0x115,x
	sta	0x115,x
	lda	0x116,x
	sta	0x116,x
	lda	#0x00
	sta	0x117,x
	sta	0x118, x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	stx	*(__TEMP+0)
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x112,x
	sta	0x111,x
	lda	0x113,x
	sta	0x112,x
	lda	0x114,x
	sta	0x113,x
	pha
	lda	#0x00
	sta	0x114,x
	pla
	lda	0x10d,x
	clc
	adc	0x111,x
	sta	0x10d,x
	lda	0x10e,x
	adc	0x112,x
	sta	0x10e,x
	lda	0x10f,x
	adc	0x113,x
	sta	0x10f,x
	lda	0x110,x
	adc	0x114,x
	sta	0x110,x
;	../_fsmul.c: 267: result += 0x40;
	lda	0x10d,x
	clc
	adc	#0x40
	sta	0x111,x
	lda	0x10e,x
	adc	#0x00
	sta	0x112,x
	lda	0x10f,x
	adc	#0x00
	sta	0x113,x
	lda	0x110,x
	adc	#0x00
	sta	0x114,x
;	../_fsmul.c: 269: if (result & SIGNBIT)
	lda	#0x80
	and	0x114,x
	beq	00105$
;	../_fsmul.c: 272: result += 0x40;
	lda	0x10d,x
	clc
	adc	#0x80
	sta	0x10d,x
	lda	0x10e,x
	adc	#0x00
	sta	0x10e,x
	lda	0x10f,x
	adc	#0x00
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
;	../_fsmul.c: 273: result >>= 8;
	lda	0x10e,x
	sta	0x101,x
	lda	0x10f,x
	sta	0x102,x
	lda	0x110,x
	sta	0x103,x
	pha
	lda	#0x00
	sta	0x104,x
	pla
	jmp	00106$
00105$:
;	../_fsmul.c: 277: result >>= 7;
	tsx
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x114,x
	asl	a
	ora	0x103,x
	sta	0x103,x
	lda	0x114,x
	sta	*(__TEMP+0)
	lda	0x115,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x105,x
	pla
	sta	0x104,x
;	../_fsmul.c: 278: exp--;
	lda	0x11b,x
	sec
	sbc	#0x01
	sta	0x11b,x
	lda	0x11c,x
	sbc	#0x00
	sta	0x11c,x
00106$:
;	../_fsmul.c: 281: result &= ~HIDDEN;
	tsx
	lda	0x103,x
	and	#0x7f
	sta	0x103,x
;	../_fsmul.c: 284: if (exp >= 0x100)
	lda	0x11b,x
	sec
	sbc	#0x01
	bvs	00153$
	bpl	00152$
	bmi	00111$
00153$:
	bpl	00111$
00152$:
;	../_fsmul.c: 285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	txa
	clc
	adc	#0x09
	sta	0x10d,x
	lda	#0x01
	sta	0x10e,x
	lda	0x119,x
	beq	00115$
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	#0x80
	sta	0x114,x
	jmp	00116$
00115$:
	tsx
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
00116$:
	tsx
	lda	0x113,x
	ora	#0x80
	sta	0x113,x
	lda	0x114,x
	ora	#0x7f
	sta	0x114,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	0x111,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x112,x
	iny
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
	lda	0x114,x
	iny
	sta	[__DPTR],y
	jmp	00112$
00111$:
;	../_fsmul.c: 286: else if (exp < 0)
	tsx
	lda	0x11b,x
	sec
	sbc	#0x00
	bvc	00157$
	bpl	00156$
	bmi	00108$
00157$:
	bpl	00108$
00156$:
;	../_fsmul.c: 287: fl1.l = 0;
	txa
	clc
	adc	#0x09
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
	jmp	00112$
00108$:
;	../_fsmul.c: 289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	tsx
	txa
	clc
	adc	#0x09
	sta	0x10d,x
	lda	#0x01
	sta	0x10e,x
	lda	0x119,x
	beq	00117$
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	#0x80
	sta	0x114,x
	jmp	00118$
00117$:
	tsx
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
00118$:
	tsx
	lda	0x11a,x
	sta	0x115,x
	lda	0x11b,x
	sta	0x116,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x117,x
	sta	0x118,x
	lda	0x115,x
	sta	*(__TEMP+0)
	lda	0x116,x
	tax
	lda	*(__TEMP+0)
	pha
	txa
	lsr	a
	tax
	pla
	ror	a
	tax
	lda	#0x00
	ror	a
	pha
	txa
	tsx
	sta	0x119,x
	pla
	sta	0x118,x
	lda	#0x00
	sta	0x116,x
	sta	0x117,x
	lda	0x112,x
	ora	0x116,x
	sta	0x112,x
	lda	0x113,x
	ora	0x117,x
	sta	0x113,x
	lda	0x114,x
	ora	0x118,x
	sta	0x114,x
	lda	0x115,x
	ora	0x119,x
	sta	0x115,x
	lda	0x112,x
	ora	0x102,x
	sta	0x112,x
	lda	0x113,x
	ora	0x103,x
	sta	0x113,x
	lda	0x114,x
	ora	0x104,x
	sta	0x114,x
	lda	0x115,x
	ora	0x105,x
	sta	0x115,x
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	lda	0x112,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x113,x
	iny
	sta	[__DPTR],y
	lda	0x114,x
	iny
	sta	[__DPTR],y
	lda	0x115,x
	iny
	sta	[__DPTR],y
00112$:
;	../_fsmul.c: 290: return (fl1.f);
	tsx
	txa
	clc
	adc	#0x09
	ldx	#0x01
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x10d,x
	iny
	lda	[__DPTR],y
	sta	0x10e,x
	iny
	lda	[__DPTR],y
	sta	0x10f,x
	iny
	lda	[__DPTR],y
	sta	0x110, x
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
00113$:
;	../_fsmul.c: 291: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x1b
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
