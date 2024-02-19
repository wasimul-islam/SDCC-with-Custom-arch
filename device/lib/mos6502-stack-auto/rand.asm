;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module rand
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
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
_s:
	.ds 4
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
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;t                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../rand.c: 40: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_rand:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	../rand.c: 44: t ^= t >> 10;
	tsx
	lda	(_s + 1)
	ldx	(_s + 2)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a,x
	ldx	(_s + 3)
	lda	#0x00
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	tsx
	ora	0x10a,x
	php
	ldx	*(__TEMP+0)
	plp
	pha
	txa
	tsx
	sta	0x10c,x
	pla
	sta	0x10b,x
	pha
	lda	#0x00
	sta	0x10d,x
	pla
	lda	_s
	eor	0x10a,x
	sta	0x10a,x
	lda	(_s + 1)
	eor	0x10b,x
	sta	0x10b,x
	lda	(_s + 2)
	eor	0x10c,x
	sta	0x10c,x
	lda	(_s + 3)
	eor	0x10d,x
	sta	0x10d,x
;	../rand.c: 45: t ^= t << 9;
	lda	0x10a,x
	asl	a
	sta	*(__TEMP+0)
	lda	0x10b,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	txa
	rol	a
	sta	*(__TEMP+0)
	tsx
	lda	0x10b,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	txa
	rol	a
	tsx
	sta	0x108,x
	pha
	lda	#0x00
	sta	0x105,x
	pla
	lda	0x109,x
	eor	0x105,x
	sta	0x105,x
	lda	0x10a,x
	eor	0x106,x
	sta	0x106,x
	lda	0x10b,x
	eor	0x107,x
	sta	0x107,x
	lda	0x10c,x
	eor	0x108,x
;	../rand.c: 46: t ^= t >> 25;
	sta	0x108, x
	lsr	a
	sta	0x109,x
	pha
	lda	#0x00
	sta	0x10a,x
	lda	#0x00
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
	pla
	lda	0x105,x
	eor	0x109,x
	sta	0x105,x
	lda	0x106,x
	eor	0x10a,x
	sta	0x106,x
	lda	0x107,x
	eor	0x10b,x
	sta	0x107,x
	lda	0x108,x
	eor	0x10c,x
	sta	0x108,x
	lda	0x105,x
	sta	0x101,x
	lda	0x106,x
	sta	0x102,x
	lda	0x107,x
	sta	0x103,x
	lda	0x108,x
	sta	0x104,x
;	../rand.c: 48: s = t;
	lda	0x105,x
	sta	_s
	lda	0x106,x
	sta	(_s + 1)
	lda	0x107,x
	sta	(_s + 2)
	lda	0x108,x
	sta	(_s + 3)
;	../rand.c: 50: return(t & RAND_MAX);
	lda	0x101,x
	sta	*(__TEMP+0)
	lda	0x102,x
	tax
	and	#0x7f
	tax
;	../rand.c: 51: }
	lda	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed                      Allocated to registers a x 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../rand.c: 53: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_srand:
	pha
	pha
	pha
	pha
;	../rand.c: 55: s = seed | 0x80000000; /* s shall not become 0 */
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x103,x
	pha
	lda	#0x00
	sta	0x104,x
	lda	#0x00
	sta	0x105,x
	pla
	lda	0x102,x
	sta	_s
	lda	0x103,x
	sta	(_s + 1)
	lda	0x104,x
	sta	(_s + 2)
	lda	0x105,x
	ora	#0x80
	sta	(_s + 3)
;	../rand.c: 56: }
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
__xinit__s:
	.byte #0x01, #0x00, #0x00, #0x80	; 2147483649
	.area CABS    (ABS)
