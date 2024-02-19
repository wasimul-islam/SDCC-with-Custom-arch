;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module modff
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _modff
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
;Allocation info for local variables in function 'modff'
;------------------------------------------------------------
;x                         Allocated to stack - sp +9
;y                         Allocated to stack - sp +13
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../modff.c: 33: float modff(float x, float * y)
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_modff:
	pha
	pha
	pha
	pha
	pha
	pha
;	../modff.c: 35: *y=(long)x;
	tsx
	lda	0x10d,x
	sta	0x105,x
	lda	0x10e,x
	sta	0x106,x
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	jsr	___fs2slong
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	0x108, x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	jsr	___slong2fs
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	0x109, x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	0x105,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x106,x
	iny
	sta	[__DPTR],y
	lda	0x107,x
	iny
	sta	[__DPTR],y
	lda	0x108,x
	iny
	sta	[__DPTR],y
;	../modff.c: 36: return (x-*y);
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	jsr	___fssub
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
;	../modff.c: 37: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
