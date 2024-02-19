;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isnan
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isnan
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
;Allocation info for local variables in function 'isnan'
;------------------------------------------------------------
;f                         Allocated to stack - sp +7
;pl                        Allocated to registers a x 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../isnan.c: 33: int isnan (float f)
;	-----------------------------------------
;	 function isnan
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_isnan:
	pha
	pha
	pha
	pha
;	../isnan.c: 35: unsigned long *pl = (unsigned long *) &f;
	tsx
	txa
	clc
	adc	#0x07
	ldx	#0x01
;	../isnan.c: 37: return (*pl & 0x7fffffff) > 0x7f800000;
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x101,x
	iny
	lda	[__DPTR],y
	sta	0x102,x
	iny
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104, x
	and	#0x7f
	sta	0x104,x
	lda	#0x00
	sec
	sbc	0x101,x
	lda	#0x00
	sbc	0x102,x
	lda	#0x80
	sbc	0x103,x
	lda	#0x7f
	sbc	0x104,x
	bcc	00103$
	lda	#0x00
	jmp	00104$
00103$:
	lda	#0x01
00104$:
	ldx	#0x00
;	../isnan.c: 38: }
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
