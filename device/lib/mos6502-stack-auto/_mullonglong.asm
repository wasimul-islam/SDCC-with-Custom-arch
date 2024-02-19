;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;ll                        Allocated to stack - sp +24
;lr                        Allocated to stack - sp +32
;ret                       Allocated to stack - sp +1
;i                         Allocated to stack - sp +21
;j                         Allocated to stack - sp +20
;l                         Allocated to stack - sp +19
;r                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +11
;sloc1                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../_mullonglong.c: 39: long long _mullonglong(long long ll, long long lr) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 21 bytes.
__mullonglong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xeb
	tax
	txs
;	../_mullonglong.c: 41: unsigned long long ret = 0ull;
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
;	../_mullonglong.c: 44: for (i = 0; i < sizeof (long long); i++)
	sta	0x115,x
00106$:
;	../_mullonglong.c: 46: unsigned char l = ll >> (i * 8);
	tsx
	lda	0x115,x
	asl	a
	asl	a
	asl	a
	pha
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
	jsr	__rrslonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x114,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x116,x
	lda	*___SDCC_m6502_ret3
	sta	0x117,x
	lda	*___SDCC_m6502_ret4
	sta	0x118,x
	lda	*___SDCC_m6502_ret5
	sta	0x119,x
	lda	*___SDCC_m6502_ret6
	sta	0x11a,x
	lda	*___SDCC_m6502_ret7
	sta	0x11b,x
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
	lda	0x10b,x
	sta	0x113,x
;	../_mullonglong.c: 47: for(j = 0; (i + j) < sizeof (long long); j++)
	lda	#0x00
	sta	0x114,x
00104$:
	tsx
	lda	0x115,x
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
	lda	0x114,x
	sta	0x109,x
	lda	#0x00
	sta	0x10a,x
	lda	0x10b,x
	clc
	adc	0x109,x
	pha
	lda	0x10c,x
	adc	0x10a,x
	tax
	pla
	sec
	sbc	#0x08
	txa
	sbc	#0x00
	bvc	00129$
	bpl	00128$
	bmi	00130$
00129$:
	bmi	00128$
00130$:
	jmp	00107$
00128$:
;	../_mullonglong.c: 49: unsigned char r = lr >> (j * 8);
	tsx
	lda	0x114,x
	asl	a
	asl	a
	asl	a
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	jsr	__rrslonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x114,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x116,x
	lda	*___SDCC_m6502_ret3
	sta	0x117,x
	lda	*___SDCC_m6502_ret4
	sta	0x118,x
	lda	*___SDCC_m6502_ret5
	sta	0x119,x
	lda	*___SDCC_m6502_ret6
	sta	0x11a,x
	lda	*___SDCC_m6502_ret7
	sta	0x11b,x
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
	lda	0x10b,x
;	../_mullonglong.c: 50: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x113,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__muluchar
	pha
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a, x
	sta	0x10c,x
	lda	0x10b,x
	sta	0x10d,x
	lda	#0x00
	sta	0x10e,x
	sta	0x10f,x
	sta	0x110,x
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	0x116,x
	clc
	adc	0x115,x
	asl	a
	asl	a
	asl	a
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
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
	jsr	__rlulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x114,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x116,x
	lda	*___SDCC_m6502_ret3
	sta	0x117,x
	lda	*___SDCC_m6502_ret4
	sta	0x118,x
	lda	*___SDCC_m6502_ret5
	sta	0x119,x
	lda	*___SDCC_m6502_ret6
	sta	0x11a,x
	lda	*___SDCC_m6502_ret7
	sta	0x11b,x
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
	lda	0x101,x
	clc
	adc	0x10b,x
	sta	0x101,x
	lda	0x102,x
	adc	0x10c,x
	sta	0x102,x
	lda	0x103,x
	adc	0x10d,x
	sta	0x103,x
	lda	0x104,x
	adc	0x10e,x
	sta	0x104,x
	lda	0x105,x
	adc	0x10f,x
	sta	0x105,x
	lda	0x106,x
	adc	0x110,x
	sta	0x106,x
	lda	0x107,x
	adc	0x111,x
	sta	0x107,x
	lda	0x108,x
	adc	0x112,x
	sta	0x108,x
;	../_mullonglong.c: 47: for(j = 0; (i + j) < sizeof (long long); j++)
	lda	0x114,x
	clc
	adc	#0x01
	sta	0x114,x
	jmp	00104$
00107$:
;	../_mullonglong.c: 44: for (i = 0; i < sizeof (long long); i++)
	tsx
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x115, x
	cmp	#0x08
	bcs	00131$
	jmp	00106$
00131$:
;	../_mullonglong.c: 54: return(ret);
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
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
;	../_mullonglong.c: 55: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x15
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
