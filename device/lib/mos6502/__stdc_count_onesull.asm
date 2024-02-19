;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_count_onesull
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_count_onesull_PARM_1
	.globl ___stdc_count_onesull
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_count_onesull_sloc0_1_0:
	.ds 1
___stdc_count_onesull_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_count_onesull_PARM_1:
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
;Allocation info for local variables in function '__stdc_count_onesull'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_count_onesull_sloc0_1_0'
;sloc1                     Allocated with name '___stdc_count_onesull_sloc1_1_0'
;value                     Allocated with name '___stdc_count_onesull_PARM_1'
;count                     Allocated to registers 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../__stdc_count_onesull.c: 37: int_fast8_t __stdc_count_onesull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_count_onesull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_count_onesull:
;	../__stdc_count_onesull.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	ldx	#0x00
	stx	*___stdc_count_onesull_sloc0_1_0
00105$:
	cpx	#0x40
	bcc	00122$
	jmp	00103$
00122$:
;	../__stdc_count_onesull.c: 41: if(value & (1ull << i))
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
	sta	*___stdc_count_onesull_sloc1_1_0
	stx	*(___stdc_count_onesull_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_count_onesull_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_count_onesull_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_count_onesull_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_count_onesull_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_count_onesull_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_count_onesull_sloc1_1_0 + 7)
	sta	*(__TEMP+0)
	pla
	tax
	lda	*___stdc_count_onesull_sloc1_1_0
	and	___stdc_count_onesull_PARM_1
	bne	00123$
	lda	*(___stdc_count_onesull_sloc1_1_0 + 1)
	and	(___stdc_count_onesull_PARM_1 + 1)
	bne	00123$
	lda	*(___stdc_count_onesull_sloc1_1_0 + 2)
	and	(___stdc_count_onesull_PARM_1 + 2)
	bne	00123$
	lda	*(___stdc_count_onesull_sloc1_1_0 + 3)
	and	(___stdc_count_onesull_PARM_1 + 3)
	bne	00123$
	lda	*(___stdc_count_onesull_sloc1_1_0 + 4)
	and	(___stdc_count_onesull_PARM_1 + 4)
	bne	00123$
	lda	*(___stdc_count_onesull_sloc1_1_0 + 5)
	and	(___stdc_count_onesull_PARM_1 + 5)
	bne	00123$
	lda	*(___stdc_count_onesull_sloc1_1_0 + 6)
	and	(___stdc_count_onesull_PARM_1 + 6)
	bne	00123$
	lda	*(___stdc_count_onesull_sloc1_1_0 + 7)
	and	(___stdc_count_onesull_PARM_1 + 7)
00123$:
	beq	00106$
;	../__stdc_count_onesull.c: 42: count++;
	inc	*___stdc_count_onesull_sloc0_1_0
00106$:
;	../__stdc_count_onesull.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	inx
	jmp	00105$
00103$:
;	../__stdc_count_onesull.c: 43: return count;
	lda	*___stdc_count_onesull_sloc0_1_0
;	../__stdc_count_onesull.c: 44: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
