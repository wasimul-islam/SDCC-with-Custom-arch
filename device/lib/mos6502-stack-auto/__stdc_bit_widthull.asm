;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_widthull
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_bit_widthull
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
;Allocation info for local variables in function '__stdc_bit_widthull'
;------------------------------------------------------------
;value                     Allocated to stack - sp +12
;width                     Allocated to stack - sp +9
;i                         Allocated to registers y 
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../__stdc_bit_widthull.c: 37: int_fast8_t __stdc_bit_widthull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_widthull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
___stdc_bit_widthull:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	../__stdc_bit_widthull.c: 39: int_fast8_t width = 0;
	tsx
	lda	#0x00
	sta	0x109,x
;	../__stdc_bit_widthull.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	tay
00105$:
	cpy	#0x40
	bcc	00122$
	jmp	00103$
00122$:
;	../__stdc_bit_widthull.c: 41: if(value & (1ull << i))
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
	and	0x10c,x
	bne	00123$
	lda	0x102,x
	and	0x10d,x
	bne	00123$
	lda	0x103,x
	and	0x10e,x
	bne	00123$
	lda	0x104,x
	and	0x10f,x
	bne	00123$
	lda	0x105,x
	and	0x110,x
	bne	00123$
	lda	0x106,x
	and	0x111,x
	bne	00123$
	lda	0x107,x
	and	0x112,x
	bne	00123$
	lda	0x108,x
	and	0x113,x
00123$:
	beq	00106$
;	../__stdc_bit_widthull.c: 42: width = (i + 1);
	tya
	clc
	adc	#0x01
	sta	0x109,x
00106$:
;	../__stdc_bit_widthull.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	iny
	jmp	00105$
00103$:
;	../__stdc_bit_widthull.c: 43: return width;
	tsx
	lda	0x109,x
;	../__stdc_bit_widthull.c: 44: }
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
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
