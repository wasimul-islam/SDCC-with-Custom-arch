;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_ceilull
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_bit_ceilull_PARM_1
	.globl ___stdc_bit_ceilull
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_bit_ceilull_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_bit_ceilull_PARM_1:
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
;Allocation info for local variables in function '__stdc_bit_ceilull'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_bit_ceilull_sloc0_1_0'
;value                     Allocated with name '___stdc_bit_ceilull_PARM_1'
;i                         Allocated to registers 
;------------------------------------------------------------
;	../__stdc_bit_ceilull.c: 37: unsigned long long __stdc_bit_ceilull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_ceilull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_bit_ceilull:
;	../__stdc_bit_ceilull.c: 40: for(i = 0; i < ULLONG_WIDTH; i++)
	ldx	#0x00
00104$:
;	../__stdc_bit_ceilull.c: 41: if(value <= (1ull << i))
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
	stx	__rlulonglong_PARM_2
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	jsr	__rlulonglong
	sta	*___stdc_bit_ceilull_sloc0_1_0
	stx	*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
	sta	*(__TEMP+0)
	pla
	tax
	lda	*___stdc_bit_ceilull_sloc0_1_0
	sec
	sbc	___stdc_bit_ceilull_PARM_1
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	sbc	(___stdc_bit_ceilull_PARM_1 + 1)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	sbc	(___stdc_bit_ceilull_PARM_1 + 2)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	sbc	(___stdc_bit_ceilull_PARM_1 + 3)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	sbc	(___stdc_bit_ceilull_PARM_1 + 4)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	sbc	(___stdc_bit_ceilull_PARM_1 + 5)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	sbc	(___stdc_bit_ceilull_PARM_1 + 6)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
	sbc	(___stdc_bit_ceilull_PARM_1 + 7)
	bcs	00103$
;	../__stdc_bit_ceilull.c: 40: for(i = 0; i < ULLONG_WIDTH; i++)
	inx
	cpx	#0x40
	bcc	00104$
00103$:
;	../__stdc_bit_ceilull.c: 43: return (1ull << i);
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
	stx	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	*___stdc_bit_ceilull_sloc0_1_0
	stx	*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
	sta	*___SDCC_m6502_ret7
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	lda	*___stdc_bit_ceilull_sloc0_1_0
;	../__stdc_bit_ceilull.c: 44: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
