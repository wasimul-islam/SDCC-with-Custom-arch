;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_first_trailing_oneull
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_first_trailing_oneull
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
;Allocation info for local variables in function '__stdc_first_trailing_oneull'
;------------------------------------------------------------
;value                     Allocated to stack - sp +12
;i                         Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +9
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../__stdc_first_trailing_oneull.c: 36: int_fast8_t __stdc_first_trailing_oneull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_first_trailing_oneull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
___stdc_first_trailing_oneull:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	../__stdc_first_trailing_oneull.c: 38: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	tsx
	lda	#0x00
	sta	0x109,x
	tay
00105$:
	cpy	#0x40
	bcc	00121$
	jmp	00103$
00121$:
;	../__stdc_first_trailing_oneull.c: 39: if(value & (1ull << i))
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
	bne	00122$
	lda	0x102,x
	and	0x10d,x
	bne	00122$
	lda	0x103,x
	and	0x10e,x
	bne	00122$
	lda	0x104,x
	and	0x10f,x
	bne	00122$
	lda	0x105,x
	and	0x110,x
	bne	00122$
	lda	0x106,x
	and	0x111,x
	bne	00122$
	lda	0x107,x
	and	0x112,x
	bne	00122$
	lda	0x108,x
	and	0x113,x
00122$:
	beq	00106$
;	../__stdc_first_trailing_oneull.c: 40: return (i + 1);
	lda	0x109,x
	clc
	adc	#0x01
	jmp	00107$
00106$:
;	../__stdc_first_trailing_oneull.c: 38: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	iny
	tsx
	tya
	sta	0x109,x
	jmp	00105$
00103$:
;	../__stdc_first_trailing_oneull.c: 41: return 0;
	lda	#0x00
00107$:
;	../__stdc_first_trailing_oneull.c: 42: }
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
