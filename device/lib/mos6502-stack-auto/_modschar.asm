;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modschar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modschar
	.globl __moduschar
	.globl __modsuchar
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
;Allocation info for local variables in function '_modschar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_modschar.c: 31: _modschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _modschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__modschar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_modschar.c: 33: return ((int)x % (int)y);
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
	jsr	__modsint
	sta	*(__TEMP+0)
	pla
	pla
;	../_modschar.c: 34: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_moduschar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_modschar.c: 37: _moduschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _moduschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__moduschar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_modschar.c: 39: return ((int)((signed char)x) % (int)y);
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
	jsr	__modsint
	sta	*(__TEMP+0)
	pla
	pla
;	../_modschar.c: 40: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_modsuchar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_modschar.c: 43: _modsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _modsuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__modsuchar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_modschar.c: 45: return ((int)((unsigned char)x) % (int)y);
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
	jsr	__modsint
	sta	*(__TEMP+0)
	pla
	pla
;	../_modschar.c: 46: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
