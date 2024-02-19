;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module ckd_add
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
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
	.ds 2
___ckd_add_short_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_ushort_sloc0_1_0:
	.ds 8
___ckd_add_ushort_sloc1_1_0:
	.ds 2
___ckd_add_ushort_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_int_sloc0_1_0:
	.ds 8
___ckd_add_int_sloc1_1_0:
	.ds 2
___ckd_add_int_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_uint_sloc0_1_0:
	.ds 8
___ckd_add_uint_sloc1_1_0:
	.ds 2
___ckd_add_uint_sloc2_1_0:
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
___ckd_add_schar_PARM_2:
	.ds 8
___ckd_add_schar_PARM_3:
	.ds 8
___ckd_add_uchar_PARM_2:
	.ds 8
___ckd_add_uchar_PARM_3:
	.ds 8
___ckd_add_short_PARM_2:
	.ds 8
___ckd_add_short_PARM_3:
	.ds 8
___ckd_add_ushort_PARM_2:
	.ds 8
___ckd_add_ushort_PARM_3:
	.ds 8
___ckd_add_int_PARM_2:
	.ds 8
___ckd_add_int_PARM_3:
	.ds 8
___ckd_add_uint_PARM_2:
	.ds 8
___ckd_add_uint_PARM_3:
	.ds 8
___ckd_add_long_PARM_2:
	.ds 8
___ckd_add_long_PARM_3:
	.ds 8
___ckd_add_ulong_PARM_2:
	.ds 8
___ckd_add_ulong_PARM_3:
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
;Allocation info for local variables in function '__ckd_add_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_schar_PARM_2'
;b                         Allocated with name '___ckd_add_schar_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_add_schar_result_65536_10'
;sloc0                     Allocated with name '___ckd_add_schar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_schar_sloc1_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:51: inline _Bool __ckd_add_schar __CKD_DEFAULT_IMPL(signed char, +)
;	-----------------------------------------
;	 function __ckd_add_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_schar:
	pshx
	tax
	pulh
	lda	(___ckd_add_schar_PARM_2 + 7)
	add	(___ckd_add_schar_PARM_3 + 7)
	sta	*(___ckd_add_schar_sloc0_1_0 + 7)
	lda	(___ckd_add_schar_PARM_2 + 6)
	adc	(___ckd_add_schar_PARM_3 + 6)
	sta	*(___ckd_add_schar_sloc0_1_0 + 6)
	lda	(___ckd_add_schar_PARM_2 + 5)
	adc	(___ckd_add_schar_PARM_3 + 5)
	sta	*(___ckd_add_schar_sloc0_1_0 + 5)
	lda	(___ckd_add_schar_PARM_2 + 4)
	adc	(___ckd_add_schar_PARM_3 + 4)
	sta	*(___ckd_add_schar_sloc0_1_0 + 4)
	lda	(___ckd_add_schar_PARM_2 + 3)
	adc	(___ckd_add_schar_PARM_3 + 3)
	sta	*(___ckd_add_schar_sloc0_1_0 + 3)
	lda	(___ckd_add_schar_PARM_2 + 2)
	adc	(___ckd_add_schar_PARM_3 + 2)
	sta	*(___ckd_add_schar_sloc0_1_0 + 2)
	lda	(___ckd_add_schar_PARM_2 + 1)
	adc	(___ckd_add_schar_PARM_3 + 1)
	sta	*(___ckd_add_schar_sloc0_1_0 + 1)
	lda	___ckd_add_schar_PARM_2
	adc	___ckd_add_schar_PARM_3
	sta	*___ckd_add_schar_sloc0_1_0
	lda	*(___ckd_add_schar_sloc0_1_0 + 7)
	sta	,x
	sta	*(___ckd_add_schar_sloc1_1_0 + 7)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_add_schar_sloc1_1_0 + 6)
	sta	*(___ckd_add_schar_sloc1_1_0 + 5)
	sta	*(___ckd_add_schar_sloc1_1_0 + 4)
	sta	*(___ckd_add_schar_sloc1_1_0 + 3)
	sta	*(___ckd_add_schar_sloc1_1_0 + 2)
	sta	*(___ckd_add_schar_sloc1_1_0 + 1)
	sta	*___ckd_add_schar_sloc1_1_0
	lda	*(___ckd_add_schar_sloc1_1_0 + 7)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_add_schar_sloc1_1_0 + 6)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_add_schar_sloc1_1_0 + 5)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_add_schar_sloc1_1_0 + 4)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_add_schar_sloc1_1_0 + 3)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_add_schar_sloc1_1_0 + 2)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_add_schar_sloc1_1_0 + 1)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_add_schar_sloc1_1_0
	cbeq	*___ckd_add_schar_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_uchar_PARM_2'
;b                         Allocated with name '___ckd_add_uchar_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_add_uchar_result_65536_12'
;sloc0                     Allocated with name '___ckd_add_uchar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_uchar_sloc1_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:52: inline _Bool __ckd_add_uchar __CKD_DEFAULT_IMPL(unsigned char, +)
;	-----------------------------------------
;	 function __ckd_add_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_uchar:
	pshx
	tax
	pulh
	lda	(___ckd_add_uchar_PARM_2 + 7)
	add	(___ckd_add_uchar_PARM_3 + 7)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 7)
	lda	(___ckd_add_uchar_PARM_2 + 6)
	adc	(___ckd_add_uchar_PARM_3 + 6)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 6)
	lda	(___ckd_add_uchar_PARM_2 + 5)
	adc	(___ckd_add_uchar_PARM_3 + 5)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 5)
	lda	(___ckd_add_uchar_PARM_2 + 4)
	adc	(___ckd_add_uchar_PARM_3 + 4)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 4)
	lda	(___ckd_add_uchar_PARM_2 + 3)
	adc	(___ckd_add_uchar_PARM_3 + 3)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 3)
	lda	(___ckd_add_uchar_PARM_2 + 2)
	adc	(___ckd_add_uchar_PARM_3 + 2)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 2)
	lda	(___ckd_add_uchar_PARM_2 + 1)
	adc	(___ckd_add_uchar_PARM_3 + 1)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 1)
	lda	___ckd_add_uchar_PARM_2
	adc	___ckd_add_uchar_PARM_3
	sta	*___ckd_add_uchar_sloc0_1_0
	lda	*(___ckd_add_uchar_sloc0_1_0 + 7)
	sta	,x
	sta	*(___ckd_add_uchar_sloc1_1_0 + 7)
	mov	#0x00,*(___ckd_add_uchar_sloc1_1_0 + 6)
	mov	#0x00,*(___ckd_add_uchar_sloc1_1_0 + 5)
	mov	#0x00,*(___ckd_add_uchar_sloc1_1_0 + 4)
	mov	#0x00,*(___ckd_add_uchar_sloc1_1_0 + 3)
	mov	#0x00,*(___ckd_add_uchar_sloc1_1_0 + 2)
	mov	#0x00,*(___ckd_add_uchar_sloc1_1_0 + 1)
	mov	#0x00,*___ckd_add_uchar_sloc1_1_0
	lda	*(___ckd_add_uchar_sloc1_1_0 + 7)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 6)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 5)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 4)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 3)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 2)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 1)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_add_uchar_sloc1_1_0
	cbeq	*___ckd_add_uchar_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_short_PARM_2'
;b                         Allocated with name '___ckd_add_short_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_add_short_result_65536_14'
;sloc0                     Allocated with name '___ckd_add_short_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_short_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_add_short_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:53: inline _Bool __ckd_add_short __CKD_DEFAULT_IMPL(short, +)
;	-----------------------------------------
;	 function __ckd_add_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_short:
	pshx
	tax
	pulh
	lda	(___ckd_add_short_PARM_2 + 7)
	add	(___ckd_add_short_PARM_3 + 7)
	sta	*(___ckd_add_short_sloc0_1_0 + 7)
	lda	(___ckd_add_short_PARM_2 + 6)
	adc	(___ckd_add_short_PARM_3 + 6)
	sta	*(___ckd_add_short_sloc0_1_0 + 6)
	lda	(___ckd_add_short_PARM_2 + 5)
	adc	(___ckd_add_short_PARM_3 + 5)
	sta	*(___ckd_add_short_sloc0_1_0 + 5)
	lda	(___ckd_add_short_PARM_2 + 4)
	adc	(___ckd_add_short_PARM_3 + 4)
	sta	*(___ckd_add_short_sloc0_1_0 + 4)
	lda	(___ckd_add_short_PARM_2 + 3)
	adc	(___ckd_add_short_PARM_3 + 3)
	sta	*(___ckd_add_short_sloc0_1_0 + 3)
	lda	(___ckd_add_short_PARM_2 + 2)
	adc	(___ckd_add_short_PARM_3 + 2)
	sta	*(___ckd_add_short_sloc0_1_0 + 2)
	lda	(___ckd_add_short_PARM_2 + 1)
	adc	(___ckd_add_short_PARM_3 + 1)
	sta	*(___ckd_add_short_sloc0_1_0 + 1)
	lda	___ckd_add_short_PARM_2
	adc	___ckd_add_short_PARM_3
	sta	*___ckd_add_short_sloc0_1_0
	mov	*(___ckd_add_short_sloc0_1_0 + 7),*(___ckd_add_short_sloc1_1_0 + 1)
	mov	*(___ckd_add_short_sloc0_1_0 + 6),*___ckd_add_short_sloc1_1_0
	lda	*___ckd_add_short_sloc1_1_0
	sta	,x
	lda	*(___ckd_add_short_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_add_short_sloc1_1_0 + 1),*(___ckd_add_short_sloc2_1_0 + 7)
	lda	*___ckd_add_short_sloc1_1_0
	sta	*(___ckd_add_short_sloc2_1_0 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_add_short_sloc2_1_0 + 5)
	sta	*(___ckd_add_short_sloc2_1_0 + 4)
	sta	*(___ckd_add_short_sloc2_1_0 + 3)
	sta	*(___ckd_add_short_sloc2_1_0 + 2)
	sta	*(___ckd_add_short_sloc2_1_0 + 1)
	sta	*___ckd_add_short_sloc2_1_0
	lda	*(___ckd_add_short_sloc2_1_0 + 7)
	cmp	*(___ckd_add_short_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_add_short_sloc2_1_0 + 6)
	cmp	*(___ckd_add_short_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_add_short_sloc2_1_0 + 5)
	cmp	*(___ckd_add_short_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_add_short_sloc2_1_0 + 4)
	cmp	*(___ckd_add_short_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_add_short_sloc2_1_0 + 3)
	cmp	*(___ckd_add_short_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_add_short_sloc2_1_0 + 2)
	cmp	*(___ckd_add_short_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_add_short_sloc2_1_0 + 1)
	cmp	*(___ckd_add_short_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_add_short_sloc2_1_0
	cbeq	*___ckd_add_short_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_ushort_PARM_2'
;b                         Allocated with name '___ckd_add_ushort_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_add_ushort_result_65536_16'
;sloc0                     Allocated with name '___ckd_add_ushort_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_ushort_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_add_ushort_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:54: inline _Bool __ckd_add_ushort __CKD_DEFAULT_IMPL(unsigned short, +)
;	-----------------------------------------
;	 function __ckd_add_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_ushort:
	pshx
	tax
	pulh
	lda	(___ckd_add_ushort_PARM_2 + 7)
	add	(___ckd_add_ushort_PARM_3 + 7)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 7)
	lda	(___ckd_add_ushort_PARM_2 + 6)
	adc	(___ckd_add_ushort_PARM_3 + 6)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 6)
	lda	(___ckd_add_ushort_PARM_2 + 5)
	adc	(___ckd_add_ushort_PARM_3 + 5)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 5)
	lda	(___ckd_add_ushort_PARM_2 + 4)
	adc	(___ckd_add_ushort_PARM_3 + 4)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 4)
	lda	(___ckd_add_ushort_PARM_2 + 3)
	adc	(___ckd_add_ushort_PARM_3 + 3)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 3)
	lda	(___ckd_add_ushort_PARM_2 + 2)
	adc	(___ckd_add_ushort_PARM_3 + 2)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 2)
	lda	(___ckd_add_ushort_PARM_2 + 1)
	adc	(___ckd_add_ushort_PARM_3 + 1)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 1)
	lda	___ckd_add_ushort_PARM_2
	adc	___ckd_add_ushort_PARM_3
	sta	*___ckd_add_ushort_sloc0_1_0
	mov	*(___ckd_add_ushort_sloc0_1_0 + 7),*(___ckd_add_ushort_sloc1_1_0 + 1)
	mov	*(___ckd_add_ushort_sloc0_1_0 + 6),*___ckd_add_ushort_sloc1_1_0
	lda	*___ckd_add_ushort_sloc1_1_0
	sta	,x
	lda	*(___ckd_add_ushort_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_add_ushort_sloc1_1_0 + 1),*(___ckd_add_ushort_sloc2_1_0 + 7)
	mov	*___ckd_add_ushort_sloc1_1_0,*(___ckd_add_ushort_sloc2_1_0 + 6)
	mov	#0x00,*(___ckd_add_ushort_sloc2_1_0 + 5)
	mov	#0x00,*(___ckd_add_ushort_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_add_ushort_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_add_ushort_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_add_ushort_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_add_ushort_sloc2_1_0
	lda	*(___ckd_add_ushort_sloc2_1_0 + 7)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_add_ushort_sloc2_1_0 + 6)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_add_ushort_sloc2_1_0 + 5)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_add_ushort_sloc2_1_0 + 4)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_add_ushort_sloc2_1_0 + 3)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_add_ushort_sloc2_1_0 + 2)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_add_ushort_sloc2_1_0 + 1)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_add_ushort_sloc2_1_0
	cbeq	*___ckd_add_ushort_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_int_PARM_2'
;b                         Allocated with name '___ckd_add_int_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_add_int_result_65536_18'
;sloc0                     Allocated with name '___ckd_add_int_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_int_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_add_int_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:55: inline _Bool __ckd_add_int __CKD_DEFAULT_IMPL(int, +)
;	-----------------------------------------
;	 function __ckd_add_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_int:
	pshx
	tax
	pulh
	lda	(___ckd_add_int_PARM_2 + 7)
	add	(___ckd_add_int_PARM_3 + 7)
	sta	*(___ckd_add_int_sloc0_1_0 + 7)
	lda	(___ckd_add_int_PARM_2 + 6)
	adc	(___ckd_add_int_PARM_3 + 6)
	sta	*(___ckd_add_int_sloc0_1_0 + 6)
	lda	(___ckd_add_int_PARM_2 + 5)
	adc	(___ckd_add_int_PARM_3 + 5)
	sta	*(___ckd_add_int_sloc0_1_0 + 5)
	lda	(___ckd_add_int_PARM_2 + 4)
	adc	(___ckd_add_int_PARM_3 + 4)
	sta	*(___ckd_add_int_sloc0_1_0 + 4)
	lda	(___ckd_add_int_PARM_2 + 3)
	adc	(___ckd_add_int_PARM_3 + 3)
	sta	*(___ckd_add_int_sloc0_1_0 + 3)
	lda	(___ckd_add_int_PARM_2 + 2)
	adc	(___ckd_add_int_PARM_3 + 2)
	sta	*(___ckd_add_int_sloc0_1_0 + 2)
	lda	(___ckd_add_int_PARM_2 + 1)
	adc	(___ckd_add_int_PARM_3 + 1)
	sta	*(___ckd_add_int_sloc0_1_0 + 1)
	lda	___ckd_add_int_PARM_2
	adc	___ckd_add_int_PARM_3
	sta	*___ckd_add_int_sloc0_1_0
	mov	*(___ckd_add_int_sloc0_1_0 + 7),*(___ckd_add_int_sloc1_1_0 + 1)
	mov	*(___ckd_add_int_sloc0_1_0 + 6),*___ckd_add_int_sloc1_1_0
	lda	*___ckd_add_int_sloc1_1_0
	sta	,x
	lda	*(___ckd_add_int_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_add_int_sloc1_1_0 + 1),*(___ckd_add_int_sloc2_1_0 + 7)
	lda	*___ckd_add_int_sloc1_1_0
	sta	*(___ckd_add_int_sloc2_1_0 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_add_int_sloc2_1_0 + 5)
	sta	*(___ckd_add_int_sloc2_1_0 + 4)
	sta	*(___ckd_add_int_sloc2_1_0 + 3)
	sta	*(___ckd_add_int_sloc2_1_0 + 2)
	sta	*(___ckd_add_int_sloc2_1_0 + 1)
	sta	*___ckd_add_int_sloc2_1_0
	lda	*(___ckd_add_int_sloc2_1_0 + 7)
	cmp	*(___ckd_add_int_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_add_int_sloc2_1_0 + 6)
	cmp	*(___ckd_add_int_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_add_int_sloc2_1_0 + 5)
	cmp	*(___ckd_add_int_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_add_int_sloc2_1_0 + 4)
	cmp	*(___ckd_add_int_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_add_int_sloc2_1_0 + 3)
	cmp	*(___ckd_add_int_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_add_int_sloc2_1_0 + 2)
	cmp	*(___ckd_add_int_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_add_int_sloc2_1_0 + 1)
	cmp	*(___ckd_add_int_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_add_int_sloc2_1_0
	cbeq	*___ckd_add_int_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_uint_PARM_2'
;b                         Allocated with name '___ckd_add_uint_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_add_uint_result_65536_20'
;sloc0                     Allocated with name '___ckd_add_uint_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_uint_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_add_uint_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:56: inline _Bool __ckd_add_uint __CKD_DEFAULT_IMPL(unsigned int, +)
;	-----------------------------------------
;	 function __ckd_add_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_uint:
	pshx
	tax
	pulh
	lda	(___ckd_add_uint_PARM_2 + 7)
	add	(___ckd_add_uint_PARM_3 + 7)
	sta	*(___ckd_add_uint_sloc0_1_0 + 7)
	lda	(___ckd_add_uint_PARM_2 + 6)
	adc	(___ckd_add_uint_PARM_3 + 6)
	sta	*(___ckd_add_uint_sloc0_1_0 + 6)
	lda	(___ckd_add_uint_PARM_2 + 5)
	adc	(___ckd_add_uint_PARM_3 + 5)
	sta	*(___ckd_add_uint_sloc0_1_0 + 5)
	lda	(___ckd_add_uint_PARM_2 + 4)
	adc	(___ckd_add_uint_PARM_3 + 4)
	sta	*(___ckd_add_uint_sloc0_1_0 + 4)
	lda	(___ckd_add_uint_PARM_2 + 3)
	adc	(___ckd_add_uint_PARM_3 + 3)
	sta	*(___ckd_add_uint_sloc0_1_0 + 3)
	lda	(___ckd_add_uint_PARM_2 + 2)
	adc	(___ckd_add_uint_PARM_3 + 2)
	sta	*(___ckd_add_uint_sloc0_1_0 + 2)
	lda	(___ckd_add_uint_PARM_2 + 1)
	adc	(___ckd_add_uint_PARM_3 + 1)
	sta	*(___ckd_add_uint_sloc0_1_0 + 1)
	lda	___ckd_add_uint_PARM_2
	adc	___ckd_add_uint_PARM_3
	sta	*___ckd_add_uint_sloc0_1_0
	mov	*(___ckd_add_uint_sloc0_1_0 + 7),*(___ckd_add_uint_sloc1_1_0 + 1)
	mov	*(___ckd_add_uint_sloc0_1_0 + 6),*___ckd_add_uint_sloc1_1_0
	lda	*___ckd_add_uint_sloc1_1_0
	sta	,x
	lda	*(___ckd_add_uint_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_add_uint_sloc1_1_0 + 1),*(___ckd_add_uint_sloc2_1_0 + 7)
	mov	*___ckd_add_uint_sloc1_1_0,*(___ckd_add_uint_sloc2_1_0 + 6)
	mov	#0x00,*(___ckd_add_uint_sloc2_1_0 + 5)
	mov	#0x00,*(___ckd_add_uint_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_add_uint_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_add_uint_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_add_uint_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_add_uint_sloc2_1_0
	lda	*(___ckd_add_uint_sloc2_1_0 + 7)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_add_uint_sloc2_1_0 + 6)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_add_uint_sloc2_1_0 + 5)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_add_uint_sloc2_1_0 + 4)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_add_uint_sloc2_1_0 + 3)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_add_uint_sloc2_1_0 + 2)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_add_uint_sloc2_1_0 + 1)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_add_uint_sloc2_1_0
	cbeq	*___ckd_add_uint_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_long_PARM_2'
;b                         Allocated with name '___ckd_add_long_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_add_long_result_65536_22'
;sloc0                     Allocated with name '___ckd_add_long_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_long_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_add_long_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:57: inline _Bool __ckd_add_long __CKD_DEFAULT_IMPL(long, +)
;	-----------------------------------------
;	 function __ckd_add_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_long:
	pshx
	tax
	pulh
	lda	(___ckd_add_long_PARM_2 + 7)
	add	(___ckd_add_long_PARM_3 + 7)
	sta	*(___ckd_add_long_sloc0_1_0 + 7)
	lda	(___ckd_add_long_PARM_2 + 6)
	adc	(___ckd_add_long_PARM_3 + 6)
	sta	*(___ckd_add_long_sloc0_1_0 + 6)
	lda	(___ckd_add_long_PARM_2 + 5)
	adc	(___ckd_add_long_PARM_3 + 5)
	sta	*(___ckd_add_long_sloc0_1_0 + 5)
	lda	(___ckd_add_long_PARM_2 + 4)
	adc	(___ckd_add_long_PARM_3 + 4)
	sta	*(___ckd_add_long_sloc0_1_0 + 4)
	lda	(___ckd_add_long_PARM_2 + 3)
	adc	(___ckd_add_long_PARM_3 + 3)
	sta	*(___ckd_add_long_sloc0_1_0 + 3)
	lda	(___ckd_add_long_PARM_2 + 2)
	adc	(___ckd_add_long_PARM_3 + 2)
	sta	*(___ckd_add_long_sloc0_1_0 + 2)
	lda	(___ckd_add_long_PARM_2 + 1)
	adc	(___ckd_add_long_PARM_3 + 1)
	sta	*(___ckd_add_long_sloc0_1_0 + 1)
	lda	___ckd_add_long_PARM_2
	adc	___ckd_add_long_PARM_3
	sta	*___ckd_add_long_sloc0_1_0
	mov	*(___ckd_add_long_sloc0_1_0 + 7),*(___ckd_add_long_sloc1_1_0 + 3)
	mov	*(___ckd_add_long_sloc0_1_0 + 6),*(___ckd_add_long_sloc1_1_0 + 2)
	mov	*(___ckd_add_long_sloc0_1_0 + 5),*(___ckd_add_long_sloc1_1_0 + 1)
	mov	*(___ckd_add_long_sloc0_1_0 + 4),*___ckd_add_long_sloc1_1_0
	lda	*___ckd_add_long_sloc1_1_0
	sta	,x
	lda	*(___ckd_add_long_sloc1_1_0 + 1)
	sta	1,x
	lda	*(___ckd_add_long_sloc1_1_0 + 2)
	sta	2,x
	lda	*(___ckd_add_long_sloc1_1_0 + 3)
	sta	3,x
	mov	*(___ckd_add_long_sloc1_1_0 + 3),*(___ckd_add_long_sloc2_1_0 + 7)
	mov	*(___ckd_add_long_sloc1_1_0 + 2),*(___ckd_add_long_sloc2_1_0 + 6)
	mov	*(___ckd_add_long_sloc1_1_0 + 1),*(___ckd_add_long_sloc2_1_0 + 5)
	lda	*___ckd_add_long_sloc1_1_0
	sta	*(___ckd_add_long_sloc2_1_0 + 4)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_add_long_sloc2_1_0 + 3)
	sta	*(___ckd_add_long_sloc2_1_0 + 2)
	sta	*(___ckd_add_long_sloc2_1_0 + 1)
	sta	*___ckd_add_long_sloc2_1_0
	lda	*(___ckd_add_long_sloc2_1_0 + 7)
	cmp	*(___ckd_add_long_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_add_long_sloc2_1_0 + 6)
	cmp	*(___ckd_add_long_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_add_long_sloc2_1_0 + 5)
	cmp	*(___ckd_add_long_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_add_long_sloc2_1_0 + 4)
	cmp	*(___ckd_add_long_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_add_long_sloc2_1_0 + 3)
	cmp	*(___ckd_add_long_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_add_long_sloc2_1_0 + 2)
	cmp	*(___ckd_add_long_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_add_long_sloc2_1_0 + 1)
	cmp	*(___ckd_add_long_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_add_long_sloc2_1_0
	cbeq	*___ckd_add_long_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_add_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_add_ulong_PARM_2'
;b                         Allocated with name '___ckd_add_ulong_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_add_ulong_result_65536_24'
;sloc0                     Allocated with name '___ckd_add_ulong_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_add_ulong_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_add_ulong_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:58: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	-----------------------------------------
;	 function __ckd_add_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_ulong:
	pshx
	tax
	pulh
	lda	(___ckd_add_ulong_PARM_2 + 7)
	add	(___ckd_add_ulong_PARM_3 + 7)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 7)
	lda	(___ckd_add_ulong_PARM_2 + 6)
	adc	(___ckd_add_ulong_PARM_3 + 6)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 6)
	lda	(___ckd_add_ulong_PARM_2 + 5)
	adc	(___ckd_add_ulong_PARM_3 + 5)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 5)
	lda	(___ckd_add_ulong_PARM_2 + 4)
	adc	(___ckd_add_ulong_PARM_3 + 4)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 4)
	lda	(___ckd_add_ulong_PARM_2 + 3)
	adc	(___ckd_add_ulong_PARM_3 + 3)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 3)
	lda	(___ckd_add_ulong_PARM_2 + 2)
	adc	(___ckd_add_ulong_PARM_3 + 2)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 2)
	lda	(___ckd_add_ulong_PARM_2 + 1)
	adc	(___ckd_add_ulong_PARM_3 + 1)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 1)
	lda	___ckd_add_ulong_PARM_2
	adc	___ckd_add_ulong_PARM_3
	sta	*___ckd_add_ulong_sloc0_1_0
	mov	*(___ckd_add_ulong_sloc0_1_0 + 7),*(___ckd_add_ulong_sloc1_1_0 + 3)
	mov	*(___ckd_add_ulong_sloc0_1_0 + 6),*(___ckd_add_ulong_sloc1_1_0 + 2)
	mov	*(___ckd_add_ulong_sloc0_1_0 + 5),*(___ckd_add_ulong_sloc1_1_0 + 1)
	mov	*(___ckd_add_ulong_sloc0_1_0 + 4),*___ckd_add_ulong_sloc1_1_0
	lda	*___ckd_add_ulong_sloc1_1_0
	sta	,x
	lda	*(___ckd_add_ulong_sloc1_1_0 + 1)
	sta	1,x
	lda	*(___ckd_add_ulong_sloc1_1_0 + 2)
	sta	2,x
	lda	*(___ckd_add_ulong_sloc1_1_0 + 3)
	sta	3,x
	mov	*(___ckd_add_ulong_sloc1_1_0 + 3),*(___ckd_add_ulong_sloc2_1_0 + 7)
	mov	*(___ckd_add_ulong_sloc1_1_0 + 2),*(___ckd_add_ulong_sloc2_1_0 + 6)
	mov	*(___ckd_add_ulong_sloc1_1_0 + 1),*(___ckd_add_ulong_sloc2_1_0 + 5)
	mov	*___ckd_add_ulong_sloc1_1_0,*(___ckd_add_ulong_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_add_ulong_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_add_ulong_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_add_ulong_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_add_ulong_sloc2_1_0
	lda	*(___ckd_add_ulong_sloc2_1_0 + 7)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 6)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 5)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 4)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 3)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 2)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 1)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_add_ulong_sloc2_1_0
	cbeq	*___ckd_add_ulong_sloc0_1_0,00105$
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
