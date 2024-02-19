;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strdup
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl _strlen
	.globl _strcpy
	.globl _strdup
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
;Allocation info for local variables in function 'strdup'
;------------------------------------------------------------
;s                         Allocated to stack - sp +3
;r                         Allocated to stack - sp +1
;------------------------------------------------------------
;	../strdup.c: 33: char *strdup (const char *s)
;	-----------------------------------------
;	 function strdup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_strdup:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
;	../strdup.c: 35: char *r = malloc(strlen(s) + 1);
	tsx
	lda	0x104,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strlen
	clc
	adc	#0x01
	bcc	00109$
	inx
00109$:
	jsr	_malloc
	pha
	txa
	tsx
	sta	0x103,x
	pla
;	../strdup.c: 36: if (r)
	sta	0x102, x
	ora	0x103,x
	beq	00102$
;	../strdup.c: 37: strcpy(r, s);
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x103,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strcpy
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
00102$:
;	../strdup.c: 38: return (r);
	tsx
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
;	../strdup.c: 39: }
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
