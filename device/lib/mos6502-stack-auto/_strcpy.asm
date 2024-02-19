;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strcpy
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy
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
;Allocation info for local variables in function 'strcpy'
;------------------------------------------------------------
;s                         Allocated to stack - sp +10
;d                         Allocated to stack - sp +6
;d1                        Allocated to stack - sp +4
;sloc0                     Allocated to stack - sp +2
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_strcpy.c: 36: char * strcpy ( char * d, const char * s )
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_strcpy:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
	pha
	pha
	pha
;	../_strcpy.c: 48: while (*d1++ = *s++) ;
	tsx
	lda	0x10a,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x106,x
	sta	0x104,x
	lda	0x107,x
	sta	0x105,x
00101$:
	tsx
	lda	0x102,x
	sta	*(__DPTR+0)
	lda	0x103,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x101,x
	lda	0x102,x
	clc
	adc	#0x01
	sta	0x102,x
	lda	0x103,x
	adc	#0x00
	sta	0x103,x
	lda	0x104,x
	sta	*(__DPTR+0)
	lda	0x105,x
	sta	*(__DPTR+1)
	lda	0x101,x
	sta	[__DPTR],y
	lda	0x104,x
	clc
	adc	#0x01
	sta	0x104,x
	lda	0x105,x
	adc	#0x00
	sta	0x105,x
	lda	0x101,x
	bne	00101$
;	../_strcpy.c: 50: return d;
	lda	0x107,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x106,x
	php
	ldx	*(__TEMP+0)
	plp
;	../_strcpy.c: 52: }
	sta	*(__TEMP+0)
	pla
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
