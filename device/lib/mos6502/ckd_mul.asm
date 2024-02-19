;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_mul
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ckd_mul_ulong_PARM_3
	.globl ___ckd_mul_ulong_PARM_2
	.globl ___ckd_mul_long_PARM_3
	.globl ___ckd_mul_long_PARM_2
	.globl ___ckd_mul_uint_PARM_3
	.globl ___ckd_mul_uint_PARM_2
	.globl ___ckd_mul_int_PARM_3
	.globl ___ckd_mul_int_PARM_2
	.globl ___ckd_mul_ushort_PARM_3
	.globl ___ckd_mul_ushort_PARM_2
	.globl ___ckd_mul_short_PARM_3
	.globl ___ckd_mul_short_PARM_2
	.globl ___ckd_mul_uchar_PARM_3
	.globl ___ckd_mul_uchar_PARM_2
	.globl ___ckd_mul_schar_PARM_3
	.globl ___ckd_mul_schar_PARM_2
	.globl ___ckd_mul_schar
	.globl ___ckd_mul_uchar
	.globl ___ckd_mul_short
	.globl ___ckd_mul_ushort
	.globl ___ckd_mul_int
	.globl ___ckd_mul_uint
	.globl ___ckd_mul_long
	.globl ___ckd_mul_ulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___ckd_mul_schar_sloc0_1_0:
	.ds 8
___ckd_mul_schar_sloc1_1_0:
	.ds 8
___ckd_mul_uchar_sloc0_1_0:
	.ds 8
___ckd_mul_uchar_sloc1_1_0:
	.ds 8
___ckd_mul_short_sloc0_1_0:
	.ds 8
___ckd_mul_short_sloc1_1_0:
	.ds 8
___ckd_mul_ushort_sloc0_1_0:
	.ds 8
___ckd_mul_ushort_sloc1_1_0:
	.ds 8
___ckd_mul_int_sloc0_1_0:
	.ds 8
___ckd_mul_int_sloc1_1_0:
	.ds 8
___ckd_mul_uint_sloc0_1_0:
	.ds 8
___ckd_mul_uint_sloc1_1_0:
	.ds 8
___ckd_mul_long_sloc0_1_0:
	.ds 8
___ckd_mul_long_sloc1_1_0:
	.ds 4
___ckd_mul_long_sloc2_1_0:
	.ds 8
___ckd_mul_ulong_sloc0_1_0:
	.ds 8
___ckd_mul_ulong_sloc1_1_0:
	.ds 4
___ckd_mul_ulong_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ckd_mul_schar_PARM_2:
	.ds 8
___ckd_mul_schar_PARM_3:
	.ds 8
___ckd_mul_schar_r_65536_41:
	.ds 2
___ckd_mul_uchar_PARM_2:
	.ds 8
___ckd_mul_uchar_PARM_3:
	.ds 8
___ckd_mul_uchar_r_65536_43:
	.ds 2
___ckd_mul_short_PARM_2:
	.ds 8
___ckd_mul_short_PARM_3:
	.ds 8
___ckd_mul_short_r_65536_45:
	.ds 2
___ckd_mul_ushort_PARM_2:
	.ds 8
___ckd_mul_ushort_PARM_3:
	.ds 8
___ckd_mul_ushort_r_65536_47:
	.ds 2
___ckd_mul_int_PARM_2:
	.ds 8
___ckd_mul_int_PARM_3:
	.ds 8
___ckd_mul_int_r_65536_49:
	.ds 2
___ckd_mul_uint_PARM_2:
	.ds 8
___ckd_mul_uint_PARM_3:
	.ds 8
___ckd_mul_uint_r_65536_51:
	.ds 2
___ckd_mul_long_PARM_2:
	.ds 8
___ckd_mul_long_PARM_3:
	.ds 8
___ckd_mul_long_r_65536_53:
	.ds 2
___ckd_mul_ulong_PARM_2:
	.ds 8
___ckd_mul_ulong_PARM_3:
	.ds 8
___ckd_mul_ulong_r_65536_55:
	.ds 2
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
;Allocation info for local variables in function '__ckd_mul_schar'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_schar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_mul_schar_sloc1_1_0'
;a                         Allocated with name '___ckd_mul_schar_PARM_2'
;b                         Allocated with name '___ckd_mul_schar_PARM_3'
;r                         Allocated with name '___ckd_mul_schar_r_65536_41'
;result                    Allocated with name '___ckd_mul_schar_result_65536_42'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 69: inline _Bool __ckd_mul_schar __CKD_DEFAULT_IMPL(signed char, *)
;	-----------------------------------------
;	 function __ckd_mul_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_schar:
	sta	___ckd_mul_schar_r_65536_41
	stx	(___ckd_mul_schar_r_65536_41 + 1)
	lda	___ckd_mul_schar_PARM_2
	sta	__mullonglong_PARM_1
	lda	(___ckd_mul_schar_PARM_2 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(___ckd_mul_schar_PARM_2 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(___ckd_mul_schar_PARM_2 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(___ckd_mul_schar_PARM_2 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(___ckd_mul_schar_PARM_2 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(___ckd_mul_schar_PARM_2 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(___ckd_mul_schar_PARM_2 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	___ckd_mul_schar_PARM_3
	sta	__mullonglong_PARM_2
	lda	(___ckd_mul_schar_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	lda	(___ckd_mul_schar_PARM_3 + 2)
	sta	(__mullonglong_PARM_2 + 2)
	lda	(___ckd_mul_schar_PARM_3 + 3)
	sta	(__mullonglong_PARM_2 + 3)
	lda	(___ckd_mul_schar_PARM_3 + 4)
	sta	(__mullonglong_PARM_2 + 4)
	lda	(___ckd_mul_schar_PARM_3 + 5)
	sta	(__mullonglong_PARM_2 + 5)
	lda	(___ckd_mul_schar_PARM_3 + 6)
	sta	(__mullonglong_PARM_2 + 6)
	lda	(___ckd_mul_schar_PARM_3 + 7)
	sta	(__mullonglong_PARM_2 + 7)
	jsr	__mullonglong
	sta	*___ckd_mul_schar_sloc0_1_0
	stx	*(___ckd_mul_schar_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ckd_mul_schar_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ckd_mul_schar_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___ckd_mul_schar_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___ckd_mul_schar_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___ckd_mul_schar_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___ckd_mul_schar_sloc0_1_0 + 7)
	ldx	*___ckd_mul_schar_sloc0_1_0
	stx	*(__TEMP+0)
	lda	___ckd_mul_schar_r_65536_41
	sta	*(__DPTR+0)
	lda	(___ckd_mul_schar_r_65536_41 + 1)
	sta	*(__DPTR+1)
	ldx	*(__TEMP+0)
	txa
	ldy	#0x00
	sta	[__DPTR],y
	ldx	*(__TEMP+0)
	txa
	sta	*___ckd_mul_schar_sloc1_1_0
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_mul_schar_sloc1_1_0 + 1)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 2)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 3)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 4)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 5)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 6)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 7)
	lda	*___ckd_mul_schar_sloc1_1_0
	cmp	*___ckd_mul_schar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uchar'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_uchar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_mul_uchar_sloc1_1_0'
;a                         Allocated with name '___ckd_mul_uchar_PARM_2'
;b                         Allocated with name '___ckd_mul_uchar_PARM_3'
;r                         Allocated with name '___ckd_mul_uchar_r_65536_43'
;result                    Allocated with name '___ckd_mul_uchar_result_65536_44'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 70: inline _Bool __ckd_mul_uchar __CKD_DEFAULT_IMPL(unsigned char, *)
;	-----------------------------------------
;	 function __ckd_mul_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_uchar:
	sta	___ckd_mul_uchar_r_65536_43
	stx	(___ckd_mul_uchar_r_65536_43 + 1)
	lda	___ckd_mul_uchar_PARM_2
	sta	__mullonglong_PARM_1
	lda	(___ckd_mul_uchar_PARM_2 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(___ckd_mul_uchar_PARM_2 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(___ckd_mul_uchar_PARM_2 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(___ckd_mul_uchar_PARM_2 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(___ckd_mul_uchar_PARM_2 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(___ckd_mul_uchar_PARM_2 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(___ckd_mul_uchar_PARM_2 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	___ckd_mul_uchar_PARM_3
	sta	__mullonglong_PARM_2
	lda	(___ckd_mul_uchar_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	lda	(___ckd_mul_uchar_PARM_3 + 2)
	sta	(__mullonglong_PARM_2 + 2)
	lda	(___ckd_mul_uchar_PARM_3 + 3)
	sta	(__mullonglong_PARM_2 + 3)
	lda	(___ckd_mul_uchar_PARM_3 + 4)
	sta	(__mullonglong_PARM_2 + 4)
	lda	(___ckd_mul_uchar_PARM_3 + 5)
	sta	(__mullonglong_PARM_2 + 5)
	lda	(___ckd_mul_uchar_PARM_3 + 6)
	sta	(__mullonglong_PARM_2 + 6)
	lda	(___ckd_mul_uchar_PARM_3 + 7)
	sta	(__mullonglong_PARM_2 + 7)
	jsr	__mullonglong
	sta	*___ckd_mul_uchar_sloc0_1_0
	stx	*(___ckd_mul_uchar_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ckd_mul_uchar_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ckd_mul_uchar_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___ckd_mul_uchar_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___ckd_mul_uchar_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___ckd_mul_uchar_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___ckd_mul_uchar_sloc0_1_0 + 7)
	ldx	*___ckd_mul_uchar_sloc0_1_0
	stx	*(__TEMP+0)
	lda	___ckd_mul_uchar_r_65536_43
	sta	*(__DPTR+0)
	lda	(___ckd_mul_uchar_r_65536_43 + 1)
	sta	*(__DPTR+1)
	ldx	*(__TEMP+0)
	txa
	ldy	#0x00
	sta	[__DPTR],y
	ldx	*(__TEMP+0)
	stx	*___ckd_mul_uchar_sloc1_1_0
	sty	*(___ckd_mul_uchar_sloc1_1_0 + 1)
	sty	*(___ckd_mul_uchar_sloc1_1_0 + 2)
	sty	*(___ckd_mul_uchar_sloc1_1_0 + 3)
	sty	*(___ckd_mul_uchar_sloc1_1_0 + 4)
	sty	*(___ckd_mul_uchar_sloc1_1_0 + 5)
	sty	*(___ckd_mul_uchar_sloc1_1_0 + 6)
	sty	*(___ckd_mul_uchar_sloc1_1_0 + 7)
	lda	*___ckd_mul_uchar_sloc1_1_0
	cmp	*___ckd_mul_uchar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_short'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_short_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_mul_short_sloc1_1_0'
;a                         Allocated with name '___ckd_mul_short_PARM_2'
;b                         Allocated with name '___ckd_mul_short_PARM_3'
;r                         Allocated with name '___ckd_mul_short_r_65536_45'
;result                    Allocated with name '___ckd_mul_short_result_65536_46'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 71: inline _Bool __ckd_mul_short __CKD_DEFAULT_IMPL(short, *)
;	-----------------------------------------
;	 function __ckd_mul_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_short:
	sta	___ckd_mul_short_r_65536_45
	stx	(___ckd_mul_short_r_65536_45 + 1)
	lda	___ckd_mul_short_PARM_2
	sta	__mullonglong_PARM_1
	lda	(___ckd_mul_short_PARM_2 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(___ckd_mul_short_PARM_2 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(___ckd_mul_short_PARM_2 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(___ckd_mul_short_PARM_2 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(___ckd_mul_short_PARM_2 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(___ckd_mul_short_PARM_2 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(___ckd_mul_short_PARM_2 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	___ckd_mul_short_PARM_3
	sta	__mullonglong_PARM_2
	lda	(___ckd_mul_short_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	lda	(___ckd_mul_short_PARM_3 + 2)
	sta	(__mullonglong_PARM_2 + 2)
	lda	(___ckd_mul_short_PARM_3 + 3)
	sta	(__mullonglong_PARM_2 + 3)
	lda	(___ckd_mul_short_PARM_3 + 4)
	sta	(__mullonglong_PARM_2 + 4)
	lda	(___ckd_mul_short_PARM_3 + 5)
	sta	(__mullonglong_PARM_2 + 5)
	lda	(___ckd_mul_short_PARM_3 + 6)
	sta	(__mullonglong_PARM_2 + 6)
	lda	(___ckd_mul_short_PARM_3 + 7)
	sta	(__mullonglong_PARM_2 + 7)
	jsr	__mullonglong
	sta	*___ckd_mul_short_sloc0_1_0
	stx	*(___ckd_mul_short_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ckd_mul_short_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ckd_mul_short_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___ckd_mul_short_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___ckd_mul_short_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___ckd_mul_short_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___ckd_mul_short_sloc0_1_0 + 7)
	lda	*___ckd_mul_short_sloc0_1_0
	ldx	*(___ckd_mul_short_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_mul_short_r_65536_45
	sta	*(__DPTR+0)
	lda	(___ckd_mul_short_r_65536_45 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	sta	*___ckd_mul_short_sloc1_1_0
	stx	*(___ckd_mul_short_sloc1_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_mul_short_sloc1_1_0 + 2)
	sta	*(___ckd_mul_short_sloc1_1_0 + 3)
	sta	*(___ckd_mul_short_sloc1_1_0 + 4)
	sta	*(___ckd_mul_short_sloc1_1_0 + 5)
	sta	*(___ckd_mul_short_sloc1_1_0 + 6)
	sta	*(___ckd_mul_short_sloc1_1_0 + 7)
	lda	*___ckd_mul_short_sloc1_1_0
	cmp	*___ckd_mul_short_sloc0_1_0
	bne	00104$
	lda	*(___ckd_mul_short_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_mul_short_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_mul_short_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_mul_short_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_mul_short_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_mul_short_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_mul_short_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 7)
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ushort'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_ushort_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_mul_ushort_sloc1_1_0'
;a                         Allocated with name '___ckd_mul_ushort_PARM_2'
;b                         Allocated with name '___ckd_mul_ushort_PARM_3'
;r                         Allocated with name '___ckd_mul_ushort_r_65536_47'
;result                    Allocated with name '___ckd_mul_ushort_result_65536_48'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 72: inline _Bool __ckd_mul_ushort __CKD_DEFAULT_IMPL(unsigned short, *)
;	-----------------------------------------
;	 function __ckd_mul_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_ushort:
	sta	___ckd_mul_ushort_r_65536_47
	stx	(___ckd_mul_ushort_r_65536_47 + 1)
	lda	___ckd_mul_ushort_PARM_2
	sta	__mullonglong_PARM_1
	lda	(___ckd_mul_ushort_PARM_2 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(___ckd_mul_ushort_PARM_2 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(___ckd_mul_ushort_PARM_2 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(___ckd_mul_ushort_PARM_2 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(___ckd_mul_ushort_PARM_2 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(___ckd_mul_ushort_PARM_2 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(___ckd_mul_ushort_PARM_2 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	___ckd_mul_ushort_PARM_3
	sta	__mullonglong_PARM_2
	lda	(___ckd_mul_ushort_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	lda	(___ckd_mul_ushort_PARM_3 + 2)
	sta	(__mullonglong_PARM_2 + 2)
	lda	(___ckd_mul_ushort_PARM_3 + 3)
	sta	(__mullonglong_PARM_2 + 3)
	lda	(___ckd_mul_ushort_PARM_3 + 4)
	sta	(__mullonglong_PARM_2 + 4)
	lda	(___ckd_mul_ushort_PARM_3 + 5)
	sta	(__mullonglong_PARM_2 + 5)
	lda	(___ckd_mul_ushort_PARM_3 + 6)
	sta	(__mullonglong_PARM_2 + 6)
	lda	(___ckd_mul_ushort_PARM_3 + 7)
	sta	(__mullonglong_PARM_2 + 7)
	jsr	__mullonglong
	sta	*___ckd_mul_ushort_sloc0_1_0
	stx	*(___ckd_mul_ushort_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ckd_mul_ushort_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ckd_mul_ushort_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___ckd_mul_ushort_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___ckd_mul_ushort_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___ckd_mul_ushort_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___ckd_mul_ushort_sloc0_1_0 + 7)
	lda	*___ckd_mul_ushort_sloc0_1_0
	ldx	*(___ckd_mul_ushort_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_mul_ushort_r_65536_47
	sta	*(__DPTR+0)
	lda	(___ckd_mul_ushort_r_65536_47 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	sta	*___ckd_mul_ushort_sloc1_1_0
	stx	*(___ckd_mul_ushort_sloc1_1_0 + 1)
	dey
	sty	*(___ckd_mul_ushort_sloc1_1_0 + 2)
	sty	*(___ckd_mul_ushort_sloc1_1_0 + 3)
	sty	*(___ckd_mul_ushort_sloc1_1_0 + 4)
	sty	*(___ckd_mul_ushort_sloc1_1_0 + 5)
	sty	*(___ckd_mul_ushort_sloc1_1_0 + 6)
	sty	*(___ckd_mul_ushort_sloc1_1_0 + 7)
	lda	*___ckd_mul_ushort_sloc1_1_0
	cmp	*___ckd_mul_ushort_sloc0_1_0
	bne	00104$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_int'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_int_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_mul_int_sloc1_1_0'
;a                         Allocated with name '___ckd_mul_int_PARM_2'
;b                         Allocated with name '___ckd_mul_int_PARM_3'
;r                         Allocated with name '___ckd_mul_int_r_65536_49'
;result                    Allocated with name '___ckd_mul_int_result_65536_50'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 73: inline _Bool __ckd_mul_int __CKD_DEFAULT_IMPL(int, *)
;	-----------------------------------------
;	 function __ckd_mul_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_int:
	sta	___ckd_mul_int_r_65536_49
	stx	(___ckd_mul_int_r_65536_49 + 1)
	lda	___ckd_mul_int_PARM_2
	sta	__mullonglong_PARM_1
	lda	(___ckd_mul_int_PARM_2 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(___ckd_mul_int_PARM_2 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(___ckd_mul_int_PARM_2 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(___ckd_mul_int_PARM_2 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(___ckd_mul_int_PARM_2 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(___ckd_mul_int_PARM_2 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(___ckd_mul_int_PARM_2 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	___ckd_mul_int_PARM_3
	sta	__mullonglong_PARM_2
	lda	(___ckd_mul_int_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	lda	(___ckd_mul_int_PARM_3 + 2)
	sta	(__mullonglong_PARM_2 + 2)
	lda	(___ckd_mul_int_PARM_3 + 3)
	sta	(__mullonglong_PARM_2 + 3)
	lda	(___ckd_mul_int_PARM_3 + 4)
	sta	(__mullonglong_PARM_2 + 4)
	lda	(___ckd_mul_int_PARM_3 + 5)
	sta	(__mullonglong_PARM_2 + 5)
	lda	(___ckd_mul_int_PARM_3 + 6)
	sta	(__mullonglong_PARM_2 + 6)
	lda	(___ckd_mul_int_PARM_3 + 7)
	sta	(__mullonglong_PARM_2 + 7)
	jsr	__mullonglong
	sta	*___ckd_mul_int_sloc0_1_0
	stx	*(___ckd_mul_int_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ckd_mul_int_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ckd_mul_int_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___ckd_mul_int_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___ckd_mul_int_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___ckd_mul_int_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___ckd_mul_int_sloc0_1_0 + 7)
	lda	*___ckd_mul_int_sloc0_1_0
	ldx	*(___ckd_mul_int_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_mul_int_r_65536_49
	sta	*(__DPTR+0)
	lda	(___ckd_mul_int_r_65536_49 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	sta	*___ckd_mul_int_sloc1_1_0
	stx	*(___ckd_mul_int_sloc1_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_mul_int_sloc1_1_0 + 2)
	sta	*(___ckd_mul_int_sloc1_1_0 + 3)
	sta	*(___ckd_mul_int_sloc1_1_0 + 4)
	sta	*(___ckd_mul_int_sloc1_1_0 + 5)
	sta	*(___ckd_mul_int_sloc1_1_0 + 6)
	sta	*(___ckd_mul_int_sloc1_1_0 + 7)
	lda	*___ckd_mul_int_sloc1_1_0
	cmp	*___ckd_mul_int_sloc0_1_0
	bne	00104$
	lda	*(___ckd_mul_int_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_mul_int_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_mul_int_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_mul_int_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_mul_int_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_mul_int_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_mul_int_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 7)
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uint'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_uint_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_mul_uint_sloc1_1_0'
;a                         Allocated with name '___ckd_mul_uint_PARM_2'
;b                         Allocated with name '___ckd_mul_uint_PARM_3'
;r                         Allocated with name '___ckd_mul_uint_r_65536_51'
;result                    Allocated with name '___ckd_mul_uint_result_65536_52'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 74: inline _Bool __ckd_mul_uint __CKD_DEFAULT_IMPL(unsigned int, *)
;	-----------------------------------------
;	 function __ckd_mul_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_uint:
	sta	___ckd_mul_uint_r_65536_51
	stx	(___ckd_mul_uint_r_65536_51 + 1)
	lda	___ckd_mul_uint_PARM_2
	sta	__mullonglong_PARM_1
	lda	(___ckd_mul_uint_PARM_2 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(___ckd_mul_uint_PARM_2 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(___ckd_mul_uint_PARM_2 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(___ckd_mul_uint_PARM_2 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(___ckd_mul_uint_PARM_2 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(___ckd_mul_uint_PARM_2 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(___ckd_mul_uint_PARM_2 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	___ckd_mul_uint_PARM_3
	sta	__mullonglong_PARM_2
	lda	(___ckd_mul_uint_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	lda	(___ckd_mul_uint_PARM_3 + 2)
	sta	(__mullonglong_PARM_2 + 2)
	lda	(___ckd_mul_uint_PARM_3 + 3)
	sta	(__mullonglong_PARM_2 + 3)
	lda	(___ckd_mul_uint_PARM_3 + 4)
	sta	(__mullonglong_PARM_2 + 4)
	lda	(___ckd_mul_uint_PARM_3 + 5)
	sta	(__mullonglong_PARM_2 + 5)
	lda	(___ckd_mul_uint_PARM_3 + 6)
	sta	(__mullonglong_PARM_2 + 6)
	lda	(___ckd_mul_uint_PARM_3 + 7)
	sta	(__mullonglong_PARM_2 + 7)
	jsr	__mullonglong
	sta	*___ckd_mul_uint_sloc0_1_0
	stx	*(___ckd_mul_uint_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ckd_mul_uint_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ckd_mul_uint_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___ckd_mul_uint_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___ckd_mul_uint_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___ckd_mul_uint_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___ckd_mul_uint_sloc0_1_0 + 7)
	lda	*___ckd_mul_uint_sloc0_1_0
	ldx	*(___ckd_mul_uint_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_mul_uint_r_65536_51
	sta	*(__DPTR+0)
	lda	(___ckd_mul_uint_r_65536_51 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	sta	*___ckd_mul_uint_sloc1_1_0
	stx	*(___ckd_mul_uint_sloc1_1_0 + 1)
	dey
	sty	*(___ckd_mul_uint_sloc1_1_0 + 2)
	sty	*(___ckd_mul_uint_sloc1_1_0 + 3)
	sty	*(___ckd_mul_uint_sloc1_1_0 + 4)
	sty	*(___ckd_mul_uint_sloc1_1_0 + 5)
	sty	*(___ckd_mul_uint_sloc1_1_0 + 6)
	sty	*(___ckd_mul_uint_sloc1_1_0 + 7)
	lda	*___ckd_mul_uint_sloc1_1_0
	cmp	*___ckd_mul_uint_sloc0_1_0
	bne	00104$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_long'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_long_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_mul_long_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_mul_long_sloc2_1_0'
;a                         Allocated with name '___ckd_mul_long_PARM_2'
;b                         Allocated with name '___ckd_mul_long_PARM_3'
;r                         Allocated with name '___ckd_mul_long_r_65536_53'
;result                    Allocated with name '___ckd_mul_long_result_65536_54'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 75: inline _Bool __ckd_mul_long __CKD_DEFAULT_IMPL(long, *)
;	-----------------------------------------
;	 function __ckd_mul_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_long:
	sta	___ckd_mul_long_r_65536_53
	stx	(___ckd_mul_long_r_65536_53 + 1)
	lda	___ckd_mul_long_PARM_2
	sta	__mullonglong_PARM_1
	lda	(___ckd_mul_long_PARM_2 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(___ckd_mul_long_PARM_2 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(___ckd_mul_long_PARM_2 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(___ckd_mul_long_PARM_2 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(___ckd_mul_long_PARM_2 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(___ckd_mul_long_PARM_2 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(___ckd_mul_long_PARM_2 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	___ckd_mul_long_PARM_3
	sta	__mullonglong_PARM_2
	lda	(___ckd_mul_long_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	lda	(___ckd_mul_long_PARM_3 + 2)
	sta	(__mullonglong_PARM_2 + 2)
	lda	(___ckd_mul_long_PARM_3 + 3)
	sta	(__mullonglong_PARM_2 + 3)
	lda	(___ckd_mul_long_PARM_3 + 4)
	sta	(__mullonglong_PARM_2 + 4)
	lda	(___ckd_mul_long_PARM_3 + 5)
	sta	(__mullonglong_PARM_2 + 5)
	lda	(___ckd_mul_long_PARM_3 + 6)
	sta	(__mullonglong_PARM_2 + 6)
	lda	(___ckd_mul_long_PARM_3 + 7)
	sta	(__mullonglong_PARM_2 + 7)
	jsr	__mullonglong
	sta	*___ckd_mul_long_sloc0_1_0
	stx	*(___ckd_mul_long_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ckd_mul_long_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ckd_mul_long_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___ckd_mul_long_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___ckd_mul_long_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___ckd_mul_long_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___ckd_mul_long_sloc0_1_0 + 7)
	lda	*___ckd_mul_long_sloc0_1_0
	sta	*___ckd_mul_long_sloc1_1_0
	lda	*(___ckd_mul_long_sloc0_1_0 + 1)
	sta	*(___ckd_mul_long_sloc1_1_0 + 1)
	lda	*(___ckd_mul_long_sloc0_1_0 + 2)
	sta	*(___ckd_mul_long_sloc1_1_0 + 2)
	lda	*(___ckd_mul_long_sloc0_1_0 + 3)
	sta	*(___ckd_mul_long_sloc1_1_0 + 3)
	lda	___ckd_mul_long_r_65536_53
	sta	*(__DPTR+0)
	lda	(___ckd_mul_long_r_65536_53 + 1)
	sta	*(__DPTR+1)
	lda	*___ckd_mul_long_sloc1_1_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(___ckd_mul_long_sloc1_1_0 + 1)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_mul_long_sloc1_1_0 + 2)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_mul_long_sloc1_1_0 + 3)
	iny
	sta	[__DPTR],y
	lda	*___ckd_mul_long_sloc1_1_0
	sta	*___ckd_mul_long_sloc2_1_0
	lda	*(___ckd_mul_long_sloc1_1_0 + 1)
	sta	*(___ckd_mul_long_sloc2_1_0 + 1)
	lda	*(___ckd_mul_long_sloc1_1_0 + 2)
	sta	*(___ckd_mul_long_sloc2_1_0 + 2)
	lda	*(___ckd_mul_long_sloc1_1_0 + 3)
	sta	*(___ckd_mul_long_sloc2_1_0 + 3)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_mul_long_sloc2_1_0 + 4)
	sta	*(___ckd_mul_long_sloc2_1_0 + 5)
	sta	*(___ckd_mul_long_sloc2_1_0 + 6)
	sta	*(___ckd_mul_long_sloc2_1_0 + 7)
	lda	*___ckd_mul_long_sloc2_1_0
	cmp	*___ckd_mul_long_sloc0_1_0
	bne	00104$
	lda	*(___ckd_mul_long_sloc2_1_0 + 1)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_mul_long_sloc2_1_0 + 2)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_mul_long_sloc2_1_0 + 3)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_mul_long_sloc2_1_0 + 4)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_mul_long_sloc2_1_0 + 5)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_mul_long_sloc2_1_0 + 6)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_mul_long_sloc2_1_0 + 7)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 7)
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ulong'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ckd_mul_ulong_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_mul_ulong_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_mul_ulong_sloc2_1_0'
;a                         Allocated with name '___ckd_mul_ulong_PARM_2'
;b                         Allocated with name '___ckd_mul_ulong_PARM_3'
;r                         Allocated with name '___ckd_mul_ulong_r_65536_55'
;result                    Allocated with name '___ckd_mul_ulong_result_65536_56'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	-----------------------------------------
;	 function __ckd_mul_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_ulong:
	sta	___ckd_mul_ulong_r_65536_55
	stx	(___ckd_mul_ulong_r_65536_55 + 1)
	lda	___ckd_mul_ulong_PARM_2
	sta	__mullonglong_PARM_1
	lda	(___ckd_mul_ulong_PARM_2 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(___ckd_mul_ulong_PARM_2 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(___ckd_mul_ulong_PARM_2 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(___ckd_mul_ulong_PARM_2 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(___ckd_mul_ulong_PARM_2 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(___ckd_mul_ulong_PARM_2 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(___ckd_mul_ulong_PARM_2 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	___ckd_mul_ulong_PARM_3
	sta	__mullonglong_PARM_2
	lda	(___ckd_mul_ulong_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	lda	(___ckd_mul_ulong_PARM_3 + 2)
	sta	(__mullonglong_PARM_2 + 2)
	lda	(___ckd_mul_ulong_PARM_3 + 3)
	sta	(__mullonglong_PARM_2 + 3)
	lda	(___ckd_mul_ulong_PARM_3 + 4)
	sta	(__mullonglong_PARM_2 + 4)
	lda	(___ckd_mul_ulong_PARM_3 + 5)
	sta	(__mullonglong_PARM_2 + 5)
	lda	(___ckd_mul_ulong_PARM_3 + 6)
	sta	(__mullonglong_PARM_2 + 6)
	lda	(___ckd_mul_ulong_PARM_3 + 7)
	sta	(__mullonglong_PARM_2 + 7)
	jsr	__mullonglong
	sta	*___ckd_mul_ulong_sloc0_1_0
	stx	*(___ckd_mul_ulong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ckd_mul_ulong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ckd_mul_ulong_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___ckd_mul_ulong_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___ckd_mul_ulong_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___ckd_mul_ulong_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___ckd_mul_ulong_sloc0_1_0 + 7)
	lda	*___ckd_mul_ulong_sloc0_1_0
	sta	*___ckd_mul_ulong_sloc1_1_0
	lda	*(___ckd_mul_ulong_sloc0_1_0 + 1)
	sta	*(___ckd_mul_ulong_sloc1_1_0 + 1)
	lda	*(___ckd_mul_ulong_sloc0_1_0 + 2)
	sta	*(___ckd_mul_ulong_sloc1_1_0 + 2)
	lda	*(___ckd_mul_ulong_sloc0_1_0 + 3)
	sta	*(___ckd_mul_ulong_sloc1_1_0 + 3)
	lda	___ckd_mul_ulong_r_65536_55
	sta	*(__DPTR+0)
	lda	(___ckd_mul_ulong_r_65536_55 + 1)
	sta	*(__DPTR+1)
	lda	*___ckd_mul_ulong_sloc1_1_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 1)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 2)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 3)
	iny
	sta	[__DPTR],y
	lda	*___ckd_mul_ulong_sloc1_1_0
	sta	*___ckd_mul_ulong_sloc2_1_0
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 1)
	sta	*(___ckd_mul_ulong_sloc2_1_0 + 1)
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 2)
	sta	*(___ckd_mul_ulong_sloc2_1_0 + 2)
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 3)
	sta	*(___ckd_mul_ulong_sloc2_1_0 + 3)
	ldx	#0x00
	stx	*(___ckd_mul_ulong_sloc2_1_0 + 4)
	stx	*(___ckd_mul_ulong_sloc2_1_0 + 5)
	stx	*(___ckd_mul_ulong_sloc2_1_0 + 6)
	stx	*(___ckd_mul_ulong_sloc2_1_0 + 7)
	lda	*___ckd_mul_ulong_sloc2_1_0
	cmp	*___ckd_mul_ulong_sloc0_1_0
	bne	00104$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 1)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 2)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 3)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 4)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 5)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 6)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 7)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 7)
	beq	00112$
00104$:
	txa
	jmp	00111$
00112$:
	lda	#0x01
00111$:
	eor	#0x01
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
