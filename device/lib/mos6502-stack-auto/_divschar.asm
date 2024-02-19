;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divschar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divschar
	.globl __divuschar
	.globl __divsuchar
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
;Allocation info for local variables in function '_divschar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_divschar.c: 31: _divschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _divschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__divschar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_divschar.c: 33: return ((int)x / (int)y);
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
	jsr	__divsint
	sta	*(__TEMP+0)
	pla
	pla
;	../_divschar.c: 34: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_divuschar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_divschar.c: 37: _divuschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _divuschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__divuschar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_divschar.c: 39: return ((int)((signed char)x) / (int)y);
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
	jsr	__divsint
	sta	*(__TEMP+0)
	pla
	pla
;	../_divschar.c: 40: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_divsuchar'
;------------------------------------------------------------
;y                         Allocated to registers y 
;x                         Allocated to registers a 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_divschar.c: 43: _divsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _divsuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__divsuchar:
	pha
	pha
	stx	*(__TEMP+0)
	ldy	*(__TEMP+0)
;	../_divschar.c: 45: return ((int)((unsigned char)x) / (int)y);
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
	jsr	__divsint
	sta	*(__TEMP+0)
	pla
	pla
;	../_divschar.c: 46: }
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
