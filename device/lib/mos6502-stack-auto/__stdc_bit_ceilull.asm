;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_ceilull
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_bit_ceilull
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
;Allocation info for local variables in function '__stdc_bit_ceilull'
;------------------------------------------------------------
;value                     Allocated to stack - sp +11
;i                         Allocated to registers y 
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../__stdc_bit_ceilull.c: 37: unsigned long long __stdc_bit_ceilull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_ceilull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
___stdc_bit_ceilull:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../__stdc_bit_ceilull.c: 40: for(i = 0; i < ULLONG_WIDTH; i++)
	ldy	#0x00
00104$:
;	../__stdc_bit_ceilull.c: 41: if(value <= (1ull << i))
	sta	*(__TEMP+0)
	tya
	pha
	tya
	pha
	lda	#0x00
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	lda	#0x01
	pha
	jsr	__rlulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10d,x
	lda	*___SDCC_m6502_ret3
	sta	0x10e,x
	lda	*___SDCC_m6502_ret4
	sta	0x10f,x
	lda	*___SDCC_m6502_ret5
	sta	0x110,x
	lda	*___SDCC_m6502_ret6
	sta	0x111,x
	lda	*___SDCC_m6502_ret7
	sta	0x112,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	ldx	*(__TEMP+1)
	pla
	tay
	lda	*(__TEMP+0)
	tsx
	lda	0x101,x
	sec
	sbc	0x10b,x
	lda	0x102,x
	sbc	0x10c,x
	lda	0x103,x
	sbc	0x10d,x
	lda	0x104,x
	sbc	0x10e,x
	lda	0x105,x
	sbc	0x10f,x
	lda	0x106,x
	sbc	0x110,x
	lda	0x107,x
	sbc	0x111,x
	lda	0x108,x
	sbc	0x112,x
	bcs	00103$
;	../__stdc_bit_ceilull.c: 40: for(i = 0; i < ULLONG_WIDTH; i++)
	iny
	cpy	#0x40
	bcs	00118$
	jmp	00104$
00118$:
00103$:
;	../__stdc_bit_ceilull.c: 43: return (1ull << i);
	tya
	pha
	lda	#0x00
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	lda	#0x01
	pha
	jsr	__rlulonglong
	stx	*(__TEMP+0)
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10c,x
	lda	*___SDCC_m6502_ret3
	sta	0x10d,x
	lda	*___SDCC_m6502_ret4
	sta	0x10e,x
	lda	*___SDCC_m6502_ret5
	sta	0x10f,x
	lda	*___SDCC_m6502_ret6
	sta	0x110,x
	lda	*___SDCC_m6502_ret7
	sta	0x111,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
;	../__stdc_bit_ceilull.c: 44: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
