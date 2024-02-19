;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong
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
;Allocation info for local variables in function '_divulonglong'
;------------------------------------------------------------
;x                         Allocated to stack - sp +21
;y                         Allocated to stack - sp +29
;reste                     Allocated to stack - sp +1
;count                     Allocated to stack - sp +18
;c                         Allocated to stack - sp +17
;sloc0                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../_divulonglong.c: 43: _divulonglong (unsigned long long x, unsigned long long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
__divulonglong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	../_divulonglong.c: 45: unsigned long long reste = 0L;
	tsx
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	../_divulonglong.c: 49: do
	lda	#0x40
	sta	0x112,x
00105$:
;	../_divulonglong.c: 52: c = MSB_SET(x);
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
	sta	0x112,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x113,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x114,x
	lda	*___SDCC_m6502_ret3
	sta	0x115,x
	lda	*___SDCC_m6502_ret4
	sta	0x116,x
	lda	*___SDCC_m6502_ret5
	sta	0x117,x
	lda	*___SDCC_m6502_ret6
	sta	0x118,x
	lda	*___SDCC_m6502_ret7
	sta	0x119,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x109,x
	and	#0x01
	sta	0x111,x
;	../_divulonglong.c: 53: x <<= 1;
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
;	../_divulonglong.c: 54: reste <<= 1;
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
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	jsr	__rlulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x112,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
	lda	*___SDCC_m6502_ret4
	sta	0x115,x
	lda	*___SDCC_m6502_ret5
	sta	0x116,x
	lda	*___SDCC_m6502_ret6
	sta	0x117,x
	lda	*___SDCC_m6502_ret7
	sta	0x118,x
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
;	../_divulonglong.c: 55: if (c)
	tsx
	lda	0x111,x
	beq	00102$
;	../_divulonglong.c: 56: reste |= 1L;
	lda	0x101,x
	ora	#0x01
	sta	0x101,x
00102$:
;	../_divulonglong.c: 58: if (reste >= y)
	tsx
	lda	0x101,x
	sec
	sbc	0x11d,x
	lda	0x102,x
	sbc	0x11e,x
	lda	0x103,x
	sbc	0x11f,x
	lda	0x104,x
	sbc	0x120,x
	lda	0x105,x
	sbc	0x121,x
	lda	0x106,x
	sbc	0x122,x
	lda	0x107,x
	sbc	0x123,x
	lda	0x108,x
	sbc	0x124,x
	bcc	00106$
;	../_divulonglong.c: 60: reste -= y;
	lda	0x101,x
	sec
	sbc	0x11d,x
	sta	0x101,x
	lda	0x102,x
	sbc	0x11e,x
	sta	0x102,x
	lda	0x103,x
	sbc	0x11f,x
	sta	0x103,x
	lda	0x104,x
	sbc	0x120,x
	sta	0x104,x
	lda	0x105,x
	sbc	0x121,x
	sta	0x105,x
	lda	0x106,x
	sbc	0x122,x
	sta	0x106,x
	lda	0x107,x
	sbc	0x123,x
	sta	0x107,x
	lda	0x108,x
	sbc	0x124,x
	sta	0x108,x
;	../_divulonglong.c: 62: x |= 1L;
	lda	0x115,x
	ora	#0x01
	sta	0x115,x
00106$:
;	../_divulonglong.c: 65: while (--count);
	tsx
	lda	0x112,x
	sec
	sbc	#0x01
	sta	0x112, x
	beq	00129$
	jmp	00105$
00129$:
;	../_divulonglong.c: 66: return x;
	lda	0x11c,x
	sta	*___SDCC_m6502_ret7
	lda	0x11b,x
	sta	*___SDCC_m6502_ret6
	lda	0x11a,x
	sta	*___SDCC_m6502_ret5
	lda	0x119,x
	sta	*___SDCC_m6502_ret4
	lda	0x118,x
	sta	*___SDCC_m6502_ret3
	lda	0x117,x
	sta	*___SDCC_m6502_ret2
	lda	0x116,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x115,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_divulonglong.c: 67: }
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
