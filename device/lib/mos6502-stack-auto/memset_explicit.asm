;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module memset_explicit
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset_explcit
	.globl _memset
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
;Allocation info for local variables in function 'memset_explcit'
;------------------------------------------------------------
;c                         Allocated to stack - sp +5
;n                         Allocated to stack - sp +7
;s                         Allocated to stack - sp +1
;------------------------------------------------------------
;	../memset_explicit.c: 32: void *memset_explcit (void *s, int c, size_t n)
;	-----------------------------------------
;	 function memset_explcit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_memset_explcit:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
;	../memset_explicit.c: 34: return(memset(s, c, n));
	tsx
	lda	0x105,x
	tay
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	tya
	pha
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x104,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_memset
	sta	*(__TEMP+0)
	pla
	pla
	pla
;	../memset_explicit.c: 35: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
