;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isinf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isinf
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
;Allocation info for local variables in function 'isinf'
;------------------------------------------------------------
;f                         Allocated to stack - sp +7
;pl                        Allocated to registers a x 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../isinf.c: 33: int isinf (float f)
;	-----------------------------------------
;	 function isinf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_isinf:
	pha
	pha
	pha
	pha
;	../isinf.c: 35: unsigned long *pl = (unsigned long *) &f;
	tsx
	txa
	clc
	adc	#0x07
	ldx	#0x01
;	../isinf.c: 36: return *pl == 0x7f800000 || *pl == 0xff800000;
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
	sta	0x104,x
	lda	0x101,x
	bne	00115$
	lda	0x102,x
	bne	00115$
	lda	0x103,x
	cmp	#0x80
	bne	00115$
	lda	0x104,x
	cmp	#0x7f
	beq	00104$
00115$:
	lda	0x101,x
	bne	00119$
	lda	0x102,x
	bne	00119$
	lda	0x103,x
	cmp	#0x80
	bne	00119$
	lda	0x104,x
	cmp	#0xff
	beq	00104$
00119$:
	lda	#0x00
	jmp	00105$
00104$:
	lda	#0x01
00105$:
	ldx	#0x00
;	../isinf.c: 37: }
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
