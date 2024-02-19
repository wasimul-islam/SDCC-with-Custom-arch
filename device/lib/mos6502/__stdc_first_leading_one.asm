;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_first_leading_one
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_first_leading_one_PARM_2
	.globl ___stdc_first_leading_one_PARM_1
	.globl ___stdc_first_leading_one
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_first_leading_one_sloc0_1_0:
	.ds 1
___stdc_first_leading_one_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_first_leading_one_PARM_1:
	.ds 8
___stdc_first_leading_one_PARM_2:
	.ds 1
___stdc_first_leading_one_i_131072_10:
	.ds 1
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
;Allocation info for local variables in function '__stdc_first_leading_one'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_first_leading_one_sloc0_1_0'
;sloc1                     Allocated with name '___stdc_first_leading_one_sloc1_1_0'
;value                     Allocated with name '___stdc_first_leading_one_PARM_1'
;width                     Allocated with name '___stdc_first_leading_one_PARM_2'
;i                         Allocated with name '___stdc_first_leading_one_i_131072_10'
;------------------------------------------------------------
;	../__stdc_first_leading_one.c: 36: int_fast8_t __stdc_first_leading_one(unsigned long long value, uint_fast8_t width)
;	-----------------------------------------
;	 function __stdc_first_leading_one
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_first_leading_one:
;	../__stdc_first_leading_one.c: 38: for(int_fast8_t i = width - 1; i >= 0; i--)
	lda	___stdc_first_leading_one_PARM_2
	sta	*___stdc_first_leading_one_sloc0_1_0
	sec
	sbc	#0x01
	sta	___stdc_first_leading_one_i_131072_10
	ldx	___stdc_first_leading_one_i_131072_10
00105$:
	txa
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
;	../__stdc_first_leading_one.c: 39: if(value & (1ull << i))
	stx	__rlulonglong_PARM_2
	ldy	#0x01
	sty	__rlulonglong_PARM_1
	dey
	sty	(__rlulonglong_PARM_1 + 1)
	sty	(__rlulonglong_PARM_1 + 2)
	sty	(__rlulonglong_PARM_1 + 3)
	sty	(__rlulonglong_PARM_1 + 4)
	sty	(__rlulonglong_PARM_1 + 5)
	sty	(__rlulonglong_PARM_1 + 6)
	sty	(__rlulonglong_PARM_1 + 7)
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	jsr	__rlulonglong
	sta	*___stdc_first_leading_one_sloc1_1_0
	stx	*(___stdc_first_leading_one_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 7)
	sta	*(__TEMP+0)
	pla
	tax
	lda	*___stdc_first_leading_one_sloc1_1_0
	and	___stdc_first_leading_one_PARM_1
	bne	00124$
	lda	*(___stdc_first_leading_one_sloc1_1_0 + 1)
	and	(___stdc_first_leading_one_PARM_1 + 1)
	bne	00124$
	lda	*(___stdc_first_leading_one_sloc1_1_0 + 2)
	and	(___stdc_first_leading_one_PARM_1 + 2)
	bne	00124$
	lda	*(___stdc_first_leading_one_sloc1_1_0 + 3)
	and	(___stdc_first_leading_one_PARM_1 + 3)
	bne	00124$
	lda	*(___stdc_first_leading_one_sloc1_1_0 + 4)
	and	(___stdc_first_leading_one_PARM_1 + 4)
	bne	00124$
	lda	*(___stdc_first_leading_one_sloc1_1_0 + 5)
	and	(___stdc_first_leading_one_PARM_1 + 5)
	bne	00124$
	lda	*(___stdc_first_leading_one_sloc1_1_0 + 6)
	and	(___stdc_first_leading_one_PARM_1 + 6)
	bne	00124$
	lda	*(___stdc_first_leading_one_sloc1_1_0 + 7)
	and	(___stdc_first_leading_one_PARM_1 + 7)
00124$:
	beq	00106$
;	../__stdc_first_leading_one.c: 40: return (width - i);
	lda	*___stdc_first_leading_one_sloc0_1_0
	sec
	sbc	___stdc_first_leading_one_i_131072_10
	rts
00106$:
;	../__stdc_first_leading_one.c: 38: for(int_fast8_t i = width - 1; i >= 0; i--)
	dex
	stx	___stdc_first_leading_one_i_131072_10
	jmp	00105$
00103$:
;	../__stdc_first_leading_one.c: 41: return 0;
	lda	#0x00
;	../__stdc_first_leading_one.c: 42: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
