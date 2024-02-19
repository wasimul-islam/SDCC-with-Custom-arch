;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _moduchar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduchar
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
;Allocation info for local variables in function '_moduchar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_moduchar.c: 30: _moduchar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _moduchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__moduchar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_moduchar.c: 32: return ((unsigned int)x % (unsigned int)y);
	tsx
	sta	0x101,x
	pha
	lda	#0x00
	sta	0x102,x
	pla
	tya
	ldx	#0x00
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	tsx
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__moduint
	sta	*(__TEMP+0)
	pla
	pla
;	../_moduchar.c: 33: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
