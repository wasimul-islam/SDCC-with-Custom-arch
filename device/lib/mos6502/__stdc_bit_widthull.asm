;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_widthull
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_bit_widthull_PARM_1
	.globl ___stdc_bit_widthull
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_bit_widthull_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_bit_widthull_PARM_1:
	.ds 8
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
;sloc0                     Allocated with name '___stdc_bit_widthull_sloc0_1_0'
;value                     Allocated with name '___stdc_bit_widthull_PARM_1'
;width                     Allocated to registers x 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../__stdc_bit_widthull.c: 37: int_fast8_t __stdc_bit_widthull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_widthull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_bit_widthull:
;	../__stdc_bit_widthull.c: 39: int_fast8_t width = 0;
	ldx	#0x00
;	../__stdc_bit_widthull.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	ldy	#0x00
00105$:
	cpy	#0x40
	bcc	00122$
	jmp	00103$
00122$:
;	../__stdc_bit_widthull.c: 41: if(value & (1ull << i))
	lda	#0x01
	sta	__rlulonglong_PARM_1
	lda	#0x00
	sta	(__rlulonglong_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 6)
	sta	(__rlulonglong_PARM_1 + 7)
	sty	__rlulonglong_PARM_2
	sta	*(__TEMP+0)
	txa
	pha
	tya
	pha
	lda	#0x00
	jsr	__rlulonglong
	sta	*___stdc_bit_widthull_sloc0_1_0
	stx	*(___stdc_bit_widthull_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_bit_widthull_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_bit_widthull_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_bit_widthull_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_bit_widthull_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_bit_widthull_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_bit_widthull_sloc0_1_0 + 7)
	sta	*(__TEMP+0)
	pla
	tay
	pla
	tax
	lda	*___stdc_bit_widthull_sloc0_1_0
	and	___stdc_bit_widthull_PARM_1
	bne	00123$
	lda	*(___stdc_bit_widthull_sloc0_1_0 + 1)
	and	(___stdc_bit_widthull_PARM_1 + 1)
	bne	00123$
	lda	*(___stdc_bit_widthull_sloc0_1_0 + 2)
	and	(___stdc_bit_widthull_PARM_1 + 2)
	bne	00123$
	lda	*(___stdc_bit_widthull_sloc0_1_0 + 3)
	and	(___stdc_bit_widthull_PARM_1 + 3)
	bne	00123$
	lda	*(___stdc_bit_widthull_sloc0_1_0 + 4)
	and	(___stdc_bit_widthull_PARM_1 + 4)
	bne	00123$
	lda	*(___stdc_bit_widthull_sloc0_1_0 + 5)
	and	(___stdc_bit_widthull_PARM_1 + 5)
	bne	00123$
	lda	*(___stdc_bit_widthull_sloc0_1_0 + 6)
	and	(___stdc_bit_widthull_PARM_1 + 6)
	bne	00123$
	lda	*(___stdc_bit_widthull_sloc0_1_0 + 7)
	and	(___stdc_bit_widthull_PARM_1 + 7)
00123$:
	beq	00106$
;	../__stdc_bit_widthull.c: 42: width = (i + 1);
	tya
	tax
	inx
00106$:
;	../__stdc_bit_widthull.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	iny
	jmp	00105$
00103$:
;	../__stdc_bit_widthull.c: 43: return width;
	txa
;	../__stdc_bit_widthull.c: 44: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
