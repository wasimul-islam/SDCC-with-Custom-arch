;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_first_trailing_oneull
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_first_trailing_oneull_PARM_1
	.globl ___stdc_first_trailing_oneull
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_first_trailing_oneull_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_first_trailing_oneull_PARM_1:
	.ds 8
___stdc_first_trailing_oneull_i_131072_10:
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
;Allocation info for local variables in function '__stdc_first_trailing_oneull'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_first_trailing_oneull_sloc0_1_0'
;value                     Allocated with name '___stdc_first_trailing_oneull_PARM_1'
;i                         Allocated with name '___stdc_first_trailing_oneull_i_131072_10'
;------------------------------------------------------------
;	../__stdc_first_trailing_oneull.c: 36: int_fast8_t __stdc_first_trailing_oneull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_first_trailing_oneull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_first_trailing_oneull:
;	../__stdc_first_trailing_oneull.c: 38: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	ldx	#0x00
	stx	___stdc_first_trailing_oneull_i_131072_10
00105$:
	cpx	#0x40
	bcc	00121$
	jmp	00103$
00121$:
;	../__stdc_first_trailing_oneull.c: 39: if(value & (1ull << i))
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
	sta	*___stdc_first_trailing_oneull_sloc0_1_0
	stx	*(___stdc_first_trailing_oneull_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_first_trailing_oneull_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_first_trailing_oneull_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_first_trailing_oneull_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_first_trailing_oneull_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_first_trailing_oneull_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_first_trailing_oneull_sloc0_1_0 + 7)
	sta	*(__TEMP+0)
	pla
	tax
	lda	*___stdc_first_trailing_oneull_sloc0_1_0
	and	___stdc_first_trailing_oneull_PARM_1
	bne	00122$
	lda	*(___stdc_first_trailing_oneull_sloc0_1_0 + 1)
	and	(___stdc_first_trailing_oneull_PARM_1 + 1)
	bne	00122$
	lda	*(___stdc_first_trailing_oneull_sloc0_1_0 + 2)
	and	(___stdc_first_trailing_oneull_PARM_1 + 2)
	bne	00122$
	lda	*(___stdc_first_trailing_oneull_sloc0_1_0 + 3)
	and	(___stdc_first_trailing_oneull_PARM_1 + 3)
	bne	00122$
	lda	*(___stdc_first_trailing_oneull_sloc0_1_0 + 4)
	and	(___stdc_first_trailing_oneull_PARM_1 + 4)
	bne	00122$
	lda	*(___stdc_first_trailing_oneull_sloc0_1_0 + 5)
	and	(___stdc_first_trailing_oneull_PARM_1 + 5)
	bne	00122$
	lda	*(___stdc_first_trailing_oneull_sloc0_1_0 + 6)
	and	(___stdc_first_trailing_oneull_PARM_1 + 6)
	bne	00122$
	lda	*(___stdc_first_trailing_oneull_sloc0_1_0 + 7)
	and	(___stdc_first_trailing_oneull_PARM_1 + 7)
00122$:
	beq	00106$
;	../__stdc_first_trailing_oneull.c: 40: return (i + 1);
	ldx	___stdc_first_trailing_oneull_i_131072_10
	inx
	txa
	rts
00106$:
;	../__stdc_first_trailing_oneull.c: 38: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	inx
	stx	___stdc_first_trailing_oneull_i_131072_10
	jmp	00105$
00103$:
;	../__stdc_first_trailing_oneull.c: 41: return 0;
	lda	#0x00
;	../__stdc_first_trailing_oneull.c: 42: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
