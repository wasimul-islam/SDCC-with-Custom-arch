;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2schar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2schar
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
;Allocation info for local variables in function '__fs2schar'
;------------------------------------------------------------
;f                         Allocated to stack - sp +7
;sl                        Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../_fs2schar.c: 87: signed char __fs2schar (float f)
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
___fs2schar:
	pha
	pha
	pha
	pha
;	../_fs2schar.c: 89: signed long sl=__fs2slong(f);
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	jsr	___fs2slong
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
;	../_fs2schar.c: 90: if (sl>=SCHAR_MAX)
	lda	0x105, x
	sec
	sbc	#0x7f
	lda	0x106,x
	sbc	#0x00
	lda	0x107,x
	sbc	#0x00
	lda	0x108,x
	sbc	#0x00
	bvs	00116$
	bpl	00115$
	bmi	00102$
00116$:
	bpl	00102$
00115$:
;	../_fs2schar.c: 91: return SCHAR_MAX;
	lda	#0x7f
	jmp	00105$
00102$:
;	../_fs2schar.c: 92: if (sl<=SCHAR_MIN)
	tsx
	lda	#0x80
	sec
	sbc	0x101,x
	lda	#0xff
	sbc	0x102,x
	lda	#0xff
	sbc	0x103,x
	lda	#0xff
	sbc	0x104,x
	bvs	00119$
	bpl	00118$
	bmi	00104$
00119$:
	bpl	00104$
00118$:
;	../_fs2schar.c: 93: return -SCHAR_MIN;
	lda	#0x80
	jmp	00105$
00104$:
;	../_fs2schar.c: 94: return sl;
	tsx
	lda	0x101,x
00105$:
;	../_fs2schar.c: 95: }
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
