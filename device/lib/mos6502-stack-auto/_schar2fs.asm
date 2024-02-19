;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _schar2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___schar2fs
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
;Allocation info for local variables in function '__schar2fs'
;------------------------------------------------------------
;sc                        Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_schar2fs.c: 55: float __schar2fs (signed char sc) {
;	-----------------------------------------
;	 function __schar2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
___schar2fs:
	pha
	pha
	pha
	pha
;	../_schar2fs.c: 56: return __slong2fs(sc);
	tsx
	sta	0x101,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x102,x
	sta	0x103,x
	sta	0x104, x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
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
	lda	0x108, x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_schar2fs.c: 57: }
	sta	*(__TEMP+0)
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
