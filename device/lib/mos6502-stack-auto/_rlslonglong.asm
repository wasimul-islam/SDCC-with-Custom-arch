;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlslonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlslonglong
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
;Allocation info for local variables in function '_rlslonglong'
;------------------------------------------------------------
;l                         Allocated to stack - sp +11
;s                         Allocated to stack - sp +19
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_rlslonglong.c: 39: long long _rlslonglong(long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
__rlslonglong:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../_rlslonglong.c: 41: return((unsigned long long)(l) << s);
	tsx
	lda	0x10b,x
	sta	0x101,x
	lda	0x10c,x
	sta	0x102,x
	lda	0x10d,x
	sta	0x103,x
	lda	0x10e,x
	sta	0x104,x
	lda	0x10f,x
	sta	0x105,x
	lda	0x110,x
	sta	0x106,x
	lda	0x111,x
	sta	0x107,x
	lda	0x112,x
	sta	0x108,x
	lda	0x113,x
	pha
	lda	0x108,x
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
	jsr	__rlulonglong
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
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
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
;	../_rlslonglong.c: 42: }
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
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
