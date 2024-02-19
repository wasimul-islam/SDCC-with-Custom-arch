;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_count_leading_zeros
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_count_leading_zeros
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
;Allocation info for local variables in function '__stdc_count_leading_zeros'
;------------------------------------------------------------
;value                     Allocated to stack - sp +14
;width                     Allocated to stack - sp +22
;i                         Allocated to stack - sp +11
;sloc0                     Allocated to stack - sp +10
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../__stdc_count_leading_zeros.c: 36: int_fast8_t __stdc_count_leading_zeros(unsigned long long value, uint_fast8_t width)
;	-----------------------------------------
;	 function __stdc_count_leading_zeros
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 11 bytes.
___stdc_count_leading_zeros:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf5
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../__stdc_count_leading_zeros.c: 38: for(int_fast8_t i = width - 1; i >= 0; i--)
	tsx
	lda	0x116,x
	sta	0x10a, x
	sec
	sbc	#0x01
	sta	0x10b, x
	sta	0x109,x
00105$:
	tsx
	lda	0x109,x
	sec
	sbc	#0x00
	bvs	00122$
	bpl	00121$
	bmi	00123$
00122$:
	bmi	00121$
00123$:
	jmp	00103$
00121$:
;	../__stdc_count_leading_zeros.c: 39: if(value & (1ull << i))
	lda	0x109,x
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
	lda	0x101,x
	and	0x10e,x
	bne	00124$
	lda	0x102,x
	and	0x10f,x
	bne	00124$
	lda	0x103,x
	and	0x110,x
	bne	00124$
	lda	0x104,x
	and	0x111,x
	bne	00124$
	lda	0x105,x
	and	0x112,x
	bne	00124$
	lda	0x106,x
	and	0x113,x
	bne	00124$
	lda	0x107,x
	and	0x114,x
	bne	00124$
	lda	0x108,x
	and	0x115,x
00124$:
	beq	00106$
;	../__stdc_count_leading_zeros.c: 40: return (width - i - 1);
	lda	0x10a,x
	sec
	sbc	0x10b,x
	sec
	sbc	#0x01
	jmp	00107$
00106$:
;	../__stdc_count_leading_zeros.c: 38: for(int_fast8_t i = width - 1; i >= 0; i--)
	tsx
	lda	0x109,x
	sec
	sbc	#0x01
	sta	0x109, x
	sta	0x10b,x
	jmp	00105$
00103$:
;	../__stdc_count_leading_zeros.c: 41: return width;
	tsx
	lda	0x116,x
00107$:
;	../__stdc_count_leading_zeros.c: 42: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0b
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
