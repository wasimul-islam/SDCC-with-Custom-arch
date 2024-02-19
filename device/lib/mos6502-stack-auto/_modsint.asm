;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modsint
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modsint
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
;Allocation info for local variables in function '_modsint'
;------------------------------------------------------------
;b                         Allocated to stack - sp +5
;a                         Allocated to registers a x 
;r                         Allocated to registers a x 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_modsint.c: 209: int _modsint (int a, int b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modsint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__modsint:
	pha
	pha
;	../_modsint.c: 213: r = (unsigned)(a < 0 ? -a : a) % (unsigned)(b < 0 ? -b : b);
	sta	*(__TEMP+0)
	txa
	sec
	sbc	#0x00
	bvc	00124$
	bpl	00122$
	bmi	00125$
00124$:
	bmi	00122$
00125$:
	lda	#0x00
	jmp	00123$
00122$:
	lda	#0x01
00123$:
	tay
	lda	*(__TEMP+0)
	cpy	#0x00
	beq	00106$
	eor	#0xff
	clc
	adc	#0x01
	pha
	lda	#0x00
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	tax
	pla
	jmp	00107$
00106$:
00107$:
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x107, x
	sec
	sbc	#0x00
	bvc	00128$
	bpl	00127$
	bmi	00108$
00128$:
	bpl	00108$
00127$:
	lda	#0x00
	sec
	sbc	0x106,x
	pha
	lda	#0x00
	sbc	0x107,x
	tax
	pla
	jmp	00109$
00108$:
	tsx
	lda	0x105,x
	sta	*(__TEMP+0)
	lda	0x106,x
	tax
	lda	*(__TEMP+0)
00109$:
	sta	*(__TEMP+0)
	tya
	pha
	txa
	pha
	lda	*(__TEMP+0)
	pha
	tsx
	lda	0x105,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x104,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__moduint
	sta	*(__TEMP+0)
	pla
	pla
	pla
	tay
	lda	*(__TEMP+0)
;	../_modsint.c: 215: if (a < 0)
	cpy	#0x00
	beq	00102$
;	../_modsint.c: 216: return -r;
	eor	#0xff
	clc
	adc	#0x01
	pha
	lda	#0x00
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	tax
	pla
	jmp	00104$
00102$:
;	../_modsint.c: 218: return r;
00104$:
;	../_modsint.c: 219: }
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
