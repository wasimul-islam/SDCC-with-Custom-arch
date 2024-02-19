;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulonglong
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;a                         Allocated to stack - sp +13
;b                         Allocated to stack - sp +21
;count                     Allocated to stack - sp +10
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_modulonglong.c: 44: _modulonglong (unsigned long long a, unsigned long long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
__modulonglong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	../_modulonglong.c: 46: unsigned char count = 0;
	tsx
	lda	#0x00
	sta	0x109,x
;	../_modulonglong.c: 48: while (!MSB_SET(b))
	sta	0x10a,x
00103$:
	lda	#0x3f
	pha
	tsx
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
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
	jsr	__rrulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10c,x
	lda	*___SDCC_m6502_ret3
	sta	0x10d,x
	lda	*___SDCC_m6502_ret4
	sta	0x10e,x
	lda	*___SDCC_m6502_ret5
	sta	0x10f,x
	lda	*___SDCC_m6502_ret6
	sta	0x110,x
	lda	*___SDCC_m6502_ret7
	sta	0x111,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	tsx
	lda	#0x01
	and	0x101,x
	beq	00139$
	jmp	00117$
00139$:
;	../_modulonglong.c: 50: b <<= 1;
	lda	#0x00
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	lda	#0x01
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
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
	lda	0x115,x
	pha
	jsr	__rlulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x125,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x126,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x127,x
	lda	*___SDCC_m6502_ret3
	sta	0x128,x
	lda	*___SDCC_m6502_ret4
	sta	0x129,x
	lda	*___SDCC_m6502_ret5
	sta	0x12a,x
	lda	*___SDCC_m6502_ret6
	sta	0x12b,x
	lda	*___SDCC_m6502_ret7
	sta	0x12c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_modulonglong.c: 51: if (b > a)
	tsx
	lda	0x10d,x
	sec
	sbc	0x115,x
	lda	0x10e,x
	sbc	0x116,x
	lda	0x10f,x
	sbc	0x117,x
	lda	0x110,x
	sbc	0x118,x
	lda	0x111,x
	sbc	0x119,x
	lda	0x112,x
	sbc	0x11a,x
	lda	0x113,x
	sbc	0x11b,x
	lda	0x114,x
	sbc	0x11c,x
	bcs	00102$
;	../_modulonglong.c: 53: b >>=1;
	lda	#0x00
	pha
	lda	#0x01
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
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
	lda	0x115,x
	pha
	jsr	__rrulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x11f,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x120,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x121,x
	lda	*___SDCC_m6502_ret3
	sta	0x122,x
	lda	*___SDCC_m6502_ret4
	sta	0x123,x
	lda	*___SDCC_m6502_ret5
	sta	0x124,x
	lda	*___SDCC_m6502_ret6
	sta	0x125,x
	lda	*___SDCC_m6502_ret7
	sta	0x126,x
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
;	../_modulonglong.c: 54: break;
	jmp	00117$
00102$:
;	../_modulonglong.c: 56: count++;
	tsx
	lda	0x10a,x
	clc
	adc	#0x01
	sta	0x10a, x
	sta	0x109,x
	jmp	00103$
;	../_modulonglong.c: 58: do
00117$:
	tsx
	lda	0x109,x
	tay
00108$:
;	../_modulonglong.c: 60: if (a >= b)
	tsx
	lda	0x10d,x
	sec
	sbc	0x115,x
	lda	0x10e,x
	sbc	0x116,x
	lda	0x10f,x
	sbc	0x117,x
	lda	0x110,x
	sbc	0x118,x
	lda	0x111,x
	sbc	0x119,x
	lda	0x112,x
	sbc	0x11a,x
	lda	0x113,x
	sbc	0x11b,x
	lda	0x114,x
	sbc	0x11c,x
	bcc	00107$
;	../_modulonglong.c: 61: a -= b;
	lda	0x10d,x
	sec
	sbc	0x115,x
	sta	0x10d,x
	lda	0x10e,x
	sbc	0x116,x
	sta	0x10e,x
	lda	0x10f,x
	sbc	0x117,x
	sta	0x10f,x
	lda	0x110,x
	sbc	0x118,x
	sta	0x110,x
	lda	0x111,x
	sbc	0x119,x
	sta	0x111,x
	lda	0x112,x
	sbc	0x11a,x
	sta	0x112,x
	lda	0x113,x
	sbc	0x11b,x
	sta	0x113,x
	lda	0x114,x
	sbc	0x11c,x
	sta	0x114,x
00107$:
;	../_modulonglong.c: 62: b >>= 1;
	sta	*(__TEMP+0)
	tya
	pha
	lda	#0x00
	pha
	lda	#0x01
	pha
	tsx
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	jsr	__rrulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x120,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x121,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x122,x
	lda	*___SDCC_m6502_ret3
	sta	0x123,x
	lda	*___SDCC_m6502_ret4
	sta	0x124,x
	lda	*___SDCC_m6502_ret5
	sta	0x125,x
	lda	*___SDCC_m6502_ret6
	sta	0x126,x
	lda	*___SDCC_m6502_ret7
	sta	0x127,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	ldx	*(__TEMP+1)
	pla
;	../_modulonglong.c: 64: while (count--);
	tay
	dey
	cmp	#0x00
	beq	00142$
	jmp	00108$
00142$:
;	../_modulonglong.c: 66: return a;
	tsx
	lda	0x114,x
	sta	*___SDCC_m6502_ret7
	lda	0x113,x
	sta	*___SDCC_m6502_ret6
	lda	0x112,x
	sta	*___SDCC_m6502_ret5
	lda	0x111,x
	sta	*___SDCC_m6502_ret4
	lda	0x110,x
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
;	../_modulonglong.c: 67: }
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
