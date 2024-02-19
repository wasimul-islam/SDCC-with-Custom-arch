;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_ceilull
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
	.globl ___stdc_bit_ceilull_PARM_1
	.globl ___stdc_bit_ceilull
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___stdc_bit_ceilull_sloc0_1_0:
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
___stdc_bit_ceilull_PARM_1:
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
;Allocation info for local variables in function '__stdc_bit_ceilull'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_bit_ceilull_sloc0_1_0'
;value                     Allocated with name '___stdc_bit_ceilull_PARM_1'
;i                         Allocated to registers 
;------------------------------------------------------------
;../__stdc_bit_ceilull.c:37: unsigned long long __stdc_bit_ceilull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_ceilull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_bit_ceilull:
;../__stdc_bit_ceilull.c:40: for(i = 0; i < ULLONG_WIDTH; i++)
	clrx
00104$:
;../__stdc_bit_ceilull.c:41: if(value <= (1ull << i))
	clra
	sta	__rlulonglong_PARM_1
	sta	(__rlulonglong_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 6)
	inca
	sta	(__rlulonglong_PARM_1 + 7)
	stx	__rlulonglong_PARM_2
	pshx
	jsr	__rlulonglong
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
	stx	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___stdc_bit_ceilull_sloc0_1_0
	pulx
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
	sub	(___stdc_bit_ceilull_PARM_1 + 7)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	sbc	(___stdc_bit_ceilull_PARM_1 + 6)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	sbc	(___stdc_bit_ceilull_PARM_1 + 5)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	sbc	(___stdc_bit_ceilull_PARM_1 + 4)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	sbc	(___stdc_bit_ceilull_PARM_1 + 3)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	sbc	(___stdc_bit_ceilull_PARM_1 + 2)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	sbc	(___stdc_bit_ceilull_PARM_1 + 1)
	lda	*___stdc_bit_ceilull_sloc0_1_0
	sbc	___stdc_bit_ceilull_PARM_1
	bcc	00103$
;../__stdc_bit_ceilull.c:40: for(i = 0; i < ULLONG_WIDTH; i++)
	aix	#1
	cpx	#0x40
	bcs	00104$
00103$:
;../__stdc_bit_ceilull.c:43: return (1ull << i);
	clra
	sta	__rlulonglong_PARM_1
	sta	(__rlulonglong_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 6)
	inca
	sta	(__rlulonglong_PARM_1 + 7)
	stx	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
	stx	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___stdc_bit_ceilull_sloc0_1_0
	mov	*___stdc_bit_ceilull_sloc0_1_0,*___SDCC_hc08_ret7
	mov	*(___stdc_bit_ceilull_sloc0_1_0 + 1),*___SDCC_hc08_ret6
	mov	*(___stdc_bit_ceilull_sloc0_1_0 + 2),*___SDCC_hc08_ret5
	mov	*(___stdc_bit_ceilull_sloc0_1_0 + 3),*___SDCC_hc08_ret4
	mov	*(___stdc_bit_ceilull_sloc0_1_0 + 4),*___SDCC_hc08_ret3
	mov	*(___stdc_bit_ceilull_sloc0_1_0 + 5),*___SDCC_hc08_ret2
	ldx	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
;../__stdc_bit_ceilull.c:44: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
