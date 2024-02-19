;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong
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
;Allocation info for local variables in function '_divslong'
;------------------------------------------------------------
;x                         Allocated to stack - sp +13
;y                         Allocated to stack - sp +17
;r                         Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +10
;sloc1                     Allocated to stack - sp +6
;sloc2                     Allocated to stack - sp +5
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_divslong.c: 265: _divslong (long x, long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divslong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
__divslong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_divslong.c: 269: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	tsx
	lda	0x110,x
	sec
	sbc	#0x00
	bvc	00124$
	bpl	00122$
	bmi	00125$
00124$:
	bmi	00122$
00125$:
	lda	#0x00
	jmp	00123$
00122$:
	lda	#0x01
00123$:
	sta	0x10a, x
	beq	00106$
	lda	#0x00
	sec
	sbc	0x10d,x
	sta	0x106,x
	lda	#0x00
	sbc	0x10e,x
	sta	0x107,x
	lda	#0x00
	sbc	0x10f,x
	sta	0x108,x
	lda	#0x00
	sbc	0x110,x
	sta	0x109,x
	jmp	00107$
00106$:
	tsx
	lda	0x10d,x
	sta	0x106,x
	lda	0x10e,x
	sta	0x107,x
	lda	0x10f,x
	sta	0x108,x
	lda	0x110,x
	sta	0x109,x
00107$:
	tsx
	lda	0x114,x
	sec
	sbc	#0x00
	bvc	00129$
	bpl	00127$
	bmi	00130$
00129$:
	bmi	00127$
00130$:
	lda	#0x00
	jmp	00128$
00127$:
	lda	#0x01
00128$:
	sta	0x105, x
	beq	00108$
	lda	#0x00
	sec
	sbc	0x111,x
	sta	0x101,x
	lda	#0x00
	sbc	0x112,x
	sta	0x102,x
	lda	#0x00
	sbc	0x113,x
	sta	0x103,x
	lda	#0x00
	sbc	0x114,x
	sta	0x104,x
	jmp	00109$
00108$:
	tsx
	lda	0x111,x
	sta	0x101,x
	lda	0x112,x
	sta	0x102,x
	lda	0x113,x
	sta	0x103,x
	lda	0x114,x
	sta	0x104,x
00109$:
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	../_divslong.c: 270: if ((x < 0) ^ (y < 0))
	jsr	__divulong
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
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
	lda	0x10a,x
	eor	0x105,x
	beq	00102$
;	../_divslong.c: 271: return -r;
	lda	#0x00
	sec
	sbc	0x101,x
	sta	0x106,x
	lda	#0x00
	sbc	0x102,x
	sta	0x107,x
	lda	#0x00
	sbc	0x103,x
	sta	0x108,x
	lda	#0x00
	sbc	0x104,x
	sta	0x109, x
	sta	*___SDCC_m6502_ret3
	lda	0x108,x
	sta	*___SDCC_m6502_ret2
	lda	0x107,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x106,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00104$
00102$:
;	../_divslong.c: 273: return r;
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
00104$:
;	../_divslong.c: 274: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
