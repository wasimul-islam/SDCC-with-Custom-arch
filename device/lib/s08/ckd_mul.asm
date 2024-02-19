;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module ckd_mul
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
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
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
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
;./../../include/stdckdint.h:69: inline _Bool __ckd_mul_schar __CKD_DEFAULT_IMPL(signed char, *)
;	-----------------------------------------
;	 function __ckd_mul_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_schar:
	sta	(___ckd_mul_schar_r_65536_41 + 1)
	stx	___ckd_mul_schar_r_65536_41
	ldhx	___ckd_mul_schar_PARM_2
	sthx	__mullonglong_PARM_1
	ldhx	(___ckd_mul_schar_PARM_2 + 2)
	sthx	(__mullonglong_PARM_1 + 2)
	ldhx	(___ckd_mul_schar_PARM_2 + 4)
	sthx	(__mullonglong_PARM_1 + 4)
	ldhx	(___ckd_mul_schar_PARM_2 + 6)
	sthx	(__mullonglong_PARM_1 + 6)
	ldhx	___ckd_mul_schar_PARM_3
	sthx	__mullonglong_PARM_2
	ldhx	(___ckd_mul_schar_PARM_3 + 2)
	sthx	(__mullonglong_PARM_2 + 2)
	ldhx	(___ckd_mul_schar_PARM_3 + 4)
	sthx	(__mullonglong_PARM_2 + 4)
	ldhx	(___ckd_mul_schar_PARM_3 + 6)
	sthx	(__mullonglong_PARM_2 + 6)
	jsr	__mullonglong
	sta	*(___ckd_mul_schar_sloc0_1_0 + 7)
	stx	*(___ckd_mul_schar_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_schar_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_schar_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_schar_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_schar_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_schar_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_schar_sloc0_1_0
	lda	*(___ckd_mul_schar_sloc0_1_0 + 7)
	ldhx	___ckd_mul_schar_r_65536_41
	sta	,x
	sta	*(___ckd_mul_schar_sloc1_1_0 + 7)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_mul_schar_sloc1_1_0 + 6)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 5)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 4)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 3)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 2)
	sta	*(___ckd_mul_schar_sloc1_1_0 + 1)
	sta	*___ckd_mul_schar_sloc1_1_0
	lda	*(___ckd_mul_schar_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_schar_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_schar_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_schar_sloc1_1_0
	cbeq	*___ckd_mul_schar_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
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
;./../../include/stdckdint.h:70: inline _Bool __ckd_mul_uchar __CKD_DEFAULT_IMPL(unsigned char, *)
;	-----------------------------------------
;	 function __ckd_mul_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_uchar:
	sta	(___ckd_mul_uchar_r_65536_43 + 1)
	stx	___ckd_mul_uchar_r_65536_43
	ldhx	___ckd_mul_uchar_PARM_2
	sthx	__mullonglong_PARM_1
	ldhx	(___ckd_mul_uchar_PARM_2 + 2)
	sthx	(__mullonglong_PARM_1 + 2)
	ldhx	(___ckd_mul_uchar_PARM_2 + 4)
	sthx	(__mullonglong_PARM_1 + 4)
	ldhx	(___ckd_mul_uchar_PARM_2 + 6)
	sthx	(__mullonglong_PARM_1 + 6)
	ldhx	___ckd_mul_uchar_PARM_3
	sthx	__mullonglong_PARM_2
	ldhx	(___ckd_mul_uchar_PARM_3 + 2)
	sthx	(__mullonglong_PARM_2 + 2)
	ldhx	(___ckd_mul_uchar_PARM_3 + 4)
	sthx	(__mullonglong_PARM_2 + 4)
	ldhx	(___ckd_mul_uchar_PARM_3 + 6)
	sthx	(__mullonglong_PARM_2 + 6)
	jsr	__mullonglong
	sta	*(___ckd_mul_uchar_sloc0_1_0 + 7)
	stx	*(___ckd_mul_uchar_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_uchar_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_uchar_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_uchar_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_uchar_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_uchar_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_uchar_sloc0_1_0
	lda	*(___ckd_mul_uchar_sloc0_1_0 + 7)
	ldhx	___ckd_mul_uchar_r_65536_43
	sta	,x
	sta	*(___ckd_mul_uchar_sloc1_1_0 + 7)
	mov	#0x00,*(___ckd_mul_uchar_sloc1_1_0 + 6)
	mov	#0x00,*(___ckd_mul_uchar_sloc1_1_0 + 5)
	mov	#0x00,*(___ckd_mul_uchar_sloc1_1_0 + 4)
	mov	#0x00,*(___ckd_mul_uchar_sloc1_1_0 + 3)
	mov	#0x00,*(___ckd_mul_uchar_sloc1_1_0 + 2)
	mov	#0x00,*(___ckd_mul_uchar_sloc1_1_0 + 1)
	mov	#0x00,*___ckd_mul_uchar_sloc1_1_0
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_uchar_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_uchar_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_uchar_sloc1_1_0
	cbeq	*___ckd_mul_uchar_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
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
;./../../include/stdckdint.h:71: inline _Bool __ckd_mul_short __CKD_DEFAULT_IMPL(short, *)
;	-----------------------------------------
;	 function __ckd_mul_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_short:
	sta	(___ckd_mul_short_r_65536_45 + 1)
	stx	___ckd_mul_short_r_65536_45
	ldhx	___ckd_mul_short_PARM_2
	sthx	__mullonglong_PARM_1
	ldhx	(___ckd_mul_short_PARM_2 + 2)
	sthx	(__mullonglong_PARM_1 + 2)
	ldhx	(___ckd_mul_short_PARM_2 + 4)
	sthx	(__mullonglong_PARM_1 + 4)
	ldhx	(___ckd_mul_short_PARM_2 + 6)
	sthx	(__mullonglong_PARM_1 + 6)
	ldhx	___ckd_mul_short_PARM_3
	sthx	__mullonglong_PARM_2
	ldhx	(___ckd_mul_short_PARM_3 + 2)
	sthx	(__mullonglong_PARM_2 + 2)
	ldhx	(___ckd_mul_short_PARM_3 + 4)
	sthx	(__mullonglong_PARM_2 + 4)
	ldhx	(___ckd_mul_short_PARM_3 + 6)
	sthx	(__mullonglong_PARM_2 + 6)
	jsr	__mullonglong
	sta	*(___ckd_mul_short_sloc0_1_0 + 7)
	stx	*(___ckd_mul_short_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_short_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_short_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_short_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_short_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_short_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_short_sloc0_1_0
	lda	*(___ckd_mul_short_sloc0_1_0 + 7)
	ldx	*(___ckd_mul_short_sloc0_1_0 + 6)
	pshx
	psha
	pshx
	ldhx	___ckd_mul_short_r_65536_45
	sta	1,x
	pula
	sta	,x
	pula
	pulx
	sta	*(___ckd_mul_short_sloc1_1_0 + 7)
	txa
	sta	*(___ckd_mul_short_sloc1_1_0 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_mul_short_sloc1_1_0 + 5)
	sta	*(___ckd_mul_short_sloc1_1_0 + 4)
	sta	*(___ckd_mul_short_sloc1_1_0 + 3)
	sta	*(___ckd_mul_short_sloc1_1_0 + 2)
	sta	*(___ckd_mul_short_sloc1_1_0 + 1)
	sta	*___ckd_mul_short_sloc1_1_0
	lda	*(___ckd_mul_short_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_short_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_short_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_short_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_short_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_short_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_short_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_short_sloc1_1_0
	cbeq	*___ckd_mul_short_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
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
;./../../include/stdckdint.h:72: inline _Bool __ckd_mul_ushort __CKD_DEFAULT_IMPL(unsigned short, *)
;	-----------------------------------------
;	 function __ckd_mul_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_ushort:
	sta	(___ckd_mul_ushort_r_65536_47 + 1)
	stx	___ckd_mul_ushort_r_65536_47
	ldhx	___ckd_mul_ushort_PARM_2
	sthx	__mullonglong_PARM_1
	ldhx	(___ckd_mul_ushort_PARM_2 + 2)
	sthx	(__mullonglong_PARM_1 + 2)
	ldhx	(___ckd_mul_ushort_PARM_2 + 4)
	sthx	(__mullonglong_PARM_1 + 4)
	ldhx	(___ckd_mul_ushort_PARM_2 + 6)
	sthx	(__mullonglong_PARM_1 + 6)
	ldhx	___ckd_mul_ushort_PARM_3
	sthx	__mullonglong_PARM_2
	ldhx	(___ckd_mul_ushort_PARM_3 + 2)
	sthx	(__mullonglong_PARM_2 + 2)
	ldhx	(___ckd_mul_ushort_PARM_3 + 4)
	sthx	(__mullonglong_PARM_2 + 4)
	ldhx	(___ckd_mul_ushort_PARM_3 + 6)
	sthx	(__mullonglong_PARM_2 + 6)
	jsr	__mullonglong
	sta	*(___ckd_mul_ushort_sloc0_1_0 + 7)
	stx	*(___ckd_mul_ushort_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_ushort_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_ushort_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_ushort_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_ushort_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_ushort_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_ushort_sloc0_1_0
	lda	*(___ckd_mul_ushort_sloc0_1_0 + 7)
	ldx	*(___ckd_mul_ushort_sloc0_1_0 + 6)
	pshx
	psha
	pshx
	ldhx	___ckd_mul_ushort_r_65536_47
	sta	1,x
	pula
	sta	,x
	pula
	pulx
	sta	*(___ckd_mul_ushort_sloc1_1_0 + 7)
	stx	*(___ckd_mul_ushort_sloc1_1_0 + 6)
	mov	#0x00,*(___ckd_mul_ushort_sloc1_1_0 + 5)
	mov	#0x00,*(___ckd_mul_ushort_sloc1_1_0 + 4)
	mov	#0x00,*(___ckd_mul_ushort_sloc1_1_0 + 3)
	mov	#0x00,*(___ckd_mul_ushort_sloc1_1_0 + 2)
	mov	#0x00,*(___ckd_mul_ushort_sloc1_1_0 + 1)
	mov	#0x00,*___ckd_mul_ushort_sloc1_1_0
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_ushort_sloc1_1_0
	cbeq	*___ckd_mul_ushort_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
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
;./../../include/stdckdint.h:73: inline _Bool __ckd_mul_int __CKD_DEFAULT_IMPL(int, *)
;	-----------------------------------------
;	 function __ckd_mul_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_int:
	sta	(___ckd_mul_int_r_65536_49 + 1)
	stx	___ckd_mul_int_r_65536_49
	ldhx	___ckd_mul_int_PARM_2
	sthx	__mullonglong_PARM_1
	ldhx	(___ckd_mul_int_PARM_2 + 2)
	sthx	(__mullonglong_PARM_1 + 2)
	ldhx	(___ckd_mul_int_PARM_2 + 4)
	sthx	(__mullonglong_PARM_1 + 4)
	ldhx	(___ckd_mul_int_PARM_2 + 6)
	sthx	(__mullonglong_PARM_1 + 6)
	ldhx	___ckd_mul_int_PARM_3
	sthx	__mullonglong_PARM_2
	ldhx	(___ckd_mul_int_PARM_3 + 2)
	sthx	(__mullonglong_PARM_2 + 2)
	ldhx	(___ckd_mul_int_PARM_3 + 4)
	sthx	(__mullonglong_PARM_2 + 4)
	ldhx	(___ckd_mul_int_PARM_3 + 6)
	sthx	(__mullonglong_PARM_2 + 6)
	jsr	__mullonglong
	sta	*(___ckd_mul_int_sloc0_1_0 + 7)
	stx	*(___ckd_mul_int_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_int_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_int_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_int_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_int_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_int_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_int_sloc0_1_0
	lda	*(___ckd_mul_int_sloc0_1_0 + 7)
	ldx	*(___ckd_mul_int_sloc0_1_0 + 6)
	pshx
	psha
	pshx
	ldhx	___ckd_mul_int_r_65536_49
	sta	1,x
	pula
	sta	,x
	pula
	pulx
	sta	*(___ckd_mul_int_sloc1_1_0 + 7)
	txa
	sta	*(___ckd_mul_int_sloc1_1_0 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_mul_int_sloc1_1_0 + 5)
	sta	*(___ckd_mul_int_sloc1_1_0 + 4)
	sta	*(___ckd_mul_int_sloc1_1_0 + 3)
	sta	*(___ckd_mul_int_sloc1_1_0 + 2)
	sta	*(___ckd_mul_int_sloc1_1_0 + 1)
	sta	*___ckd_mul_int_sloc1_1_0
	lda	*(___ckd_mul_int_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_int_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_int_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_int_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_int_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_int_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_int_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_int_sloc1_1_0
	cbeq	*___ckd_mul_int_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
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
;./../../include/stdckdint.h:74: inline _Bool __ckd_mul_uint __CKD_DEFAULT_IMPL(unsigned int, *)
;	-----------------------------------------
;	 function __ckd_mul_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_uint:
	sta	(___ckd_mul_uint_r_65536_51 + 1)
	stx	___ckd_mul_uint_r_65536_51
	ldhx	___ckd_mul_uint_PARM_2
	sthx	__mullonglong_PARM_1
	ldhx	(___ckd_mul_uint_PARM_2 + 2)
	sthx	(__mullonglong_PARM_1 + 2)
	ldhx	(___ckd_mul_uint_PARM_2 + 4)
	sthx	(__mullonglong_PARM_1 + 4)
	ldhx	(___ckd_mul_uint_PARM_2 + 6)
	sthx	(__mullonglong_PARM_1 + 6)
	ldhx	___ckd_mul_uint_PARM_3
	sthx	__mullonglong_PARM_2
	ldhx	(___ckd_mul_uint_PARM_3 + 2)
	sthx	(__mullonglong_PARM_2 + 2)
	ldhx	(___ckd_mul_uint_PARM_3 + 4)
	sthx	(__mullonglong_PARM_2 + 4)
	ldhx	(___ckd_mul_uint_PARM_3 + 6)
	sthx	(__mullonglong_PARM_2 + 6)
	jsr	__mullonglong
	sta	*(___ckd_mul_uint_sloc0_1_0 + 7)
	stx	*(___ckd_mul_uint_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_uint_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_uint_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_uint_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_uint_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_uint_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_uint_sloc0_1_0
	lda	*(___ckd_mul_uint_sloc0_1_0 + 7)
	ldx	*(___ckd_mul_uint_sloc0_1_0 + 6)
	pshx
	psha
	pshx
	ldhx	___ckd_mul_uint_r_65536_51
	sta	1,x
	pula
	sta	,x
	pula
	pulx
	sta	*(___ckd_mul_uint_sloc1_1_0 + 7)
	stx	*(___ckd_mul_uint_sloc1_1_0 + 6)
	mov	#0x00,*(___ckd_mul_uint_sloc1_1_0 + 5)
	mov	#0x00,*(___ckd_mul_uint_sloc1_1_0 + 4)
	mov	#0x00,*(___ckd_mul_uint_sloc1_1_0 + 3)
	mov	#0x00,*(___ckd_mul_uint_sloc1_1_0 + 2)
	mov	#0x00,*(___ckd_mul_uint_sloc1_1_0 + 1)
	mov	#0x00,*___ckd_mul_uint_sloc1_1_0
	lda	*(___ckd_mul_uint_sloc1_1_0 + 7)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 6)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 5)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 4)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 3)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 2)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc1_1_0 + 1)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_uint_sloc1_1_0
	cbeq	*___ckd_mul_uint_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
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
;./../../include/stdckdint.h:75: inline _Bool __ckd_mul_long __CKD_DEFAULT_IMPL(long, *)
;	-----------------------------------------
;	 function __ckd_mul_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_long:
	sta	(___ckd_mul_long_r_65536_53 + 1)
	stx	___ckd_mul_long_r_65536_53
	ldhx	___ckd_mul_long_PARM_2
	sthx	__mullonglong_PARM_1
	ldhx	(___ckd_mul_long_PARM_2 + 2)
	sthx	(__mullonglong_PARM_1 + 2)
	ldhx	(___ckd_mul_long_PARM_2 + 4)
	sthx	(__mullonglong_PARM_1 + 4)
	ldhx	(___ckd_mul_long_PARM_2 + 6)
	sthx	(__mullonglong_PARM_1 + 6)
	ldhx	___ckd_mul_long_PARM_3
	sthx	__mullonglong_PARM_2
	ldhx	(___ckd_mul_long_PARM_3 + 2)
	sthx	(__mullonglong_PARM_2 + 2)
	ldhx	(___ckd_mul_long_PARM_3 + 4)
	sthx	(__mullonglong_PARM_2 + 4)
	ldhx	(___ckd_mul_long_PARM_3 + 6)
	sthx	(__mullonglong_PARM_2 + 6)
	jsr	__mullonglong
	sta	*(___ckd_mul_long_sloc0_1_0 + 7)
	stx	*(___ckd_mul_long_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_long_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_long_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_long_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_long_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_long_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_long_sloc0_1_0
	mov	*(___ckd_mul_long_sloc0_1_0 + 7),*(___ckd_mul_long_sloc1_1_0 + 3)
	mov	*(___ckd_mul_long_sloc0_1_0 + 6),*(___ckd_mul_long_sloc1_1_0 + 2)
	mov	*(___ckd_mul_long_sloc0_1_0 + 5),*(___ckd_mul_long_sloc1_1_0 + 1)
	mov	*(___ckd_mul_long_sloc0_1_0 + 4),*___ckd_mul_long_sloc1_1_0
	ldhx	___ckd_mul_long_r_65536_53
	lda	*___ckd_mul_long_sloc1_1_0
	sta	,x
	lda	*(___ckd_mul_long_sloc1_1_0 + 1)
	sta	1,x
	lda	*(___ckd_mul_long_sloc1_1_0 + 2)
	sta	2,x
	lda	*(___ckd_mul_long_sloc1_1_0 + 3)
	sta	3,x
	mov	*(___ckd_mul_long_sloc1_1_0 + 3),*(___ckd_mul_long_sloc2_1_0 + 7)
	mov	*(___ckd_mul_long_sloc1_1_0 + 2),*(___ckd_mul_long_sloc2_1_0 + 6)
	mov	*(___ckd_mul_long_sloc1_1_0 + 1),*(___ckd_mul_long_sloc2_1_0 + 5)
	lda	*___ckd_mul_long_sloc1_1_0
	sta	*(___ckd_mul_long_sloc2_1_0 + 4)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_mul_long_sloc2_1_0 + 3)
	sta	*(___ckd_mul_long_sloc2_1_0 + 2)
	sta	*(___ckd_mul_long_sloc2_1_0 + 1)
	sta	*___ckd_mul_long_sloc2_1_0
	lda	*(___ckd_mul_long_sloc2_1_0 + 7)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_long_sloc2_1_0 + 6)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_long_sloc2_1_0 + 5)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_long_sloc2_1_0 + 4)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_long_sloc2_1_0 + 3)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_long_sloc2_1_0 + 2)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_long_sloc2_1_0 + 1)
	cmp	*(___ckd_mul_long_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_long_sloc2_1_0
	cbeq	*___ckd_mul_long_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
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
;./../../include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	-----------------------------------------
;	 function __ckd_mul_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_ulong:
	sta	(___ckd_mul_ulong_r_65536_55 + 1)
	stx	___ckd_mul_ulong_r_65536_55
	ldhx	___ckd_mul_ulong_PARM_2
	sthx	__mullonglong_PARM_1
	ldhx	(___ckd_mul_ulong_PARM_2 + 2)
	sthx	(__mullonglong_PARM_1 + 2)
	ldhx	(___ckd_mul_ulong_PARM_2 + 4)
	sthx	(__mullonglong_PARM_1 + 4)
	ldhx	(___ckd_mul_ulong_PARM_2 + 6)
	sthx	(__mullonglong_PARM_1 + 6)
	ldhx	___ckd_mul_ulong_PARM_3
	sthx	__mullonglong_PARM_2
	ldhx	(___ckd_mul_ulong_PARM_3 + 2)
	sthx	(__mullonglong_PARM_2 + 2)
	ldhx	(___ckd_mul_ulong_PARM_3 + 4)
	sthx	(__mullonglong_PARM_2 + 4)
	ldhx	(___ckd_mul_ulong_PARM_3 + 6)
	sthx	(__mullonglong_PARM_2 + 6)
	jsr	__mullonglong
	sta	*(___ckd_mul_ulong_sloc0_1_0 + 7)
	stx	*(___ckd_mul_ulong_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_ulong_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_ulong_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_ulong_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_ulong_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_ulong_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_ulong_sloc0_1_0
	mov	*(___ckd_mul_ulong_sloc0_1_0 + 7),*(___ckd_mul_ulong_sloc1_1_0 + 3)
	mov	*(___ckd_mul_ulong_sloc0_1_0 + 6),*(___ckd_mul_ulong_sloc1_1_0 + 2)
	mov	*(___ckd_mul_ulong_sloc0_1_0 + 5),*(___ckd_mul_ulong_sloc1_1_0 + 1)
	mov	*(___ckd_mul_ulong_sloc0_1_0 + 4),*___ckd_mul_ulong_sloc1_1_0
	ldhx	___ckd_mul_ulong_r_65536_55
	lda	*___ckd_mul_ulong_sloc1_1_0
	sta	,x
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 1)
	sta	1,x
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 2)
	sta	2,x
	lda	*(___ckd_mul_ulong_sloc1_1_0 + 3)
	sta	3,x
	mov	*(___ckd_mul_ulong_sloc1_1_0 + 3),*(___ckd_mul_ulong_sloc2_1_0 + 7)
	mov	*(___ckd_mul_ulong_sloc1_1_0 + 2),*(___ckd_mul_ulong_sloc2_1_0 + 6)
	mov	*(___ckd_mul_ulong_sloc1_1_0 + 1),*(___ckd_mul_ulong_sloc2_1_0 + 5)
	mov	*___ckd_mul_ulong_sloc1_1_0,*(___ckd_mul_ulong_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_mul_ulong_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_mul_ulong_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_mul_ulong_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_mul_ulong_sloc2_1_0
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 7)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 6)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 5)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 4)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 3)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 2)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_ulong_sloc2_1_0 + 1)
	cmp	*(___ckd_mul_ulong_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_ulong_sloc2_1_0
	cbeq	*___ckd_mul_ulong_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
