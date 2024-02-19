;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ckd_sub
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
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
	.ds 2
___ckd_sub_short_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_ushort_sloc0_1_0:
	.ds 8
___ckd_sub_ushort_sloc1_1_0:
	.ds 2
___ckd_sub_ushort_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_int_sloc0_1_0:
	.ds 8
___ckd_sub_int_sloc1_1_0:
	.ds 2
___ckd_sub_int_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_uint_sloc0_1_0:
	.ds 8
___ckd_sub_uint_sloc1_1_0:
	.ds 2
___ckd_sub_uint_sloc2_1_0:
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
___ckd_sub_schar_PARM_2:
	.ds 8
___ckd_sub_schar_PARM_3:
	.ds 8
___ckd_sub_uchar_PARM_2:
	.ds 8
___ckd_sub_uchar_PARM_3:
	.ds 8
___ckd_sub_short_PARM_2:
	.ds 8
___ckd_sub_short_PARM_3:
	.ds 8
___ckd_sub_ushort_PARM_2:
	.ds 8
___ckd_sub_ushort_PARM_3:
	.ds 8
___ckd_sub_int_PARM_2:
	.ds 8
___ckd_sub_int_PARM_3:
	.ds 8
___ckd_sub_uint_PARM_2:
	.ds 8
___ckd_sub_uint_PARM_3:
	.ds 8
___ckd_sub_long_PARM_2:
	.ds 8
___ckd_sub_long_PARM_3:
	.ds 8
___ckd_sub_ulong_PARM_2:
	.ds 8
___ckd_sub_ulong_PARM_3:
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
;Allocation info for local variables in function '__ckd_sub_schar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_schar_PARM_2'
;b                         Allocated with name '___ckd_sub_schar_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_sub_schar_result_65536_26'
;sloc0                     Allocated with name '___ckd_sub_schar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_schar_sloc1_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:60: inline _Bool __ckd_sub_schar __CKD_DEFAULT_IMPL(signed char, -)
;	-----------------------------------------
;	 function __ckd_sub_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_schar:
	pshx
	tax
	pulh
	lda	(___ckd_sub_schar_PARM_2 + 7)
	sub	(___ckd_sub_schar_PARM_3 + 7)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 7)
	lda	(___ckd_sub_schar_PARM_2 + 6)
	sbc	(___ckd_sub_schar_PARM_3 + 6)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 6)
	lda	(___ckd_sub_schar_PARM_2 + 5)
	sbc	(___ckd_sub_schar_PARM_3 + 5)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 5)
	lda	(___ckd_sub_schar_PARM_2 + 4)
	sbc	(___ckd_sub_schar_PARM_3 + 4)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 4)
	lda	(___ckd_sub_schar_PARM_2 + 3)
	sbc	(___ckd_sub_schar_PARM_3 + 3)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 3)
	lda	(___ckd_sub_schar_PARM_2 + 2)
	sbc	(___ckd_sub_schar_PARM_3 + 2)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 2)
	lda	(___ckd_sub_schar_PARM_2 + 1)
	sbc	(___ckd_sub_schar_PARM_3 + 1)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 1)
	lda	___ckd_sub_schar_PARM_2
	sbc	___ckd_sub_schar_PARM_3
	sta	*___ckd_sub_schar_sloc0_1_0
	lda	*(___ckd_sub_schar_sloc0_1_0 + 7)
	sta	,x
	sta	*(___ckd_sub_schar_sloc1_1_0 + 7)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_sub_schar_sloc1_1_0 + 6)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 5)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 4)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 3)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 2)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 1)
	sta	*___ckd_sub_schar_sloc1_1_0
	lda	*(___ckd_sub_schar_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_sub_schar_sloc1_1_0
	cbeq	*___ckd_sub_schar_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uchar'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_uchar_PARM_2'
;b                         Allocated with name '___ckd_sub_uchar_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_sub_uchar_result_65536_28'
;sloc0                     Allocated with name '___ckd_sub_uchar_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_uchar_sloc1_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:61: inline _Bool __ckd_sub_uchar __CKD_DEFAULT_IMPL(unsigned char, -)
;	-----------------------------------------
;	 function __ckd_sub_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_uchar:
	pshx
	tax
	pulh
	lda	(___ckd_sub_uchar_PARM_2 + 7)
	sub	(___ckd_sub_uchar_PARM_3 + 7)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 7)
	lda	(___ckd_sub_uchar_PARM_2 + 6)
	sbc	(___ckd_sub_uchar_PARM_3 + 6)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 6)
	lda	(___ckd_sub_uchar_PARM_2 + 5)
	sbc	(___ckd_sub_uchar_PARM_3 + 5)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 5)
	lda	(___ckd_sub_uchar_PARM_2 + 4)
	sbc	(___ckd_sub_uchar_PARM_3 + 4)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 4)
	lda	(___ckd_sub_uchar_PARM_2 + 3)
	sbc	(___ckd_sub_uchar_PARM_3 + 3)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 3)
	lda	(___ckd_sub_uchar_PARM_2 + 2)
	sbc	(___ckd_sub_uchar_PARM_3 + 2)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 2)
	lda	(___ckd_sub_uchar_PARM_2 + 1)
	sbc	(___ckd_sub_uchar_PARM_3 + 1)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 1)
	lda	___ckd_sub_uchar_PARM_2
	sbc	___ckd_sub_uchar_PARM_3
	sta	*___ckd_sub_uchar_sloc0_1_0
	lda	*(___ckd_sub_uchar_sloc0_1_0 + 7)
	sta	,x
	sta	*(___ckd_sub_uchar_sloc1_1_0 + 7)
	mov	#0x00,*(___ckd_sub_uchar_sloc1_1_0 + 6)
	mov	#0x00,*(___ckd_sub_uchar_sloc1_1_0 + 5)
	mov	#0x00,*(___ckd_sub_uchar_sloc1_1_0 + 4)
	mov	#0x00,*(___ckd_sub_uchar_sloc1_1_0 + 3)
	mov	#0x00,*(___ckd_sub_uchar_sloc1_1_0 + 2)
	mov	#0x00,*(___ckd_sub_uchar_sloc1_1_0 + 1)
	mov	#0x00,*___ckd_sub_uchar_sloc1_1_0
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_sub_uchar_sloc1_1_0
	cbeq	*___ckd_sub_uchar_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_short'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_short_PARM_2'
;b                         Allocated with name '___ckd_sub_short_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_sub_short_result_65536_30'
;sloc0                     Allocated with name '___ckd_sub_short_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_short_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_sub_short_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:62: inline _Bool __ckd_sub_short __CKD_DEFAULT_IMPL(short, -)
;	-----------------------------------------
;	 function __ckd_sub_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_short:
	pshx
	tax
	pulh
	lda	(___ckd_sub_short_PARM_2 + 7)
	sub	(___ckd_sub_short_PARM_3 + 7)
	sta	*(___ckd_sub_short_sloc0_1_0 + 7)
	lda	(___ckd_sub_short_PARM_2 + 6)
	sbc	(___ckd_sub_short_PARM_3 + 6)
	sta	*(___ckd_sub_short_sloc0_1_0 + 6)
	lda	(___ckd_sub_short_PARM_2 + 5)
	sbc	(___ckd_sub_short_PARM_3 + 5)
	sta	*(___ckd_sub_short_sloc0_1_0 + 5)
	lda	(___ckd_sub_short_PARM_2 + 4)
	sbc	(___ckd_sub_short_PARM_3 + 4)
	sta	*(___ckd_sub_short_sloc0_1_0 + 4)
	lda	(___ckd_sub_short_PARM_2 + 3)
	sbc	(___ckd_sub_short_PARM_3 + 3)
	sta	*(___ckd_sub_short_sloc0_1_0 + 3)
	lda	(___ckd_sub_short_PARM_2 + 2)
	sbc	(___ckd_sub_short_PARM_3 + 2)
	sta	*(___ckd_sub_short_sloc0_1_0 + 2)
	lda	(___ckd_sub_short_PARM_2 + 1)
	sbc	(___ckd_sub_short_PARM_3 + 1)
	sta	*(___ckd_sub_short_sloc0_1_0 + 1)
	lda	___ckd_sub_short_PARM_2
	sbc	___ckd_sub_short_PARM_3
	sta	*___ckd_sub_short_sloc0_1_0
	mov	*(___ckd_sub_short_sloc0_1_0 + 7),*(___ckd_sub_short_sloc1_1_0 + 1)
	mov	*(___ckd_sub_short_sloc0_1_0 + 6),*___ckd_sub_short_sloc1_1_0
	lda	*___ckd_sub_short_sloc1_1_0
	sta	,x
	lda	*(___ckd_sub_short_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_sub_short_sloc1_1_0 + 1),*(___ckd_sub_short_sloc2_1_0 + 7)
	lda	*___ckd_sub_short_sloc1_1_0
	sta	*(___ckd_sub_short_sloc2_1_0 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_sub_short_sloc2_1_0 + 5)
	sta	*(___ckd_sub_short_sloc2_1_0 + 4)
	sta	*(___ckd_sub_short_sloc2_1_0 + 3)
	sta	*(___ckd_sub_short_sloc2_1_0 + 2)
	sta	*(___ckd_sub_short_sloc2_1_0 + 1)
	sta	*___ckd_sub_short_sloc2_1_0
	lda	*(___ckd_sub_short_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_sub_short_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_sub_short_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_sub_short_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_sub_short_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_sub_short_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_sub_short_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_sub_short_sloc2_1_0
	cbeq	*___ckd_sub_short_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ushort'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_ushort_PARM_2'
;b                         Allocated with name '___ckd_sub_ushort_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_sub_ushort_result_65536_32'
;sloc0                     Allocated with name '___ckd_sub_ushort_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_ushort_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_sub_ushort_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:63: inline _Bool __ckd_sub_ushort __CKD_DEFAULT_IMPL(unsigned short, -)
;	-----------------------------------------
;	 function __ckd_sub_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_ushort:
	pshx
	tax
	pulh
	lda	(___ckd_sub_ushort_PARM_2 + 7)
	sub	(___ckd_sub_ushort_PARM_3 + 7)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 7)
	lda	(___ckd_sub_ushort_PARM_2 + 6)
	sbc	(___ckd_sub_ushort_PARM_3 + 6)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 6)
	lda	(___ckd_sub_ushort_PARM_2 + 5)
	sbc	(___ckd_sub_ushort_PARM_3 + 5)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 5)
	lda	(___ckd_sub_ushort_PARM_2 + 4)
	sbc	(___ckd_sub_ushort_PARM_3 + 4)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 4)
	lda	(___ckd_sub_ushort_PARM_2 + 3)
	sbc	(___ckd_sub_ushort_PARM_3 + 3)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 3)
	lda	(___ckd_sub_ushort_PARM_2 + 2)
	sbc	(___ckd_sub_ushort_PARM_3 + 2)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 2)
	lda	(___ckd_sub_ushort_PARM_2 + 1)
	sbc	(___ckd_sub_ushort_PARM_3 + 1)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 1)
	lda	___ckd_sub_ushort_PARM_2
	sbc	___ckd_sub_ushort_PARM_3
	sta	*___ckd_sub_ushort_sloc0_1_0
	mov	*(___ckd_sub_ushort_sloc0_1_0 + 7),*(___ckd_sub_ushort_sloc1_1_0 + 1)
	mov	*(___ckd_sub_ushort_sloc0_1_0 + 6),*___ckd_sub_ushort_sloc1_1_0
	lda	*___ckd_sub_ushort_sloc1_1_0
	sta	,x
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_sub_ushort_sloc1_1_0 + 1),*(___ckd_sub_ushort_sloc2_1_0 + 7)
	mov	*___ckd_sub_ushort_sloc1_1_0,*(___ckd_sub_ushort_sloc2_1_0 + 6)
	mov	#0x00,*(___ckd_sub_ushort_sloc2_1_0 + 5)
	mov	#0x00,*(___ckd_sub_ushort_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_sub_ushort_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_sub_ushort_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_sub_ushort_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_sub_ushort_sloc2_1_0
	lda	*(___ckd_sub_ushort_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_sub_ushort_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_sub_ushort_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_sub_ushort_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_sub_ushort_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_sub_ushort_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_sub_ushort_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_sub_ushort_sloc2_1_0
	cbeq	*___ckd_sub_ushort_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_int'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_int_PARM_2'
;b                         Allocated with name '___ckd_sub_int_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_sub_int_result_65536_34'
;sloc0                     Allocated with name '___ckd_sub_int_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_int_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_sub_int_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:64: inline _Bool __ckd_sub_int __CKD_DEFAULT_IMPL(int, -)
;	-----------------------------------------
;	 function __ckd_sub_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_int:
	pshx
	tax
	pulh
	lda	(___ckd_sub_int_PARM_2 + 7)
	sub	(___ckd_sub_int_PARM_3 + 7)
	sta	*(___ckd_sub_int_sloc0_1_0 + 7)
	lda	(___ckd_sub_int_PARM_2 + 6)
	sbc	(___ckd_sub_int_PARM_3 + 6)
	sta	*(___ckd_sub_int_sloc0_1_0 + 6)
	lda	(___ckd_sub_int_PARM_2 + 5)
	sbc	(___ckd_sub_int_PARM_3 + 5)
	sta	*(___ckd_sub_int_sloc0_1_0 + 5)
	lda	(___ckd_sub_int_PARM_2 + 4)
	sbc	(___ckd_sub_int_PARM_3 + 4)
	sta	*(___ckd_sub_int_sloc0_1_0 + 4)
	lda	(___ckd_sub_int_PARM_2 + 3)
	sbc	(___ckd_sub_int_PARM_3 + 3)
	sta	*(___ckd_sub_int_sloc0_1_0 + 3)
	lda	(___ckd_sub_int_PARM_2 + 2)
	sbc	(___ckd_sub_int_PARM_3 + 2)
	sta	*(___ckd_sub_int_sloc0_1_0 + 2)
	lda	(___ckd_sub_int_PARM_2 + 1)
	sbc	(___ckd_sub_int_PARM_3 + 1)
	sta	*(___ckd_sub_int_sloc0_1_0 + 1)
	lda	___ckd_sub_int_PARM_2
	sbc	___ckd_sub_int_PARM_3
	sta	*___ckd_sub_int_sloc0_1_0
	mov	*(___ckd_sub_int_sloc0_1_0 + 7),*(___ckd_sub_int_sloc1_1_0 + 1)
	mov	*(___ckd_sub_int_sloc0_1_0 + 6),*___ckd_sub_int_sloc1_1_0
	lda	*___ckd_sub_int_sloc1_1_0
	sta	,x
	lda	*(___ckd_sub_int_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_sub_int_sloc1_1_0 + 1),*(___ckd_sub_int_sloc2_1_0 + 7)
	lda	*___ckd_sub_int_sloc1_1_0
	sta	*(___ckd_sub_int_sloc2_1_0 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_sub_int_sloc2_1_0 + 5)
	sta	*(___ckd_sub_int_sloc2_1_0 + 4)
	sta	*(___ckd_sub_int_sloc2_1_0 + 3)
	sta	*(___ckd_sub_int_sloc2_1_0 + 2)
	sta	*(___ckd_sub_int_sloc2_1_0 + 1)
	sta	*___ckd_sub_int_sloc2_1_0
	lda	*(___ckd_sub_int_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_sub_int_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_sub_int_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_sub_int_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_sub_int_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_sub_int_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_sub_int_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_sub_int_sloc2_1_0
	cbeq	*___ckd_sub_int_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uint'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_uint_PARM_2'
;b                         Allocated with name '___ckd_sub_uint_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_sub_uint_result_65536_36'
;sloc0                     Allocated with name '___ckd_sub_uint_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_uint_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_sub_uint_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:65: inline _Bool __ckd_sub_uint __CKD_DEFAULT_IMPL(unsigned int, -)
;	-----------------------------------------
;	 function __ckd_sub_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_uint:
	pshx
	tax
	pulh
	lda	(___ckd_sub_uint_PARM_2 + 7)
	sub	(___ckd_sub_uint_PARM_3 + 7)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 7)
	lda	(___ckd_sub_uint_PARM_2 + 6)
	sbc	(___ckd_sub_uint_PARM_3 + 6)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 6)
	lda	(___ckd_sub_uint_PARM_2 + 5)
	sbc	(___ckd_sub_uint_PARM_3 + 5)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 5)
	lda	(___ckd_sub_uint_PARM_2 + 4)
	sbc	(___ckd_sub_uint_PARM_3 + 4)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 4)
	lda	(___ckd_sub_uint_PARM_2 + 3)
	sbc	(___ckd_sub_uint_PARM_3 + 3)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 3)
	lda	(___ckd_sub_uint_PARM_2 + 2)
	sbc	(___ckd_sub_uint_PARM_3 + 2)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 2)
	lda	(___ckd_sub_uint_PARM_2 + 1)
	sbc	(___ckd_sub_uint_PARM_3 + 1)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 1)
	lda	___ckd_sub_uint_PARM_2
	sbc	___ckd_sub_uint_PARM_3
	sta	*___ckd_sub_uint_sloc0_1_0
	mov	*(___ckd_sub_uint_sloc0_1_0 + 7),*(___ckd_sub_uint_sloc1_1_0 + 1)
	mov	*(___ckd_sub_uint_sloc0_1_0 + 6),*___ckd_sub_uint_sloc1_1_0
	lda	*___ckd_sub_uint_sloc1_1_0
	sta	,x
	lda	*(___ckd_sub_uint_sloc1_1_0 + 1)
	sta	1,x
	mov	*(___ckd_sub_uint_sloc1_1_0 + 1),*(___ckd_sub_uint_sloc2_1_0 + 7)
	mov	*___ckd_sub_uint_sloc1_1_0,*(___ckd_sub_uint_sloc2_1_0 + 6)
	mov	#0x00,*(___ckd_sub_uint_sloc2_1_0 + 5)
	mov	#0x00,*(___ckd_sub_uint_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_sub_uint_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_sub_uint_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_sub_uint_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_sub_uint_sloc2_1_0
	lda	*(___ckd_sub_uint_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_sub_uint_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_sub_uint_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_sub_uint_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_sub_uint_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_sub_uint_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_sub_uint_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_sub_uint_sloc2_1_0
	cbeq	*___ckd_sub_uint_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_long'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_long_PARM_2'
;b                         Allocated with name '___ckd_sub_long_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_sub_long_result_65536_38'
;sloc0                     Allocated with name '___ckd_sub_long_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_long_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_sub_long_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:66: inline _Bool __ckd_sub_long __CKD_DEFAULT_IMPL(long, -)
;	-----------------------------------------
;	 function __ckd_sub_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_long:
	pshx
	tax
	pulh
	lda	(___ckd_sub_long_PARM_2 + 7)
	sub	(___ckd_sub_long_PARM_3 + 7)
	sta	*(___ckd_sub_long_sloc0_1_0 + 7)
	lda	(___ckd_sub_long_PARM_2 + 6)
	sbc	(___ckd_sub_long_PARM_3 + 6)
	sta	*(___ckd_sub_long_sloc0_1_0 + 6)
	lda	(___ckd_sub_long_PARM_2 + 5)
	sbc	(___ckd_sub_long_PARM_3 + 5)
	sta	*(___ckd_sub_long_sloc0_1_0 + 5)
	lda	(___ckd_sub_long_PARM_2 + 4)
	sbc	(___ckd_sub_long_PARM_3 + 4)
	sta	*(___ckd_sub_long_sloc0_1_0 + 4)
	lda	(___ckd_sub_long_PARM_2 + 3)
	sbc	(___ckd_sub_long_PARM_3 + 3)
	sta	*(___ckd_sub_long_sloc0_1_0 + 3)
	lda	(___ckd_sub_long_PARM_2 + 2)
	sbc	(___ckd_sub_long_PARM_3 + 2)
	sta	*(___ckd_sub_long_sloc0_1_0 + 2)
	lda	(___ckd_sub_long_PARM_2 + 1)
	sbc	(___ckd_sub_long_PARM_3 + 1)
	sta	*(___ckd_sub_long_sloc0_1_0 + 1)
	lda	___ckd_sub_long_PARM_2
	sbc	___ckd_sub_long_PARM_3
	sta	*___ckd_sub_long_sloc0_1_0
	mov	*(___ckd_sub_long_sloc0_1_0 + 7),*(___ckd_sub_long_sloc1_1_0 + 3)
	mov	*(___ckd_sub_long_sloc0_1_0 + 6),*(___ckd_sub_long_sloc1_1_0 + 2)
	mov	*(___ckd_sub_long_sloc0_1_0 + 5),*(___ckd_sub_long_sloc1_1_0 + 1)
	mov	*(___ckd_sub_long_sloc0_1_0 + 4),*___ckd_sub_long_sloc1_1_0
	lda	*___ckd_sub_long_sloc1_1_0
	sta	,x
	lda	*(___ckd_sub_long_sloc1_1_0 + 1)
	sta	1,x
	lda	*(___ckd_sub_long_sloc1_1_0 + 2)
	sta	2,x
	lda	*(___ckd_sub_long_sloc1_1_0 + 3)
	sta	3,x
	mov	*(___ckd_sub_long_sloc1_1_0 + 3),*(___ckd_sub_long_sloc2_1_0 + 7)
	mov	*(___ckd_sub_long_sloc1_1_0 + 2),*(___ckd_sub_long_sloc2_1_0 + 6)
	mov	*(___ckd_sub_long_sloc1_1_0 + 1),*(___ckd_sub_long_sloc2_1_0 + 5)
	lda	*___ckd_sub_long_sloc1_1_0
	sta	*(___ckd_sub_long_sloc2_1_0 + 4)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ckd_sub_long_sloc2_1_0 + 3)
	sta	*(___ckd_sub_long_sloc2_1_0 + 2)
	sta	*(___ckd_sub_long_sloc2_1_0 + 1)
	sta	*___ckd_sub_long_sloc2_1_0
	lda	*(___ckd_sub_long_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_sub_long_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_sub_long_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_sub_long_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_sub_long_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_sub_long_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_sub_long_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_sub_long_sloc2_1_0
	cbeq	*___ckd_sub_long_sloc0_1_0,00105$
00103$:
	clra
	bra	00104$
00105$:
	lda	#0x01
00104$:
	eor	#0x01
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ulong'
;------------------------------------------------------------
;a                         Allocated with name '___ckd_sub_ulong_PARM_2'
;b                         Allocated with name '___ckd_sub_ulong_PARM_3'
;r                         Allocated to registers x h 
;result                    Allocated with name '___ckd_sub_ulong_result_65536_40'
;sloc0                     Allocated with name '___ckd_sub_ulong_sloc0_1_0'
;sloc1                     Allocated with name '___ckd_sub_ulong_sloc1_1_0'
;sloc2                     Allocated with name '___ckd_sub_ulong_sloc2_1_0'
;------------------------------------------------------------
;./../../include/stdckdint.h:67: inline _Bool __ckd_sub_ulong __CKD_DEFAULT_IMPL(unsigned long, -)
;	-----------------------------------------
;	 function __ckd_sub_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_ulong:
	pshx
	tax
	pulh
	lda	(___ckd_sub_ulong_PARM_2 + 7)
	sub	(___ckd_sub_ulong_PARM_3 + 7)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 7)
	lda	(___ckd_sub_ulong_PARM_2 + 6)
	sbc	(___ckd_sub_ulong_PARM_3 + 6)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 6)
	lda	(___ckd_sub_ulong_PARM_2 + 5)
	sbc	(___ckd_sub_ulong_PARM_3 + 5)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 5)
	lda	(___ckd_sub_ulong_PARM_2 + 4)
	sbc	(___ckd_sub_ulong_PARM_3 + 4)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 4)
	lda	(___ckd_sub_ulong_PARM_2 + 3)
	sbc	(___ckd_sub_ulong_PARM_3 + 3)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 3)
	lda	(___ckd_sub_ulong_PARM_2 + 2)
	sbc	(___ckd_sub_ulong_PARM_3 + 2)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 2)
	lda	(___ckd_sub_ulong_PARM_2 + 1)
	sbc	(___ckd_sub_ulong_PARM_3 + 1)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 1)
	lda	___ckd_sub_ulong_PARM_2
	sbc	___ckd_sub_ulong_PARM_3
	sta	*___ckd_sub_ulong_sloc0_1_0
	mov	*(___ckd_sub_ulong_sloc0_1_0 + 7),*(___ckd_sub_ulong_sloc1_1_0 + 3)
	mov	*(___ckd_sub_ulong_sloc0_1_0 + 6),*(___ckd_sub_ulong_sloc1_1_0 + 2)
	mov	*(___ckd_sub_ulong_sloc0_1_0 + 5),*(___ckd_sub_ulong_sloc1_1_0 + 1)
	mov	*(___ckd_sub_ulong_sloc0_1_0 + 4),*___ckd_sub_ulong_sloc1_1_0
	lda	*___ckd_sub_ulong_sloc1_1_0
	sta	,x
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 1)
	sta	1,x
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 2)
	sta	2,x
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 3)
	sta	3,x
	mov	*(___ckd_sub_ulong_sloc1_1_0 + 3),*(___ckd_sub_ulong_sloc2_1_0 + 7)
	mov	*(___ckd_sub_ulong_sloc1_1_0 + 2),*(___ckd_sub_ulong_sloc2_1_0 + 6)
	mov	*(___ckd_sub_ulong_sloc1_1_0 + 1),*(___ckd_sub_ulong_sloc2_1_0 + 5)
	mov	*___ckd_sub_ulong_sloc1_1_0,*(___ckd_sub_ulong_sloc2_1_0 + 4)
	mov	#0x00,*(___ckd_sub_ulong_sloc2_1_0 + 3)
	mov	#0x00,*(___ckd_sub_ulong_sloc2_1_0 + 2)
	mov	#0x00,*(___ckd_sub_ulong_sloc2_1_0 + 1)
	mov	#0x00,*___ckd_sub_ulong_sloc2_1_0
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 7)
	bne	00103$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 6)
	bne	00103$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 5)
	bne	00103$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 4)
	bne	00103$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 3)
	bne	00103$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 2)
	bne	00103$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 1)
	bne	00103$
	lda	*___ckd_sub_ulong_sloc2_1_0
	cbeq	*___ckd_sub_ulong_sloc0_1_0,00105$
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
