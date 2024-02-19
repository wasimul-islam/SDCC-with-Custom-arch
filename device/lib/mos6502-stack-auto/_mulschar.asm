;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mulschar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulschar
	.globl __muluschar
	.globl __mulsuchar
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
;Allocation info for local variables in function '_mulschar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_mulschar.c: 31: _mulschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _mulschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__mulschar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_mulschar.c: 33: return ((int)x * (int)y);
	tsx
	sta	0x101,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x102,x
	tya
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
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
	jsr	__mulint
	sta	*(__TEMP+0)
	pla
	pla
;	../_mulschar.c: 34: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_muluschar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_mulschar.c: 37: _muluschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _muluschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__muluschar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_mulschar.c: 39: return ((int)((signed char)x) * (int)y);
	tsx
	sta	0x101,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x102,x
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
	jsr	__mulint
	sta	*(__TEMP+0)
	pla
	pla
;	../_mulschar.c: 40: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_mulsuchar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_mulschar.c: 43: _mulsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _mulsuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__mulsuchar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_mulschar.c: 45: return ((int)((unsigned char)x) * (int)y);
	tsx
	sta	0x101,x
	pha
	lda	#0x00
	sta	0x102,x
	pla
	tya
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
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
	jsr	__mulint
	sta	*(__TEMP+0)
	pla
	pla
;	../_mulschar.c: 46: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
