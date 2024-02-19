;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_add
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ckd_add_ulong_PARM_3
	.globl ___ckd_add_ulong_PARM_2
	.globl ___ckd_add_long_PARM_3
	.globl ___ckd_add_long_PARM_2
	.globl ___ckd_add_uint_PARM_3
	.globl ___ckd_add_uint_PARM_2
	.globl ___ckd_add_int_PARM_3
	.globl ___ckd_add_int_PARM_2
	.globl ___ckd_add_ushort_PARM_3
	.globl ___ckd_add_ushort_PARM_2
	.globl ___ckd_add_short_PARM_3
	.globl ___ckd_add_short_PARM_2
	.globl ___ckd_add_uchar_PARM_3
	.globl ___ckd_add_uchar_PARM_2
	.globl ___ckd_add_schar_PARM_3
	.globl ___ckd_add_schar_PARM_2
	.globl ___ckd_add_schar
	.globl ___ckd_add_uchar
	.globl ___ckd_add_short
	.globl ___ckd_add_ushort
	.globl ___ckd_add_int
	.globl ___ckd_add_uint
	.globl ___ckd_add_long
	.globl ___ckd_add_ulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___ckd_add_schar_sloc0_1_0:
	.ds 8
___ckd_add_schar_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_uchar_sloc0_1_0:
	.ds 8
___ckd_add_uchar_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_short_sloc0_1_0:
	.ds 8
___ckd_add_short_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_ushort_sloc0_1_0:
	.ds 8
___ckd_add_ushort_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_int_sloc0_1_0:
	.ds 8
___ckd_add_int_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_uint_sloc0_1_0:
	.ds 8
___ckd_add_uint_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_long_sloc0_1_0:
	.ds 8
___ckd_add_long_sloc1_1_0:
	.ds 4
___ckd_add_long_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_ulong_sloc0_1_0:
	.ds 8
___ckd_add_ulong_sloc1_1_0:
	.ds 4
___ckd_add_ulong_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ckd_add_schar_PARM_2:
	.ds 8
___ckd_add_schar_PARM_3:
	.ds 8
___ckd_add_schar_r_65536_9:
	.ds 2
___ckd_add_uchar_PARM_2:
	.ds 8
___ckd_add_uchar_PARM_3:
	.ds 8
___ckd_add_uchar_r_65536_11:
	.ds 2
___ckd_add_short_PARM_2:
	.ds 8
___ckd_add_short_PARM_3:
	.ds 8
___ckd_add_short_r_65536_13:
	.ds 2
___ckd_add_ushort_PARM_2:
	.ds 8
___ckd_add_ushort_PARM_3:
	.ds 8
___ckd_add_ushort_r_65536_15:
	.ds 2
___ckd_add_int_PARM_2:
	.ds 8
___ckd_add_int_PARM_3:
	.ds 8
___ckd_add_int_r_65536_17:
	.ds 2
___ckd_add_uint_PARM_2:
	.ds 8
___ckd_add_uint_PARM_3:
	.ds 8
___ckd_add_uint_r_65536_19:
	.ds 2
___ckd_add_long_PARM_2:
	.ds 8
___ckd_add_long_PARM_3:
	.ds 8
___ckd_add_long_r_65536_21:
	.ds 2
___ckd_add_ulong_PARM_2:
	.ds 8
___ckd_add_ulong_PARM_3:
	.ds 8
___ckd_add_ulong_r_65536_23:
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
;Allocation info for local variables in function '__ckd_add_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_schar_PARM_2'
;b                         Allocated with name '___ckd_add_schar_PARM_3'
;r                         Allocated with name '___ckd_add_schar_r_65536_9'
;result                    Allocated with name '___ckd_add_schar_result_65536_10'
;sloc0                     Allocated with name '___ckd_add_schar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_schar_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 51: inline _Bool __ckd_add_schar __CKD_DEFAULT_IMPL(signed char, +)
;	-----------------------------------------
;	 function __ckd_add_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_schar:
	sta	___ckd_add_schar_r_65536_9
	stx	(___ckd_add_schar_r_65536_9 + 1)
	lda	___ckd_add_schar_PARM_2
	clc
	adc	___ckd_add_schar_PARM_3
	sta	*___ckd_add_schar_sloc0_1_0
	lda	(___ckd_add_schar_PARM_2 + 1)
	adc	(___ckd_add_schar_PARM_3 + 1)
	sta	*(___ckd_add_schar_sloc0_1_0 + 1)
	lda	(___ckd_add_schar_PARM_2 + 2)
	adc	(___ckd_add_schar_PARM_3 + 2)
	sta	*(___ckd_add_schar_sloc0_1_0 + 2)
	lda	(___ckd_add_schar_PARM_2 + 3)
	adc	(___ckd_add_schar_PARM_3 + 3)
	sta	*(___ckd_add_schar_sloc0_1_0 + 3)
	lda	(___ckd_add_schar_PARM_2 + 4)
	adc	(___ckd_add_schar_PARM_3 + 4)
	sta	*(___ckd_add_schar_sloc0_1_0 + 4)
	lda	(___ckd_add_schar_PARM_2 + 5)
	adc	(___ckd_add_schar_PARM_3 + 5)
	sta	*(___ckd_add_schar_sloc0_1_0 + 5)
	lda	(___ckd_add_schar_PARM_2 + 6)
	adc	(___ckd_add_schar_PARM_3 + 6)
	sta	*(___ckd_add_schar_sloc0_1_0 + 6)
	lda	(___ckd_add_schar_PARM_2 + 7)
	adc	(___ckd_add_schar_PARM_3 + 7)
	sta	*(___ckd_add_schar_sloc0_1_0 + 7)
	ldx	*___ckd_add_schar_sloc0_1_0
	stx	*(__TEMP+0)
	lda	___ckd_add_schar_r_65536_9
	sta	*(__DPTR+0)
	lda	(___ckd_add_schar_r_65536_9 + 1)
	sta	*(__DPTR+1)
	ldx	*(__TEMP+0)
	txa
	ldy	#0x00
	sta	[__DPTR],y
	ldx	*(__TEMP+0)
	txa
	sta	*___ckd_add_schar_sloc1_1_0
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_add_schar_sloc1_1_0 + 1)
	sta	*(___ckd_add_schar_sloc1_1_0 + 2)
	sta	*(___ckd_add_schar_sloc1_1_0 + 3)
	sta	*(___ckd_add_schar_sloc1_1_0 + 4)
	sta	*(___ckd_add_schar_sloc1_1_0 + 5)
	sta	*(___ckd_add_schar_sloc1_1_0 + 6)
	sta	*(___ckd_add_schar_sloc1_1_0 + 7)
	lda	*___ckd_add_schar_sloc1_1_0
	cmp	*___ckd_add_schar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 1)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 2)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 3)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 4)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 5)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 6)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 7)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_uchar_PARM_2'
;b                         Allocated with name '___ckd_add_uchar_PARM_3'
;r                         Allocated with name '___ckd_add_uchar_r_65536_11'
;result                    Allocated with name '___ckd_add_uchar_result_65536_12'
;sloc0                     Allocated with name '___ckd_add_uchar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_uchar_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 52: inline _Bool __ckd_add_uchar __CKD_DEFAULT_IMPL(unsigned char, +)
;	-----------------------------------------
;	 function __ckd_add_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_uchar:
	sta	___ckd_add_uchar_r_65536_11
	stx	(___ckd_add_uchar_r_65536_11 + 1)
	lda	___ckd_add_uchar_PARM_2
	clc
	adc	___ckd_add_uchar_PARM_3
	sta	*___ckd_add_uchar_sloc0_1_0
	lda	(___ckd_add_uchar_PARM_2 + 1)
	adc	(___ckd_add_uchar_PARM_3 + 1)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 1)
	lda	(___ckd_add_uchar_PARM_2 + 2)
	adc	(___ckd_add_uchar_PARM_3 + 2)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 2)
	lda	(___ckd_add_uchar_PARM_2 + 3)
	adc	(___ckd_add_uchar_PARM_3 + 3)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 3)
	lda	(___ckd_add_uchar_PARM_2 + 4)
	adc	(___ckd_add_uchar_PARM_3 + 4)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 4)
	lda	(___ckd_add_uchar_PARM_2 + 5)
	adc	(___ckd_add_uchar_PARM_3 + 5)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 5)
	lda	(___ckd_add_uchar_PARM_2 + 6)
	adc	(___ckd_add_uchar_PARM_3 + 6)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 6)
	lda	(___ckd_add_uchar_PARM_2 + 7)
	adc	(___ckd_add_uchar_PARM_3 + 7)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 7)
	ldx	*___ckd_add_uchar_sloc0_1_0
	stx	*(__TEMP+0)
	lda	___ckd_add_uchar_r_65536_11
	sta	*(__DPTR+0)
	lda	(___ckd_add_uchar_r_65536_11 + 1)
	sta	*(__DPTR+1)
	ldx	*(__TEMP+0)
	txa
	ldy	#0x00
	sta	[__DPTR],y
	ldx	*(__TEMP+0)
	stx	*___ckd_add_uchar_sloc1_1_0
	sty	*(___ckd_add_uchar_sloc1_1_0 + 1)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 2)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 3)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 4)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 5)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 6)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 7)
	lda	*___ckd_add_uchar_sloc1_1_0
	cmp	*___ckd_add_uchar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 1)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 2)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 3)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 4)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 5)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 6)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 7)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_short_PARM_2'
;b                         Allocated with name '___ckd_add_short_PARM_3'
;r                         Allocated with name '___ckd_add_short_r_65536_13'
;result                    Allocated with name '___ckd_add_short_result_65536_14'
;sloc0                     Allocated with name '___ckd_add_short_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_short_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 53: inline _Bool __ckd_add_short __CKD_DEFAULT_IMPL(short, +)
;	-----------------------------------------
;	 function __ckd_add_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_short:
	sta	___ckd_add_short_r_65536_13
	stx	(___ckd_add_short_r_65536_13 + 1)
	lda	___ckd_add_short_PARM_2
	clc
	adc	___ckd_add_short_PARM_3
	sta	*___ckd_add_short_sloc0_1_0
	lda	(___ckd_add_short_PARM_2 + 1)
	adc	(___ckd_add_short_PARM_3 + 1)
	sta	*(___ckd_add_short_sloc0_1_0 + 1)
	lda	(___ckd_add_short_PARM_2 + 2)
	adc	(___ckd_add_short_PARM_3 + 2)
	sta	*(___ckd_add_short_sloc0_1_0 + 2)
	lda	(___ckd_add_short_PARM_2 + 3)
	adc	(___ckd_add_short_PARM_3 + 3)
	sta	*(___ckd_add_short_sloc0_1_0 + 3)
	lda	(___ckd_add_short_PARM_2 + 4)
	adc	(___ckd_add_short_PARM_3 + 4)
	sta	*(___ckd_add_short_sloc0_1_0 + 4)
	lda	(___ckd_add_short_PARM_2 + 5)
	adc	(___ckd_add_short_PARM_3 + 5)
	sta	*(___ckd_add_short_sloc0_1_0 + 5)
	lda	(___ckd_add_short_PARM_2 + 6)
	adc	(___ckd_add_short_PARM_3 + 6)
	sta	*(___ckd_add_short_sloc0_1_0 + 6)
	lda	(___ckd_add_short_PARM_2 + 7)
	adc	(___ckd_add_short_PARM_3 + 7)
	sta	*(___ckd_add_short_sloc0_1_0 + 7)
	lda	*___ckd_add_short_sloc0_1_0
	ldx	*(___ckd_add_short_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_add_short_r_65536_13
	sta	*(__DPTR+0)
	lda	(___ckd_add_short_r_65536_13 + 1)
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
	sta	*___ckd_add_short_sloc1_1_0
	stx	*(___ckd_add_short_sloc1_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_add_short_sloc1_1_0 + 2)
	sta	*(___ckd_add_short_sloc1_1_0 + 3)
	sta	*(___ckd_add_short_sloc1_1_0 + 4)
	sta	*(___ckd_add_short_sloc1_1_0 + 5)
	sta	*(___ckd_add_short_sloc1_1_0 + 6)
	sta	*(___ckd_add_short_sloc1_1_0 + 7)
	lda	*___ckd_add_short_sloc1_1_0
	cmp	*___ckd_add_short_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_short_sloc1_1_0 + 1)
	cmp	*(___ckd_add_short_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_short_sloc1_1_0 + 2)
	cmp	*(___ckd_add_short_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_short_sloc1_1_0 + 3)
	cmp	*(___ckd_add_short_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_short_sloc1_1_0 + 4)
	cmp	*(___ckd_add_short_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_short_sloc1_1_0 + 5)
	cmp	*(___ckd_add_short_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_short_sloc1_1_0 + 6)
	cmp	*(___ckd_add_short_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_short_sloc1_1_0 + 7)
	cmp	*(___ckd_add_short_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_ushort_PARM_2'
;b                         Allocated with name '___ckd_add_ushort_PARM_3'
;r                         Allocated with name '___ckd_add_ushort_r_65536_15'
;result                    Allocated with name '___ckd_add_ushort_result_65536_16'
;sloc0                     Allocated with name '___ckd_add_ushort_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_ushort_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 54: inline _Bool __ckd_add_ushort __CKD_DEFAULT_IMPL(unsigned short, +)
;	-----------------------------------------
;	 function __ckd_add_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_ushort:
	sta	___ckd_add_ushort_r_65536_15
	stx	(___ckd_add_ushort_r_65536_15 + 1)
	lda	___ckd_add_ushort_PARM_2
	clc
	adc	___ckd_add_ushort_PARM_3
	sta	*___ckd_add_ushort_sloc0_1_0
	lda	(___ckd_add_ushort_PARM_2 + 1)
	adc	(___ckd_add_ushort_PARM_3 + 1)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 1)
	lda	(___ckd_add_ushort_PARM_2 + 2)
	adc	(___ckd_add_ushort_PARM_3 + 2)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 2)
	lda	(___ckd_add_ushort_PARM_2 + 3)
	adc	(___ckd_add_ushort_PARM_3 + 3)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 3)
	lda	(___ckd_add_ushort_PARM_2 + 4)
	adc	(___ckd_add_ushort_PARM_3 + 4)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 4)
	lda	(___ckd_add_ushort_PARM_2 + 5)
	adc	(___ckd_add_ushort_PARM_3 + 5)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 5)
	lda	(___ckd_add_ushort_PARM_2 + 6)
	adc	(___ckd_add_ushort_PARM_3 + 6)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 6)
	lda	(___ckd_add_ushort_PARM_2 + 7)
	adc	(___ckd_add_ushort_PARM_3 + 7)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 7)
	lda	*___ckd_add_ushort_sloc0_1_0
	ldx	*(___ckd_add_ushort_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_add_ushort_r_65536_15
	sta	*(__DPTR+0)
	lda	(___ckd_add_ushort_r_65536_15 + 1)
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
	sta	*___ckd_add_ushort_sloc1_1_0
	stx	*(___ckd_add_ushort_sloc1_1_0 + 1)
	dey
	sty	*(___ckd_add_ushort_sloc1_1_0 + 2)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 3)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 4)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 5)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 6)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 7)
	lda	*___ckd_add_ushort_sloc1_1_0
	cmp	*___ckd_add_ushort_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 1)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 2)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 3)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 4)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 5)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 6)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 7)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_int_PARM_2'
;b                         Allocated with name '___ckd_add_int_PARM_3'
;r                         Allocated with name '___ckd_add_int_r_65536_17'
;result                    Allocated with name '___ckd_add_int_result_65536_18'
;sloc0                     Allocated with name '___ckd_add_int_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_int_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 55: inline _Bool __ckd_add_int __CKD_DEFAULT_IMPL(int, +)
;	-----------------------------------------
;	 function __ckd_add_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_int:
	sta	___ckd_add_int_r_65536_17
	stx	(___ckd_add_int_r_65536_17 + 1)
	lda	___ckd_add_int_PARM_2
	clc
	adc	___ckd_add_int_PARM_3
	sta	*___ckd_add_int_sloc0_1_0
	lda	(___ckd_add_int_PARM_2 + 1)
	adc	(___ckd_add_int_PARM_3 + 1)
	sta	*(___ckd_add_int_sloc0_1_0 + 1)
	lda	(___ckd_add_int_PARM_2 + 2)
	adc	(___ckd_add_int_PARM_3 + 2)
	sta	*(___ckd_add_int_sloc0_1_0 + 2)
	lda	(___ckd_add_int_PARM_2 + 3)
	adc	(___ckd_add_int_PARM_3 + 3)
	sta	*(___ckd_add_int_sloc0_1_0 + 3)
	lda	(___ckd_add_int_PARM_2 + 4)
	adc	(___ckd_add_int_PARM_3 + 4)
	sta	*(___ckd_add_int_sloc0_1_0 + 4)
	lda	(___ckd_add_int_PARM_2 + 5)
	adc	(___ckd_add_int_PARM_3 + 5)
	sta	*(___ckd_add_int_sloc0_1_0 + 5)
	lda	(___ckd_add_int_PARM_2 + 6)
	adc	(___ckd_add_int_PARM_3 + 6)
	sta	*(___ckd_add_int_sloc0_1_0 + 6)
	lda	(___ckd_add_int_PARM_2 + 7)
	adc	(___ckd_add_int_PARM_3 + 7)
	sta	*(___ckd_add_int_sloc0_1_0 + 7)
	lda	*___ckd_add_int_sloc0_1_0
	ldx	*(___ckd_add_int_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_add_int_r_65536_17
	sta	*(__DPTR+0)
	lda	(___ckd_add_int_r_65536_17 + 1)
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
	sta	*___ckd_add_int_sloc1_1_0
	stx	*(___ckd_add_int_sloc1_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_add_int_sloc1_1_0 + 2)
	sta	*(___ckd_add_int_sloc1_1_0 + 3)
	sta	*(___ckd_add_int_sloc1_1_0 + 4)
	sta	*(___ckd_add_int_sloc1_1_0 + 5)
	sta	*(___ckd_add_int_sloc1_1_0 + 6)
	sta	*(___ckd_add_int_sloc1_1_0 + 7)
	lda	*___ckd_add_int_sloc1_1_0
	cmp	*___ckd_add_int_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_int_sloc1_1_0 + 1)
	cmp	*(___ckd_add_int_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_int_sloc1_1_0 + 2)
	cmp	*(___ckd_add_int_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_int_sloc1_1_0 + 3)
	cmp	*(___ckd_add_int_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_int_sloc1_1_0 + 4)
	cmp	*(___ckd_add_int_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_int_sloc1_1_0 + 5)
	cmp	*(___ckd_add_int_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_int_sloc1_1_0 + 6)
	cmp	*(___ckd_add_int_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_int_sloc1_1_0 + 7)
	cmp	*(___ckd_add_int_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_uint_PARM_2'
;b                         Allocated with name '___ckd_add_uint_PARM_3'
;r                         Allocated with name '___ckd_add_uint_r_65536_19'
;result                    Allocated with name '___ckd_add_uint_result_65536_20'
;sloc0                     Allocated with name '___ckd_add_uint_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_uint_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 56: inline _Bool __ckd_add_uint __CKD_DEFAULT_IMPL(unsigned int, +)
;	-----------------------------------------
;	 function __ckd_add_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_uint:
	sta	___ckd_add_uint_r_65536_19
	stx	(___ckd_add_uint_r_65536_19 + 1)
	lda	___ckd_add_uint_PARM_2
	clc
	adc	___ckd_add_uint_PARM_3
	sta	*___ckd_add_uint_sloc0_1_0
	lda	(___ckd_add_uint_PARM_2 + 1)
	adc	(___ckd_add_uint_PARM_3 + 1)
	sta	*(___ckd_add_uint_sloc0_1_0 + 1)
	lda	(___ckd_add_uint_PARM_2 + 2)
	adc	(___ckd_add_uint_PARM_3 + 2)
	sta	*(___ckd_add_uint_sloc0_1_0 + 2)
	lda	(___ckd_add_uint_PARM_2 + 3)
	adc	(___ckd_add_uint_PARM_3 + 3)
	sta	*(___ckd_add_uint_sloc0_1_0 + 3)
	lda	(___ckd_add_uint_PARM_2 + 4)
	adc	(___ckd_add_uint_PARM_3 + 4)
	sta	*(___ckd_add_uint_sloc0_1_0 + 4)
	lda	(___ckd_add_uint_PARM_2 + 5)
	adc	(___ckd_add_uint_PARM_3 + 5)
	sta	*(___ckd_add_uint_sloc0_1_0 + 5)
	lda	(___ckd_add_uint_PARM_2 + 6)
	adc	(___ckd_add_uint_PARM_3 + 6)
	sta	*(___ckd_add_uint_sloc0_1_0 + 6)
	lda	(___ckd_add_uint_PARM_2 + 7)
	adc	(___ckd_add_uint_PARM_3 + 7)
	sta	*(___ckd_add_uint_sloc0_1_0 + 7)
	lda	*___ckd_add_uint_sloc0_1_0
	ldx	*(___ckd_add_uint_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_add_uint_r_65536_19
	sta	*(__DPTR+0)
	lda	(___ckd_add_uint_r_65536_19 + 1)
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
	sta	*___ckd_add_uint_sloc1_1_0
	stx	*(___ckd_add_uint_sloc1_1_0 + 1)
	dey
	sty	*(___ckd_add_uint_sloc1_1_0 + 2)
	sty	*(___ckd_add_uint_sloc1_1_0 + 3)
	sty	*(___ckd_add_uint_sloc1_1_0 + 4)
	sty	*(___ckd_add_uint_sloc1_1_0 + 5)
	sty	*(___ckd_add_uint_sloc1_1_0 + 6)
	sty	*(___ckd_add_uint_sloc1_1_0 + 7)
	lda	*___ckd_add_uint_sloc1_1_0
	cmp	*___ckd_add_uint_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 1)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 2)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 3)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 4)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 5)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 6)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 7)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_long_PARM_2'
;b                         Allocated with name '___ckd_add_long_PARM_3'
;r                         Allocated with name '___ckd_add_long_r_65536_21'
;result                    Allocated with name '___ckd_add_long_result_65536_22'
;sloc0                     Allocated with name '___ckd_add_long_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_long_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_add_long_sloc2_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 57: inline _Bool __ckd_add_long __CKD_DEFAULT_IMPL(long, +)
;	-----------------------------------------
;	 function __ckd_add_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_long:
	sta	___ckd_add_long_r_65536_21
	stx	(___ckd_add_long_r_65536_21 + 1)
	lda	___ckd_add_long_PARM_2
	clc
	adc	___ckd_add_long_PARM_3
	sta	*___ckd_add_long_sloc0_1_0
	lda	(___ckd_add_long_PARM_2 + 1)
	adc	(___ckd_add_long_PARM_3 + 1)
	sta	*(___ckd_add_long_sloc0_1_0 + 1)
	lda	(___ckd_add_long_PARM_2 + 2)
	adc	(___ckd_add_long_PARM_3 + 2)
	sta	*(___ckd_add_long_sloc0_1_0 + 2)
	lda	(___ckd_add_long_PARM_2 + 3)
	adc	(___ckd_add_long_PARM_3 + 3)
	sta	*(___ckd_add_long_sloc0_1_0 + 3)
	lda	(___ckd_add_long_PARM_2 + 4)
	adc	(___ckd_add_long_PARM_3 + 4)
	sta	*(___ckd_add_long_sloc0_1_0 + 4)
	lda	(___ckd_add_long_PARM_2 + 5)
	adc	(___ckd_add_long_PARM_3 + 5)
	sta	*(___ckd_add_long_sloc0_1_0 + 5)
	lda	(___ckd_add_long_PARM_2 + 6)
	adc	(___ckd_add_long_PARM_3 + 6)
	sta	*(___ckd_add_long_sloc0_1_0 + 6)
	lda	(___ckd_add_long_PARM_2 + 7)
	adc	(___ckd_add_long_PARM_3 + 7)
	sta	*(___ckd_add_long_sloc0_1_0 + 7)
	lda	*___ckd_add_long_sloc0_1_0
	sta	*___ckd_add_long_sloc1_1_0
	lda	*(___ckd_add_long_sloc0_1_0 + 1)
	sta	*(___ckd_add_long_sloc1_1_0 + 1)
	lda	*(___ckd_add_long_sloc0_1_0 + 2)
	sta	*(___ckd_add_long_sloc1_1_0 + 2)
	lda	*(___ckd_add_long_sloc0_1_0 + 3)
	sta	*(___ckd_add_long_sloc1_1_0 + 3)
	lda	___ckd_add_long_r_65536_21
	sta	*(__DPTR+0)
	lda	(___ckd_add_long_r_65536_21 + 1)
	sta	*(__DPTR+1)
	lda	*___ckd_add_long_sloc1_1_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(___ckd_add_long_sloc1_1_0 + 1)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_add_long_sloc1_1_0 + 2)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_add_long_sloc1_1_0 + 3)
	iny
	sta	[__DPTR],y
	lda	*___ckd_add_long_sloc1_1_0
	sta	*___ckd_add_long_sloc2_1_0
	lda	*(___ckd_add_long_sloc1_1_0 + 1)
	sta	*(___ckd_add_long_sloc2_1_0 + 1)
	lda	*(___ckd_add_long_sloc1_1_0 + 2)
	sta	*(___ckd_add_long_sloc2_1_0 + 2)
	lda	*(___ckd_add_long_sloc1_1_0 + 3)
	sta	*(___ckd_add_long_sloc2_1_0 + 3)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_add_long_sloc2_1_0 + 4)
	sta	*(___ckd_add_long_sloc2_1_0 + 5)
	sta	*(___ckd_add_long_sloc2_1_0 + 6)
	sta	*(___ckd_add_long_sloc2_1_0 + 7)
	lda	*___ckd_add_long_sloc2_1_0
	cmp	*___ckd_add_long_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 1)
	cmp	*(___ckd_add_long_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 2)
	cmp	*(___ckd_add_long_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 3)
	cmp	*(___ckd_add_long_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 4)
	cmp	*(___ckd_add_long_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 5)
	cmp	*(___ckd_add_long_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 6)
	cmp	*(___ckd_add_long_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 7)
	cmp	*(___ckd_add_long_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_ulong_PARM_2'
;b                         Allocated with name '___ckd_add_ulong_PARM_3'
;r                         Allocated with name '___ckd_add_ulong_r_65536_23'
;result                    Allocated with name '___ckd_add_ulong_result_65536_24'
;sloc0                     Allocated with name '___ckd_add_ulong_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_ulong_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_add_ulong_sloc2_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 58: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	-----------------------------------------
;	 function __ckd_add_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_ulong:
	sta	___ckd_add_ulong_r_65536_23
	stx	(___ckd_add_ulong_r_65536_23 + 1)
	lda	___ckd_add_ulong_PARM_2
	clc
	adc	___ckd_add_ulong_PARM_3
	sta	*___ckd_add_ulong_sloc0_1_0
	lda	(___ckd_add_ulong_PARM_2 + 1)
	adc	(___ckd_add_ulong_PARM_3 + 1)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 1)
	lda	(___ckd_add_ulong_PARM_2 + 2)
	adc	(___ckd_add_ulong_PARM_3 + 2)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 2)
	lda	(___ckd_add_ulong_PARM_2 + 3)
	adc	(___ckd_add_ulong_PARM_3 + 3)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 3)
	lda	(___ckd_add_ulong_PARM_2 + 4)
	adc	(___ckd_add_ulong_PARM_3 + 4)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 4)
	lda	(___ckd_add_ulong_PARM_2 + 5)
	adc	(___ckd_add_ulong_PARM_3 + 5)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 5)
	lda	(___ckd_add_ulong_PARM_2 + 6)
	adc	(___ckd_add_ulong_PARM_3 + 6)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 6)
	lda	(___ckd_add_ulong_PARM_2 + 7)
	adc	(___ckd_add_ulong_PARM_3 + 7)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 7)
	lda	*___ckd_add_ulong_sloc0_1_0
	sta	*___ckd_add_ulong_sloc1_1_0
	lda	*(___ckd_add_ulong_sloc0_1_0 + 1)
	sta	*(___ckd_add_ulong_sloc1_1_0 + 1)
	lda	*(___ckd_add_ulong_sloc0_1_0 + 2)
	sta	*(___ckd_add_ulong_sloc1_1_0 + 2)
	lda	*(___ckd_add_ulong_sloc0_1_0 + 3)
	sta	*(___ckd_add_ulong_sloc1_1_0 + 3)
	lda	___ckd_add_ulong_r_65536_23
	sta	*(__DPTR+0)
	lda	(___ckd_add_ulong_r_65536_23 + 1)
	sta	*(__DPTR+1)
	lda	*___ckd_add_ulong_sloc1_1_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(___ckd_add_ulong_sloc1_1_0 + 1)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_add_ulong_sloc1_1_0 + 2)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_add_ulong_sloc1_1_0 + 3)
	iny
	sta	[__DPTR],y
	lda	*___ckd_add_ulong_sloc1_1_0
	sta	*___ckd_add_ulong_sloc2_1_0
	lda	*(___ckd_add_ulong_sloc1_1_0 + 1)
	sta	*(___ckd_add_ulong_sloc2_1_0 + 1)
	lda	*(___ckd_add_ulong_sloc1_1_0 + 2)
	sta	*(___ckd_add_ulong_sloc2_1_0 + 2)
	lda	*(___ckd_add_ulong_sloc1_1_0 + 3)
	sta	*(___ckd_add_ulong_sloc2_1_0 + 3)
	ldx	#0x00
	stx	*(___ckd_add_ulong_sloc2_1_0 + 4)
	stx	*(___ckd_add_ulong_sloc2_1_0 + 5)
	stx	*(___ckd_add_ulong_sloc2_1_0 + 6)
	stx	*(___ckd_add_ulong_sloc2_1_0 + 7)
	lda	*___ckd_add_ulong_sloc2_1_0
	cmp	*___ckd_add_ulong_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 1)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 2)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 3)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 4)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 5)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 6)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 7)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 7)
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
