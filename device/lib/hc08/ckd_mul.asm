;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_mul
	.optsdcc -mhc08
	
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
	.ds 2
___ckd_mul_short_sloc2_1_0:
	.ds 8
___ckd_mul_ushort_sloc0_1_0:
	.ds 8
___ckd_mul_ushort_sloc1_1_0:
	.ds 2
___ckd_mul_ushort_sloc2_1_0:
	.ds 8
___ckd_mul_int_sloc0_1_0:
	.ds 8
___ckd_mul_int_sloc1_1_0:
	.ds 2
___ckd_mul_int_sloc2_1_0:
	.ds 8
___ckd_mul_uint_sloc0_1_0:
	.ds 8
___ckd_mul_uint_sloc1_1_0:
	.ds 2
___ckd_mul_uint_sloc2_1_0:
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
___ckd_mul_uchar_PARM_2:
	.ds 8
___ckd_mul_uchar_PARM_3:
	.ds 8
___ckd_mul_short_PARM_2:
	.ds 8
___ckd_mul_short_PARM_3:
	.ds 8
___ckd_mul_ushort_PARM_2:
	.ds 8
___ckd_mul_ushort_PARM_3:
	.ds 8
___ckd_mul_int_PARM_2:
	.ds 8
___ckd_mul_int_PARM_3:
	.ds 8
___ckd_mul_uint_PARM_2:
	.ds 8
___ckd_mul_uint_PARM_3:
	.ds 8
___ckd_mul_long_PARM_2:
	.ds 8
___ckd_mul_long_PARM_3:
	.ds 8
___ckd_mul_ulong_PARM_2:
	.ds 8
___ckd_mul_ulong_PARM_3:
	.ds 8
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
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_mul_schar_result_65536_42'
;------------------------------------------------------------
;./../../include/stdckdint.h:69: inline _Bool __ckd_mul_schar __CKD_DEFAULT_IMPL(signed char, *)
;	-----------------------------------------
;	 function __ckd_mul_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_schar:
	pshx
	tax
	pulh
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
	pshx
	pshh
	jsr	__mullonglong
	sta	*(___ckd_mul_schar_sloc0_1_0 + 7)
	stx	*(___ckd_mul_schar_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_schar_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_schar_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_schar_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_schar_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_schar_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_schar_sloc0_1_0
	pulh
	pulx
	lda	*(___ckd_mul_schar_sloc0_1_0 + 7)
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
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_mul_uchar_result_65536_44'
;------------------------------------------------------------
;./../../include/stdckdint.h:70: inline _Bool __ckd_mul_uchar __CKD_DEFAULT_IMPL(unsigned char, *)
;	-----------------------------------------
;	 function __ckd_mul_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_uchar:
	pshx
	tax
	pulh
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
	pshx
	pshh
	jsr	__mullonglong
	sta	*(___ckd_mul_uchar_sloc0_1_0 + 7)
	stx	*(___ckd_mul_uchar_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_uchar_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_uchar_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_uchar_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_uchar_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_uchar_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_uchar_sloc0_1_0
	pulh
	pulx
	lda	*(___ckd_mul_uchar_sloc0_1_0 + 7)
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
;sloc2                     Allocated with name '___ckd_mul_short_sloc2_1_0'
;a                         Allocated with name '___ckd_mul_short_PARM_2'
;b                         Allocated with name '___ckd_mul_short_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_mul_short_result_65536_46'
;------------------------------------------------------------
;./../../include/stdckdint.h:71: inline _Bool __ckd_mul_short __CKD_DEFAULT_IMPL(short, *)
;	-----------------------------------------
;	 function __ckd_mul_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_short:
	pshx
	tax
	pulh
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
	pshx
	pshh
	jsr	__mullonglong
	sta	*(___ckd_mul_short_sloc0_1_0 + 7)
	stx	*(___ckd_mul_short_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_short_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_short_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_short_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_short_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_short_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_short_sloc0_1_0
	pulh
	pulx
	mov	*(___ckd_mul_short_sloc0_1_0 + 7),*(___ckd_mul_short_sloc1_1_0 + 1)
	mov	*(___ckd_mul_short_sloc0_1_0 + 6),*___ckd_mul_short_sloc1_1_0
	lda	*___ckd_mul_short_sloc1_1_0
	sta	,x
	lda	*(___ckd_mul_short_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_mul_short_sloc1_1_0 + 1),*(___ckd_mul_short_sloc2_1_0 + 7)
	lda	*___ckd_mul_short_sloc1_1_0
	sta	*(___ckd_mul_short_sloc2_1_0 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_mul_short_sloc2_1_0 + 5)
	sta	*(___ckd_mul_short_sloc2_1_0 + 4)
	sta	*(___ckd_mul_short_sloc2_1_0 + 3)
	sta	*(___ckd_mul_short_sloc2_1_0 + 2)
	sta	*(___ckd_mul_short_sloc2_1_0 + 1)
	sta	*___ckd_mul_short_sloc2_1_0
	lda	*(___ckd_mul_short_sloc2_1_0 + 7)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_short_sloc2_1_0 + 6)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_short_sloc2_1_0 + 5)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_short_sloc2_1_0 + 4)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_short_sloc2_1_0 + 3)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_short_sloc2_1_0 + 2)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_short_sloc2_1_0 + 1)
	cmp	*(___ckd_mul_short_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_short_sloc2_1_0
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
;sloc2                     Allocated with name '___ckd_mul_ushort_sloc2_1_0'
;a                         Allocated with name '___ckd_mul_ushort_PARM_2'
;b                         Allocated with name '___ckd_mul_ushort_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_mul_ushort_result_65536_48'
;------------------------------------------------------------
;./../../include/stdckdint.h:72: inline _Bool __ckd_mul_ushort __CKD_DEFAULT_IMPL(unsigned short, *)
;	-----------------------------------------
;	 function __ckd_mul_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_ushort:
	pshx
	tax
	pulh
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
	pshx
	pshh
	jsr	__mullonglong
	sta	*(___ckd_mul_ushort_sloc0_1_0 + 7)
	stx	*(___ckd_mul_ushort_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_ushort_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_ushort_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_ushort_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_ushort_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_ushort_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_ushort_sloc0_1_0
	pulh
	pulx
	mov	*(___ckd_mul_ushort_sloc0_1_0 + 7),*(___ckd_mul_ushort_sloc1_1_0 + 1)
	mov	*(___ckd_mul_ushort_sloc0_1_0 + 6),*___ckd_mul_ushort_sloc1_1_0
	lda	*___ckd_mul_ushort_sloc1_1_0
	sta	,x
	lda	*(___ckd_mul_ushort_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_mul_ushort_sloc1_1_0 + 1),*(___ckd_mul_ushort_sloc2_1_0 + 7)
	mov	*___ckd_mul_ushort_sloc1_1_0,*(___ckd_mul_ushort_sloc2_1_0 + 6)
	mov	#0x00,*(___ckd_mul_ushort_sloc2_1_0 + 5)
	mov	#0x00,*(___ckd_mul_ushort_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_mul_ushort_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_mul_ushort_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_mul_ushort_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_mul_ushort_sloc2_1_0
	lda	*(___ckd_mul_ushort_sloc2_1_0 + 7)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc2_1_0 + 6)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc2_1_0 + 5)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc2_1_0 + 4)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc2_1_0 + 3)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc2_1_0 + 2)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_ushort_sloc2_1_0 + 1)
	cmp	*(___ckd_mul_ushort_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_ushort_sloc2_1_0
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
;sloc2                     Allocated with name '___ckd_mul_int_sloc2_1_0'
;a                         Allocated with name '___ckd_mul_int_PARM_2'
;b                         Allocated with name '___ckd_mul_int_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_mul_int_result_65536_50'
;------------------------------------------------------------
;./../../include/stdckdint.h:73: inline _Bool __ckd_mul_int __CKD_DEFAULT_IMPL(int, *)
;	-----------------------------------------
;	 function __ckd_mul_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_int:
	pshx
	tax
	pulh
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
	pshx
	pshh
	jsr	__mullonglong
	sta	*(___ckd_mul_int_sloc0_1_0 + 7)
	stx	*(___ckd_mul_int_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_int_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_int_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_int_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_int_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_int_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_int_sloc0_1_0
	pulh
	pulx
	mov	*(___ckd_mul_int_sloc0_1_0 + 7),*(___ckd_mul_int_sloc1_1_0 + 1)
	mov	*(___ckd_mul_int_sloc0_1_0 + 6),*___ckd_mul_int_sloc1_1_0
	lda	*___ckd_mul_int_sloc1_1_0
	sta	,x
	lda	*(___ckd_mul_int_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_mul_int_sloc1_1_0 + 1),*(___ckd_mul_int_sloc2_1_0 + 7)
	lda	*___ckd_mul_int_sloc1_1_0
	sta	*(___ckd_mul_int_sloc2_1_0 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_mul_int_sloc2_1_0 + 5)
	sta	*(___ckd_mul_int_sloc2_1_0 + 4)
	sta	*(___ckd_mul_int_sloc2_1_0 + 3)
	sta	*(___ckd_mul_int_sloc2_1_0 + 2)
	sta	*(___ckd_mul_int_sloc2_1_0 + 1)
	sta	*___ckd_mul_int_sloc2_1_0
	lda	*(___ckd_mul_int_sloc2_1_0 + 7)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_int_sloc2_1_0 + 6)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_int_sloc2_1_0 + 5)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_int_sloc2_1_0 + 4)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_int_sloc2_1_0 + 3)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_int_sloc2_1_0 + 2)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_int_sloc2_1_0 + 1)
	cmp	*(___ckd_mul_int_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_int_sloc2_1_0
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
;sloc2                     Allocated with name '___ckd_mul_uint_sloc2_1_0'
;a                         Allocated with name '___ckd_mul_uint_PARM_2'
;b                         Allocated with name '___ckd_mul_uint_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_mul_uint_result_65536_52'
;------------------------------------------------------------
;./../../include/stdckdint.h:74: inline _Bool __ckd_mul_uint __CKD_DEFAULT_IMPL(unsigned int, *)
;	-----------------------------------------
;	 function __ckd_mul_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_uint:
	pshx
	tax
	pulh
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
	pshx
	pshh
	jsr	__mullonglong
	sta	*(___ckd_mul_uint_sloc0_1_0 + 7)
	stx	*(___ckd_mul_uint_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_uint_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_uint_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_uint_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_uint_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_uint_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_uint_sloc0_1_0
	pulh
	pulx
	mov	*(___ckd_mul_uint_sloc0_1_0 + 7),*(___ckd_mul_uint_sloc1_1_0 + 1)
	mov	*(___ckd_mul_uint_sloc0_1_0 + 6),*___ckd_mul_uint_sloc1_1_0
	lda	*___ckd_mul_uint_sloc1_1_0
	sta	,x
	lda	*(___ckd_mul_uint_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_mul_uint_sloc1_1_0 + 1),*(___ckd_mul_uint_sloc2_1_0 + 7)
	mov	*___ckd_mul_uint_sloc1_1_0,*(___ckd_mul_uint_sloc2_1_0 + 6)
	mov	#0x00,*(___ckd_mul_uint_sloc2_1_0 + 5)
	mov	#0x00,*(___ckd_mul_uint_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_mul_uint_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_mul_uint_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_mul_uint_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_mul_uint_sloc2_1_0
	lda	*(___ckd_mul_uint_sloc2_1_0 + 7)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc2_1_0 + 6)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc2_1_0 + 5)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc2_1_0 + 4)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc2_1_0 + 3)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc2_1_0 + 2)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_mul_uint_sloc2_1_0 + 1)
	cmp	*(___ckd_mul_uint_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_mul_uint_sloc2_1_0
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
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_mul_long_result_65536_54'
;------------------------------------------------------------
;./../../include/stdckdint.h:75: inline _Bool __ckd_mul_long __CKD_DEFAULT_IMPL(long, *)
;	-----------------------------------------
;	 function __ckd_mul_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_long:
	pshx
	tax
	pulh
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
	pshx
	pshh
	jsr	__mullonglong
	sta	*(___ckd_mul_long_sloc0_1_0 + 7)
	stx	*(___ckd_mul_long_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_long_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_long_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_long_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_long_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_long_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_long_sloc0_1_0
	pulh
	pulx
	mov	*(___ckd_mul_long_sloc0_1_0 + 7),*(___ckd_mul_long_sloc1_1_0 + 3)
	mov	*(___ckd_mul_long_sloc0_1_0 + 6),*(___ckd_mul_long_sloc1_1_0 + 2)
	mov	*(___ckd_mul_long_sloc0_1_0 + 5),*(___ckd_mul_long_sloc1_1_0 + 1)
	mov	*(___ckd_mul_long_sloc0_1_0 + 4),*___ckd_mul_long_sloc1_1_0
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
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_mul_ulong_result_65536_56'
;------------------------------------------------------------
;./../../include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	-----------------------------------------
;	 function __ckd_mul_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_mul_ulong:
	pshx
	tax
	pulh
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
	pshx
	pshh
	jsr	__mullonglong
	sta	*(___ckd_mul_ulong_sloc0_1_0 + 7)
	stx	*(___ckd_mul_ulong_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___ckd_mul_ulong_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___ckd_mul_ulong_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___ckd_mul_ulong_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___ckd_mul_ulong_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___ckd_mul_ulong_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___ckd_mul_ulong_sloc0_1_0
	pulh
	pulx
	mov	*(___ckd_mul_ulong_sloc0_1_0 + 7),*(___ckd_mul_ulong_sloc1_1_0 + 3)
	mov	*(___ckd_mul_ulong_sloc0_1_0 + 6),*(___ckd_mul_ulong_sloc1_1_0 + 2)
	mov	*(___ckd_mul_ulong_sloc0_1_0 + 5),*(___ckd_mul_ulong_sloc1_1_0 + 1)
	mov	*(___ckd_mul_ulong_sloc0_1_0 + 4),*___ckd_mul_ulong_sloc1_1_0
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
