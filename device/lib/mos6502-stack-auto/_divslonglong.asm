;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divslonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslonglong
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
;Allocation info for local variables in function '_divslonglong'
;------------------------------------------------------------
;numerator                 Allocated to stack - sp +21
;denominator               Allocated to stack - sp +29
;numeratorneg              Allocated to stack - sp +18
;denominatorneg            Allocated to stack - sp +17
;d                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_divslonglong.c: 40: _divslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
__divslonglong:
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
;	../_divslonglong.c: 42: bool numeratorneg = (numerator < 0);
	tsx
	lda	0x11c,x
	sec
	sbc	#0x00
	bvc	00123$
	bpl	00121$
	bmi	00124$
00123$:
	bmi	00121$
00124$:
	lda	#0x00
	jmp	00122$
00121$:
	lda	#0x01
00122$:
	sta	0x112,x
;	../_divslonglong.c: 43: bool denominatorneg = (denominator < 0);
	lda	0x124,x
	sec
	sbc	#0x00
	bvc	00127$
	bpl	00125$
	bmi	00128$
00127$:
	bmi	00125$
00128$:
	lda	#0x00
	jmp	00126$
00125$:
	lda	#0x01
00126$:
	sta	0x111,x
;	../_divslonglong.c: 46: if (numeratorneg)
	lda	0x112,x
	beq	00102$
;	../_divslonglong.c: 47: numerator = -numerator;
	lda	#0x00
	sec
	sbc	0x115,x
	sta	0x115,x
	lda	#0x00
	sbc	0x116,x
	sta	0x116,x
	lda	#0x00
	sbc	0x117,x
	sta	0x117,x
	lda	#0x00
	sbc	0x118,x
	sta	0x118,x
	lda	#0x00
	sbc	0x119,x
	sta	0x119,x
	lda	#0x00
	sbc	0x11a,x
	sta	0x11a,x
	lda	#0x00
	sbc	0x11b,x
	sta	0x11b,x
	lda	#0x00
	sbc	0x11c,x
	sta	0x11c,x
00102$:
;	../_divslonglong.c: 48: if (denominatorneg)
	tsx
	lda	0x111,x
	beq	00104$
;	../_divslonglong.c: 49: denominator = -denominator;
	lda	#0x00
	sec
	sbc	0x11d,x
	sta	0x11d,x
	lda	#0x00
	sbc	0x11e,x
	sta	0x11e,x
	lda	#0x00
	sbc	0x11f,x
	sta	0x11f,x
	lda	#0x00
	sbc	0x120,x
	sta	0x120,x
	lda	#0x00
	sbc	0x121,x
	sta	0x121,x
	lda	#0x00
	sbc	0x122,x
	sta	0x122,x
	lda	#0x00
	sbc	0x123,x
	sta	0x123,x
	lda	#0x00
	sbc	0x124,x
	sta	0x124,x
00104$:
;	../_divslonglong.c: 51: d = (unsigned long long)numerator / (unsigned long long)denominator;
	tsx
	lda	0x115,x
	sta	0x109,x
	lda	0x116,x
	sta	0x10a,x
	lda	0x117,x
	sta	0x10b,x
	lda	0x118,x
	sta	0x10c,x
	lda	0x119,x
	sta	0x10d,x
	lda	0x11a,x
	sta	0x10e,x
	lda	0x11b,x
	sta	0x10f,x
	lda	0x11c,x
	sta	0x110,x
	lda	0x11d,x
	sta	0x101,x
	lda	0x11e,x
	sta	0x102,x
	lda	0x11f,x
	sta	0x103,x
	lda	0x120,x
	sta	0x104,x
	lda	0x121,x
	sta	0x105,x
	lda	0x122,x
	sta	0x106,x
	lda	0x123,x
	sta	0x107,x
	lda	0x124,x
	sta	0x108, x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
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
;	../_divslonglong.c: 53: return ((numeratorneg ^ denominatorneg) ? -d : d);
	jsr	__divulonglong
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
	tsx
	lda	0x112,x
	eor	0x111,x
	beq	00107$
	lda	#0x00
	sec
	sbc	0x101,x
	sta	0x109,x
	lda	#0x00
	sbc	0x102,x
	sta	0x10a,x
	lda	#0x00
	sbc	0x103,x
	sta	0x10b,x
	lda	#0x00
	sbc	0x104,x
	sta	0x10c,x
	lda	#0x00
	sbc	0x105,x
	sta	0x10d,x
	lda	#0x00
	sbc	0x106,x
	sta	0x10e,x
	lda	#0x00
	sbc	0x107,x
	sta	0x10f,x
	lda	#0x00
	sbc	0x108,x
	sta	0x110,x
	jmp	00108$
00107$:
	tsx
	lda	0x101,x
	sta	0x109,x
	lda	0x102,x
	sta	0x10a,x
	lda	0x103,x
	sta	0x10b,x
	lda	0x104,x
	sta	0x10c,x
	lda	0x105,x
	sta	0x10d,x
	lda	0x106,x
	sta	0x10e,x
	lda	0x107,x
	sta	0x10f,x
	lda	0x108,x
	sta	0x110,x
00108$:
	tsx
	lda	0x110,x
	sta	*___SDCC_m6502_ret7
	lda	0x10f,x
	sta	*___SDCC_m6502_ret6
	lda	0x10e,x
	sta	*___SDCC_m6502_ret5
	lda	0x10d,x
	sta	*___SDCC_m6502_ret4
	lda	0x10c,x
	sta	*___SDCC_m6502_ret3
	lda	0x10b,x
	sta	*___SDCC_m6502_ret2
	lda	0x10a,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x109,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_divslonglong.c: 54: }
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
