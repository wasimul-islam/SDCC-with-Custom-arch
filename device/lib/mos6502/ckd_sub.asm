;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_sub
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ckd_sub_ulong_PARM_3
	.globl ___ckd_sub_ulong_PARM_2
	.globl ___ckd_sub_long_PARM_3
	.globl ___ckd_sub_long_PARM_2
	.globl ___ckd_sub_uint_PARM_3
	.globl ___ckd_sub_uint_PARM_2
	.globl ___ckd_sub_int_PARM_3
	.globl ___ckd_sub_int_PARM_2
	.globl ___ckd_sub_ushort_PARM_3
	.globl ___ckd_sub_ushort_PARM_2
	.globl ___ckd_sub_short_PARM_3
	.globl ___ckd_sub_short_PARM_2
	.globl ___ckd_sub_uchar_PARM_3
	.globl ___ckd_sub_uchar_PARM_2
	.globl ___ckd_sub_schar_PARM_3
	.globl ___ckd_sub_schar_PARM_2
	.globl ___ckd_sub_schar
	.globl ___ckd_sub_uchar
	.globl ___ckd_sub_short
	.globl ___ckd_sub_ushort
	.globl ___ckd_sub_int
	.globl ___ckd_sub_uint
	.globl ___ckd_sub_long
	.globl ___ckd_sub_ulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___ckd_sub_schar_sloc0_1_0:
	.ds 8
___ckd_sub_schar_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_uchar_sloc0_1_0:
	.ds 8
___ckd_sub_uchar_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_short_sloc0_1_0:
	.ds 8
___ckd_sub_short_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_ushort_sloc0_1_0:
	.ds 8
___ckd_sub_ushort_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_int_sloc0_1_0:
	.ds 8
___ckd_sub_int_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_uint_sloc0_1_0:
	.ds 8
___ckd_sub_uint_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_long_sloc0_1_0:
	.ds 8
___ckd_sub_long_sloc1_1_0:
	.ds 4
___ckd_sub_long_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_ulong_sloc0_1_0:
	.ds 8
___ckd_sub_ulong_sloc1_1_0:
	.ds 4
___ckd_sub_ulong_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ckd_sub_schar_PARM_2:
	.ds 8
___ckd_sub_schar_PARM_3:
	.ds 8
___ckd_sub_schar_r_65536_25:
	.ds 2
___ckd_sub_uchar_PARM_2:
	.ds 8
___ckd_sub_uchar_PARM_3:
	.ds 8
___ckd_sub_uchar_r_65536_27:
	.ds 2
___ckd_sub_short_PARM_2:
	.ds 8
___ckd_sub_short_PARM_3:
	.ds 8
___ckd_sub_short_r_65536_29:
	.ds 2
___ckd_sub_ushort_PARM_2:
	.ds 8
___ckd_sub_ushort_PARM_3:
	.ds 8
___ckd_sub_ushort_r_65536_31:
	.ds 2
___ckd_sub_int_PARM_2:
	.ds 8
___ckd_sub_int_PARM_3:
	.ds 8
___ckd_sub_int_r_65536_33:
	.ds 2
___ckd_sub_uint_PARM_2:
	.ds 8
___ckd_sub_uint_PARM_3:
	.ds 8
___ckd_sub_uint_r_65536_35:
	.ds 2
___ckd_sub_long_PARM_2:
	.ds 8
___ckd_sub_long_PARM_3:
	.ds 8
___ckd_sub_long_r_65536_37:
	.ds 2
___ckd_sub_ulong_PARM_2:
	.ds 8
___ckd_sub_ulong_PARM_3:
	.ds 8
___ckd_sub_ulong_r_65536_39:
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
;Allocation info for local variables in function '__ckd_sub_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_schar_PARM_2'
;b                         Allocated with name '___ckd_sub_schar_PARM_3'
;r                         Allocated with name '___ckd_sub_schar_r_65536_25'
;result                    Allocated with name '___ckd_sub_schar_result_65536_26'
;sloc0                     Allocated with name '___ckd_sub_schar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_schar_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 60: inline _Bool __ckd_sub_schar __CKD_DEFAULT_IMPL(signed char, -)
;	-----------------------------------------
;	 function __ckd_sub_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_schar:
	sta	___ckd_sub_schar_r_65536_25
	stx	(___ckd_sub_schar_r_65536_25 + 1)
	lda	___ckd_sub_schar_PARM_2
	sec
	sbc	___ckd_sub_schar_PARM_3
	sta	*___ckd_sub_schar_sloc0_1_0
	lda	(___ckd_sub_schar_PARM_2 + 1)
	sbc	(___ckd_sub_schar_PARM_3 + 1)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 1)
	lda	(___ckd_sub_schar_PARM_2 + 2)
	sbc	(___ckd_sub_schar_PARM_3 + 2)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 2)
	lda	(___ckd_sub_schar_PARM_2 + 3)
	sbc	(___ckd_sub_schar_PARM_3 + 3)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 3)
	lda	(___ckd_sub_schar_PARM_2 + 4)
	sbc	(___ckd_sub_schar_PARM_3 + 4)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 4)
	lda	(___ckd_sub_schar_PARM_2 + 5)
	sbc	(___ckd_sub_schar_PARM_3 + 5)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 5)
	lda	(___ckd_sub_schar_PARM_2 + 6)
	sbc	(___ckd_sub_schar_PARM_3 + 6)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 6)
	lda	(___ckd_sub_schar_PARM_2 + 7)
	sbc	(___ckd_sub_schar_PARM_3 + 7)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 7)
	ldx	*___ckd_sub_schar_sloc0_1_0
	stx	*(__TEMP+0)
	lda	___ckd_sub_schar_r_65536_25
	sta	*(__DPTR+0)
	lda	(___ckd_sub_schar_r_65536_25 + 1)
	sta	*(__DPTR+1)
	ldx	*(__TEMP+0)
	txa
	ldy	#0x00
	sta	[__DPTR],y
	ldx	*(__TEMP+0)
	txa
	sta	*___ckd_sub_schar_sloc1_1_0
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_sub_schar_sloc1_1_0 + 1)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 2)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 3)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 4)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 5)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 6)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 7)
	lda	*___ckd_sub_schar_sloc1_1_0
	cmp	*___ckd_sub_schar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_sub_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_uchar_PARM_2'
;b                         Allocated with name '___ckd_sub_uchar_PARM_3'
;r                         Allocated with name '___ckd_sub_uchar_r_65536_27'
;result                    Allocated with name '___ckd_sub_uchar_result_65536_28'
;sloc0                     Allocated with name '___ckd_sub_uchar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_uchar_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 61: inline _Bool __ckd_sub_uchar __CKD_DEFAULT_IMPL(unsigned char, -)
;	-----------------------------------------
;	 function __ckd_sub_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_uchar:
	sta	___ckd_sub_uchar_r_65536_27
	stx	(___ckd_sub_uchar_r_65536_27 + 1)
	lda	___ckd_sub_uchar_PARM_2
	sec
	sbc	___ckd_sub_uchar_PARM_3
	sta	*___ckd_sub_uchar_sloc0_1_0
	lda	(___ckd_sub_uchar_PARM_2 + 1)
	sbc	(___ckd_sub_uchar_PARM_3 + 1)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 1)
	lda	(___ckd_sub_uchar_PARM_2 + 2)
	sbc	(___ckd_sub_uchar_PARM_3 + 2)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 2)
	lda	(___ckd_sub_uchar_PARM_2 + 3)
	sbc	(___ckd_sub_uchar_PARM_3 + 3)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 3)
	lda	(___ckd_sub_uchar_PARM_2 + 4)
	sbc	(___ckd_sub_uchar_PARM_3 + 4)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 4)
	lda	(___ckd_sub_uchar_PARM_2 + 5)
	sbc	(___ckd_sub_uchar_PARM_3 + 5)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 5)
	lda	(___ckd_sub_uchar_PARM_2 + 6)
	sbc	(___ckd_sub_uchar_PARM_3 + 6)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 6)
	lda	(___ckd_sub_uchar_PARM_2 + 7)
	sbc	(___ckd_sub_uchar_PARM_3 + 7)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 7)
	ldx	*___ckd_sub_uchar_sloc0_1_0
	stx	*(__TEMP+0)
	lda	___ckd_sub_uchar_r_65536_27
	sta	*(__DPTR+0)
	lda	(___ckd_sub_uchar_r_65536_27 + 1)
	sta	*(__DPTR+1)
	ldx	*(__TEMP+0)
	txa
	ldy	#0x00
	sta	[__DPTR],y
	ldx	*(__TEMP+0)
	stx	*___ckd_sub_uchar_sloc1_1_0
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 1)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 2)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 3)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 4)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 5)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 6)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 7)
	lda	*___ckd_sub_uchar_sloc1_1_0
	cmp	*___ckd_sub_uchar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_sub_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_short_PARM_2'
;b                         Allocated with name '___ckd_sub_short_PARM_3'
;r                         Allocated with name '___ckd_sub_short_r_65536_29'
;result                    Allocated with name '___ckd_sub_short_result_65536_30'
;sloc0                     Allocated with name '___ckd_sub_short_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_short_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 62: inline _Bool __ckd_sub_short __CKD_DEFAULT_IMPL(short, -)
;	-----------------------------------------
;	 function __ckd_sub_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_short:
	sta	___ckd_sub_short_r_65536_29
	stx	(___ckd_sub_short_r_65536_29 + 1)
	lda	___ckd_sub_short_PARM_2
	sec
	sbc	___ckd_sub_short_PARM_3
	sta	*___ckd_sub_short_sloc0_1_0
	lda	(___ckd_sub_short_PARM_2 + 1)
	sbc	(___ckd_sub_short_PARM_3 + 1)
	sta	*(___ckd_sub_short_sloc0_1_0 + 1)
	lda	(___ckd_sub_short_PARM_2 + 2)
	sbc	(___ckd_sub_short_PARM_3 + 2)
	sta	*(___ckd_sub_short_sloc0_1_0 + 2)
	lda	(___ckd_sub_short_PARM_2 + 3)
	sbc	(___ckd_sub_short_PARM_3 + 3)
	sta	*(___ckd_sub_short_sloc0_1_0 + 3)
	lda	(___ckd_sub_short_PARM_2 + 4)
	sbc	(___ckd_sub_short_PARM_3 + 4)
	sta	*(___ckd_sub_short_sloc0_1_0 + 4)
	lda	(___ckd_sub_short_PARM_2 + 5)
	sbc	(___ckd_sub_short_PARM_3 + 5)
	sta	*(___ckd_sub_short_sloc0_1_0 + 5)
	lda	(___ckd_sub_short_PARM_2 + 6)
	sbc	(___ckd_sub_short_PARM_3 + 6)
	sta	*(___ckd_sub_short_sloc0_1_0 + 6)
	lda	(___ckd_sub_short_PARM_2 + 7)
	sbc	(___ckd_sub_short_PARM_3 + 7)
	sta	*(___ckd_sub_short_sloc0_1_0 + 7)
	lda	*___ckd_sub_short_sloc0_1_0
	ldx	*(___ckd_sub_short_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_sub_short_r_65536_29
	sta	*(__DPTR+0)
	lda	(___ckd_sub_short_r_65536_29 + 1)
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
	sta	*___ckd_sub_short_sloc1_1_0
	stx	*(___ckd_sub_short_sloc1_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_sub_short_sloc1_1_0 + 2)
	sta	*(___ckd_sub_short_sloc1_1_0 + 3)
	sta	*(___ckd_sub_short_sloc1_1_0 + 4)
	sta	*(___ckd_sub_short_sloc1_1_0 + 5)
	sta	*(___ckd_sub_short_sloc1_1_0 + 6)
	sta	*(___ckd_sub_short_sloc1_1_0 + 7)
	lda	*___ckd_sub_short_sloc1_1_0
	cmp	*___ckd_sub_short_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_short_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_short_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_short_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_short_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_short_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_short_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_short_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_sub_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_ushort_PARM_2'
;b                         Allocated with name '___ckd_sub_ushort_PARM_3'
;r                         Allocated with name '___ckd_sub_ushort_r_65536_31'
;result                    Allocated with name '___ckd_sub_ushort_result_65536_32'
;sloc0                     Allocated with name '___ckd_sub_ushort_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_ushort_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 63: inline _Bool __ckd_sub_ushort __CKD_DEFAULT_IMPL(unsigned short, -)
;	-----------------------------------------
;	 function __ckd_sub_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_ushort:
	sta	___ckd_sub_ushort_r_65536_31
	stx	(___ckd_sub_ushort_r_65536_31 + 1)
	lda	___ckd_sub_ushort_PARM_2
	sec
	sbc	___ckd_sub_ushort_PARM_3
	sta	*___ckd_sub_ushort_sloc0_1_0
	lda	(___ckd_sub_ushort_PARM_2 + 1)
	sbc	(___ckd_sub_ushort_PARM_3 + 1)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 1)
	lda	(___ckd_sub_ushort_PARM_2 + 2)
	sbc	(___ckd_sub_ushort_PARM_3 + 2)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 2)
	lda	(___ckd_sub_ushort_PARM_2 + 3)
	sbc	(___ckd_sub_ushort_PARM_3 + 3)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 3)
	lda	(___ckd_sub_ushort_PARM_2 + 4)
	sbc	(___ckd_sub_ushort_PARM_3 + 4)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 4)
	lda	(___ckd_sub_ushort_PARM_2 + 5)
	sbc	(___ckd_sub_ushort_PARM_3 + 5)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 5)
	lda	(___ckd_sub_ushort_PARM_2 + 6)
	sbc	(___ckd_sub_ushort_PARM_3 + 6)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 6)
	lda	(___ckd_sub_ushort_PARM_2 + 7)
	sbc	(___ckd_sub_ushort_PARM_3 + 7)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 7)
	lda	*___ckd_sub_ushort_sloc0_1_0
	ldx	*(___ckd_sub_ushort_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_sub_ushort_r_65536_31
	sta	*(__DPTR+0)
	lda	(___ckd_sub_ushort_r_65536_31 + 1)
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
	sta	*___ckd_sub_ushort_sloc1_1_0
	stx	*(___ckd_sub_ushort_sloc1_1_0 + 1)
	dey
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 2)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 3)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 4)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 5)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 6)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 7)
	lda	*___ckd_sub_ushort_sloc1_1_0
	cmp	*___ckd_sub_ushort_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_sub_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_int_PARM_2'
;b                         Allocated with name '___ckd_sub_int_PARM_3'
;r                         Allocated with name '___ckd_sub_int_r_65536_33'
;result                    Allocated with name '___ckd_sub_int_result_65536_34'
;sloc0                     Allocated with name '___ckd_sub_int_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_int_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 64: inline _Bool __ckd_sub_int __CKD_DEFAULT_IMPL(int, -)
;	-----------------------------------------
;	 function __ckd_sub_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_int:
	sta	___ckd_sub_int_r_65536_33
	stx	(___ckd_sub_int_r_65536_33 + 1)
	lda	___ckd_sub_int_PARM_2
	sec
	sbc	___ckd_sub_int_PARM_3
	sta	*___ckd_sub_int_sloc0_1_0
	lda	(___ckd_sub_int_PARM_2 + 1)
	sbc	(___ckd_sub_int_PARM_3 + 1)
	sta	*(___ckd_sub_int_sloc0_1_0 + 1)
	lda	(___ckd_sub_int_PARM_2 + 2)
	sbc	(___ckd_sub_int_PARM_3 + 2)
	sta	*(___ckd_sub_int_sloc0_1_0 + 2)
	lda	(___ckd_sub_int_PARM_2 + 3)
	sbc	(___ckd_sub_int_PARM_3 + 3)
	sta	*(___ckd_sub_int_sloc0_1_0 + 3)
	lda	(___ckd_sub_int_PARM_2 + 4)
	sbc	(___ckd_sub_int_PARM_3 + 4)
	sta	*(___ckd_sub_int_sloc0_1_0 + 4)
	lda	(___ckd_sub_int_PARM_2 + 5)
	sbc	(___ckd_sub_int_PARM_3 + 5)
	sta	*(___ckd_sub_int_sloc0_1_0 + 5)
	lda	(___ckd_sub_int_PARM_2 + 6)
	sbc	(___ckd_sub_int_PARM_3 + 6)
	sta	*(___ckd_sub_int_sloc0_1_0 + 6)
	lda	(___ckd_sub_int_PARM_2 + 7)
	sbc	(___ckd_sub_int_PARM_3 + 7)
	sta	*(___ckd_sub_int_sloc0_1_0 + 7)
	lda	*___ckd_sub_int_sloc0_1_0
	ldx	*(___ckd_sub_int_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_sub_int_r_65536_33
	sta	*(__DPTR+0)
	lda	(___ckd_sub_int_r_65536_33 + 1)
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
	sta	*___ckd_sub_int_sloc1_1_0
	stx	*(___ckd_sub_int_sloc1_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_sub_int_sloc1_1_0 + 2)
	sta	*(___ckd_sub_int_sloc1_1_0 + 3)
	sta	*(___ckd_sub_int_sloc1_1_0 + 4)
	sta	*(___ckd_sub_int_sloc1_1_0 + 5)
	sta	*(___ckd_sub_int_sloc1_1_0 + 6)
	sta	*(___ckd_sub_int_sloc1_1_0 + 7)
	lda	*___ckd_sub_int_sloc1_1_0
	cmp	*___ckd_sub_int_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_int_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_int_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_int_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_int_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_int_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_int_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_int_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_sub_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_uint_PARM_2'
;b                         Allocated with name '___ckd_sub_uint_PARM_3'
;r                         Allocated with name '___ckd_sub_uint_r_65536_35'
;result                    Allocated with name '___ckd_sub_uint_result_65536_36'
;sloc0                     Allocated with name '___ckd_sub_uint_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_uint_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 65: inline _Bool __ckd_sub_uint __CKD_DEFAULT_IMPL(unsigned int, -)
;	-----------------------------------------
;	 function __ckd_sub_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_uint:
	sta	___ckd_sub_uint_r_65536_35
	stx	(___ckd_sub_uint_r_65536_35 + 1)
	lda	___ckd_sub_uint_PARM_2
	sec
	sbc	___ckd_sub_uint_PARM_3
	sta	*___ckd_sub_uint_sloc0_1_0
	lda	(___ckd_sub_uint_PARM_2 + 1)
	sbc	(___ckd_sub_uint_PARM_3 + 1)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 1)
	lda	(___ckd_sub_uint_PARM_2 + 2)
	sbc	(___ckd_sub_uint_PARM_3 + 2)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 2)
	lda	(___ckd_sub_uint_PARM_2 + 3)
	sbc	(___ckd_sub_uint_PARM_3 + 3)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 3)
	lda	(___ckd_sub_uint_PARM_2 + 4)
	sbc	(___ckd_sub_uint_PARM_3 + 4)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 4)
	lda	(___ckd_sub_uint_PARM_2 + 5)
	sbc	(___ckd_sub_uint_PARM_3 + 5)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 5)
	lda	(___ckd_sub_uint_PARM_2 + 6)
	sbc	(___ckd_sub_uint_PARM_3 + 6)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 6)
	lda	(___ckd_sub_uint_PARM_2 + 7)
	sbc	(___ckd_sub_uint_PARM_3 + 7)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 7)
	lda	*___ckd_sub_uint_sloc0_1_0
	ldx	*(___ckd_sub_uint_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	lda	___ckd_sub_uint_r_65536_35
	sta	*(__DPTR+0)
	lda	(___ckd_sub_uint_r_65536_35 + 1)
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
	sta	*___ckd_sub_uint_sloc1_1_0
	stx	*(___ckd_sub_uint_sloc1_1_0 + 1)
	dey
	sty	*(___ckd_sub_uint_sloc1_1_0 + 2)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 3)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 4)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 5)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 6)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 7)
	lda	*___ckd_sub_uint_sloc1_1_0
	cmp	*___ckd_sub_uint_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_sub_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_long_PARM_2'
;b                         Allocated with name '___ckd_sub_long_PARM_3'
;r                         Allocated with name '___ckd_sub_long_r_65536_37'
;result                    Allocated with name '___ckd_sub_long_result_65536_38'
;sloc0                     Allocated with name '___ckd_sub_long_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_long_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_sub_long_sloc2_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 66: inline _Bool __ckd_sub_long __CKD_DEFAULT_IMPL(long, -)
;	-----------------------------------------
;	 function __ckd_sub_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_long:
	sta	___ckd_sub_long_r_65536_37
	stx	(___ckd_sub_long_r_65536_37 + 1)
	lda	___ckd_sub_long_PARM_2
	sec
	sbc	___ckd_sub_long_PARM_3
	sta	*___ckd_sub_long_sloc0_1_0
	lda	(___ckd_sub_long_PARM_2 + 1)
	sbc	(___ckd_sub_long_PARM_3 + 1)
	sta	*(___ckd_sub_long_sloc0_1_0 + 1)
	lda	(___ckd_sub_long_PARM_2 + 2)
	sbc	(___ckd_sub_long_PARM_3 + 2)
	sta	*(___ckd_sub_long_sloc0_1_0 + 2)
	lda	(___ckd_sub_long_PARM_2 + 3)
	sbc	(___ckd_sub_long_PARM_3 + 3)
	sta	*(___ckd_sub_long_sloc0_1_0 + 3)
	lda	(___ckd_sub_long_PARM_2 + 4)
	sbc	(___ckd_sub_long_PARM_3 + 4)
	sta	*(___ckd_sub_long_sloc0_1_0 + 4)
	lda	(___ckd_sub_long_PARM_2 + 5)
	sbc	(___ckd_sub_long_PARM_3 + 5)
	sta	*(___ckd_sub_long_sloc0_1_0 + 5)
	lda	(___ckd_sub_long_PARM_2 + 6)
	sbc	(___ckd_sub_long_PARM_3 + 6)
	sta	*(___ckd_sub_long_sloc0_1_0 + 6)
	lda	(___ckd_sub_long_PARM_2 + 7)
	sbc	(___ckd_sub_long_PARM_3 + 7)
	sta	*(___ckd_sub_long_sloc0_1_0 + 7)
	lda	*___ckd_sub_long_sloc0_1_0
	sta	*___ckd_sub_long_sloc1_1_0
	lda	*(___ckd_sub_long_sloc0_1_0 + 1)
	sta	*(___ckd_sub_long_sloc1_1_0 + 1)
	lda	*(___ckd_sub_long_sloc0_1_0 + 2)
	sta	*(___ckd_sub_long_sloc1_1_0 + 2)
	lda	*(___ckd_sub_long_sloc0_1_0 + 3)
	sta	*(___ckd_sub_long_sloc1_1_0 + 3)
	lda	___ckd_sub_long_r_65536_37
	sta	*(__DPTR+0)
	lda	(___ckd_sub_long_r_65536_37 + 1)
	sta	*(__DPTR+1)
	lda	*___ckd_sub_long_sloc1_1_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(___ckd_sub_long_sloc1_1_0 + 1)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_sub_long_sloc1_1_0 + 2)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_sub_long_sloc1_1_0 + 3)
	iny
	sta	[__DPTR],y
	lda	*___ckd_sub_long_sloc1_1_0
	sta	*___ckd_sub_long_sloc2_1_0
	lda	*(___ckd_sub_long_sloc1_1_0 + 1)
	sta	*(___ckd_sub_long_sloc2_1_0 + 1)
	lda	*(___ckd_sub_long_sloc1_1_0 + 2)
	sta	*(___ckd_sub_long_sloc2_1_0 + 2)
	lda	*(___ckd_sub_long_sloc1_1_0 + 3)
	sta	*(___ckd_sub_long_sloc2_1_0 + 3)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_sub_long_sloc2_1_0 + 4)
	sta	*(___ckd_sub_long_sloc2_1_0 + 5)
	sta	*(___ckd_sub_long_sloc2_1_0 + 6)
	sta	*(___ckd_sub_long_sloc2_1_0 + 7)
	lda	*___ckd_sub_long_sloc2_1_0
	cmp	*___ckd_sub_long_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_sub_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_ulong_PARM_2'
;b                         Allocated with name '___ckd_sub_ulong_PARM_3'
;r                         Allocated with name '___ckd_sub_ulong_r_65536_39'
;result                    Allocated with name '___ckd_sub_ulong_result_65536_40'
;sloc0                     Allocated with name '___ckd_sub_ulong_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_ulong_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_sub_ulong_sloc2_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 67: inline _Bool __ckd_sub_ulong __CKD_DEFAULT_IMPL(unsigned long, -)
;	-----------------------------------------
;	 function __ckd_sub_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_ulong:
	sta	___ckd_sub_ulong_r_65536_39
	stx	(___ckd_sub_ulong_r_65536_39 + 1)
	lda	___ckd_sub_ulong_PARM_2
	sec
	sbc	___ckd_sub_ulong_PARM_3
	sta	*___ckd_sub_ulong_sloc0_1_0
	lda	(___ckd_sub_ulong_PARM_2 + 1)
	sbc	(___ckd_sub_ulong_PARM_3 + 1)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 1)
	lda	(___ckd_sub_ulong_PARM_2 + 2)
	sbc	(___ckd_sub_ulong_PARM_3 + 2)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 2)
	lda	(___ckd_sub_ulong_PARM_2 + 3)
	sbc	(___ckd_sub_ulong_PARM_3 + 3)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 3)
	lda	(___ckd_sub_ulong_PARM_2 + 4)
	sbc	(___ckd_sub_ulong_PARM_3 + 4)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 4)
	lda	(___ckd_sub_ulong_PARM_2 + 5)
	sbc	(___ckd_sub_ulong_PARM_3 + 5)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 5)
	lda	(___ckd_sub_ulong_PARM_2 + 6)
	sbc	(___ckd_sub_ulong_PARM_3 + 6)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 6)
	lda	(___ckd_sub_ulong_PARM_2 + 7)
	sbc	(___ckd_sub_ulong_PARM_3 + 7)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 7)
	lda	*___ckd_sub_ulong_sloc0_1_0
	sta	*___ckd_sub_ulong_sloc1_1_0
	lda	*(___ckd_sub_ulong_sloc0_1_0 + 1)
	sta	*(___ckd_sub_ulong_sloc1_1_0 + 1)
	lda	*(___ckd_sub_ulong_sloc0_1_0 + 2)
	sta	*(___ckd_sub_ulong_sloc1_1_0 + 2)
	lda	*(___ckd_sub_ulong_sloc0_1_0 + 3)
	sta	*(___ckd_sub_ulong_sloc1_1_0 + 3)
	lda	___ckd_sub_ulong_r_65536_39
	sta	*(__DPTR+0)
	lda	(___ckd_sub_ulong_r_65536_39 + 1)
	sta	*(__DPTR+1)
	lda	*___ckd_sub_ulong_sloc1_1_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 1)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 2)
	iny
	sta	[__DPTR],y
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 3)
	iny
	sta	[__DPTR],y
	lda	*___ckd_sub_ulong_sloc1_1_0
	sta	*___ckd_sub_ulong_sloc2_1_0
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 1)
	sta	*(___ckd_sub_ulong_sloc2_1_0 + 1)
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 2)
	sta	*(___ckd_sub_ulong_sloc2_1_0 + 2)
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 3)
	sta	*(___ckd_sub_ulong_sloc2_1_0 + 3)
	ldx	#0x00
	stx	*(___ckd_sub_ulong_sloc2_1_0 + 4)
	stx	*(___ckd_sub_ulong_sloc2_1_0 + 5)
	stx	*(___ckd_sub_ulong_sloc2_1_0 + 6)
	stx	*(___ckd_sub_ulong_sloc2_1_0 + 7)
	lda	*___ckd_sub_ulong_sloc2_1_0
	cmp	*___ckd_sub_ulong_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 7)
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
