;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module __stdc_first_leading_one
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
	.globl ___stdc_first_leading_one_PARM_2
	.globl ___stdc_first_leading_one_PARM_1
	.globl ___stdc_first_leading_one
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___stdc_first_leading_one_sloc0_1_0:
	.ds 1
___stdc_first_leading_one_sloc1_1_0:
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
___stdc_first_leading_one_PARM_1:
	.ds 8
___stdc_first_leading_one_PARM_2:
	.ds 1
___stdc_first_leading_one_i_131072_10:
	.ds 1
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
;Allocation info for local variables in function '__stdc_first_leading_one'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_first_leading_one_sloc0_1_0'
;sloc1                     Allocated with name '___stdc_first_leading_one_sloc1_1_0'
;value                     Allocated with name '___stdc_first_leading_one_PARM_1'
;width                     Allocated with name '___stdc_first_leading_one_PARM_2'
;i                         Allocated with name '___stdc_first_leading_one_i_131072_10'
;------------------------------------------------------------
;../__stdc_first_leading_one.c:36: int_fast8_t __stdc_first_leading_one(unsigned long long value, uint_fast8_t width)
;	-----------------------------------------
;	 function __stdc_first_leading_one
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_first_leading_one:
;../__stdc_first_leading_one.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	lda	___stdc_first_leading_one_PARM_2
	sta	*___stdc_first_leading_one_sloc0_1_0
	lda	*___stdc_first_leading_one_sloc0_1_0
	sub	#0x01
	sta	___stdc_first_leading_one_i_131072_10
	lda	___stdc_first_leading_one_i_131072_10
00105$:
	cmp	#0x00
	blt	00103$
;../__stdc_first_leading_one.c:39: if(value & (1ull << i))
	sta	__rlulonglong_PARM_2
	clrh
	clrx
	sthx	__rlulonglong_PARM_1
	sthx	(__rlulonglong_PARM_1 + 2)
	sthx	(__rlulonglong_PARM_1 + 4)
	incx
	sthx	(__rlulonglong_PARM_1 + 6)
	psha
	jsr	__rlulonglong
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 7)
	stx	*(___stdc_first_leading_one_sloc1_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___stdc_first_leading_one_sloc1_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___stdc_first_leading_one_sloc1_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___stdc_first_leading_one_sloc1_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___stdc_first_leading_one_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___stdc_first_leading_one_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___stdc_first_leading_one_sloc1_1_0
	lda	(___stdc_first_leading_one_PARM_1 + 7)
	bit	*(___stdc_first_leading_one_sloc1_1_0 + 7)
	bne	00125$
	lda	(___stdc_first_leading_one_PARM_1 + 6)
	bit	*(___stdc_first_leading_one_sloc1_1_0 + 6)
	bne	00125$
	lda	(___stdc_first_leading_one_PARM_1 + 5)
	bit	*(___stdc_first_leading_one_sloc1_1_0 + 5)
	bne	00125$
	lda	(___stdc_first_leading_one_PARM_1 + 4)
	bit	*(___stdc_first_leading_one_sloc1_1_0 + 4)
	bne	00125$
	lda	(___stdc_first_leading_one_PARM_1 + 3)
	bit	*(___stdc_first_leading_one_sloc1_1_0 + 3)
	bne	00125$
	lda	(___stdc_first_leading_one_PARM_1 + 2)
	bit	*(___stdc_first_leading_one_sloc1_1_0 + 2)
	bne	00125$
	lda	(___stdc_first_leading_one_PARM_1 + 1)
	bit	*(___stdc_first_leading_one_sloc1_1_0 + 1)
	bne	00125$
	lda	___stdc_first_leading_one_PARM_1
	bit	*___stdc_first_leading_one_sloc1_1_0
00125$:
	pula
	beq	00106$
;../__stdc_first_leading_one.c:40: return (width - i);
	lda	*___stdc_first_leading_one_sloc0_1_0
	sub	___stdc_first_leading_one_i_131072_10
	rts
00106$:
;../__stdc_first_leading_one.c:38: for(int_fast8_t i = width - 1; i >= 0; i--)
	deca
	sta	___stdc_first_leading_one_i_131072_10
	bra	00105$
00103$:
;../__stdc_first_leading_one.c:41: return 0;
	clra
;../__stdc_first_leading_one.c:42: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
