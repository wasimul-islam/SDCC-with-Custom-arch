;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divsint
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divsint
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
;Allocation info for local variables in function '_divsint'
;------------------------------------------------------------
;y                         Allocated to stack - sp +6
;x                         Allocated to registers a x 
;r                         Allocated to registers a x 
;sloc0                     Allocated to stack - sp +2
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_divsint.c: 213: _divsint (int x, int y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 3 bytes.
__divsint:
	pha
	pha
	pha
;	../_divsint.c: 217: r = (unsigned int)(x < 0 ? -x : x) / (unsigned int)(y < 0 ? -y : y);
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
	sta	0x104,x
	pla
	sta	0x103,x
	lda	0x108, x
	sec
	sbc	#0x00
	bvc	00129$
	bpl	00127$
	bmi	00130$
00129$:
	bmi	00127$
00130$:
	lda	#0x00
	jmp	00128$
00127$:
	lda	#0x01
00128$:
	sta	0x102, x
	beq	00108$
	lda	#0x00
	sec
	sbc	0x107,x
	pha
	lda	#0x00
	sbc	0x108,x
	tax
	pla
	jmp	00109$
00108$:
	tsx
	lda	0x106,x
	sta	*(__TEMP+0)
	lda	0x107,x
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
	lda	0x106,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__divuint
	sta	*(__TEMP+0)
	pla
	pla
	pla
;	../_divsint.c: 218: if ((x < 0) ^ (y < 0))
	tay
	stx	*(__TEMP+1)
	tsx
	eor	0x101,x
	php
	ldx	*(__TEMP+1)
	plp
	php
	lda	*(__TEMP+0)
	plp
	beq	00102$
;	../_divsint.c: 219: return -r;
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
;	../_divsint.c: 221: return r;
00104$:
;	../_divsint.c: 222: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
