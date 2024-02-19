;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c32rtomb
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _c32rtomb
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
;Allocation info for local variables in function 'c32rtomb'
;------------------------------------------------------------
;c32                       Allocated to stack - sp +5
;ps                        Allocated to stack - sp +9
;s                         Allocated to stack - sp +1
;------------------------------------------------------------
;	../c32rtomb.c: 33: size_t c32rtomb(char *restrict s, char32_t c32, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c32rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_c32rtomb:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
;	../c32rtomb.c: 36: return(wctomb(s, c32));
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_wctomb
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
;	../c32rtomb.c: 37: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
