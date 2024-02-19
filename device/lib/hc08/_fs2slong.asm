;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2slong
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
	.globl ___fs2ulong
	.globl ___fs2slong_PARM_1
	.globl ___fs2slong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___fs2slong_sloc0_1_0:
	.ds 4
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
___fs2slong_PARM_1:
	.ds 4
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
;Allocation info for local variables in function '__fs2slong'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fs2slong_sloc0_1_0'
;f                         Allocated with name '___fs2slong_PARM_1'
;------------------------------------------------------------
;../_fs2slong.c:108: signed long __fs2slong (float f)
;	-----------------------------------------
;	 function __fs2slong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2slong:
;../_fs2slong.c:111: if (!f)
	lda	___fs2slong_PARM_1
	and	#0x7F
	ora	(___fs2slong_PARM_1 + 1)
	ora	(___fs2slong_PARM_1 + 2)
	ora	(___fs2slong_PARM_1 + 3)
	bne	00102$
;../_fs2slong.c:112: return 0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../_fs2slong.c:114: if (f<0) {
	ldhx	#___fslt_PARM_1
	lda	___fs2slong_PARM_1
	sta	,x
	lda	(___fs2slong_PARM_1 + 1)
	sta	1,x
	lda	(___fs2slong_PARM_1 + 2)
	sta	2,x
	lda	(___fs2slong_PARM_1 + 3)
	sta	3,x
	ldhx	#___fslt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	beq	00104$
;../_fs2slong.c:115: return -__fs2ulong(-f);
	lda	(___fs2slong_PARM_1 + 3)
	sta	(___fs2ulong_PARM_1 + 3)
	lda	(___fs2slong_PARM_1 + 2)
	sta	(___fs2ulong_PARM_1 + 2)
	lda	(___fs2slong_PARM_1 + 1)
	sta	(___fs2ulong_PARM_1 + 1)
	lda	___fs2slong_PARM_1
	eor	#0x80
	sta	___fs2ulong_PARM_1
	jsr	___fs2ulong
	sta	*(___fs2slong_sloc0_1_0 + 3)
	stx	*(___fs2slong_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fs2slong_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fs2slong_sloc0_1_0
	clra
	sub	*(___fs2slong_sloc0_1_0 + 3)
	sta	*(___fs2slong_sloc0_1_0 + 3)
	clra
	sbc	*(___fs2slong_sloc0_1_0 + 2)
	sta	*(___fs2slong_sloc0_1_0 + 2)
	clra
	sbc	*(___fs2slong_sloc0_1_0 + 1)
	sta	*(___fs2slong_sloc0_1_0 + 1)
	clra
	sbc	*___fs2slong_sloc0_1_0
	sta	*___fs2slong_sloc0_1_0
	mov	*___fs2slong_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___fs2slong_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___fs2slong_sloc0_1_0 + 2)
	lda	*(___fs2slong_sloc0_1_0 + 3)
	rts
00104$:
;../_fs2slong.c:117: return __fs2ulong(f);
	ldhx	#___fs2ulong_PARM_1
	lda	___fs2slong_PARM_1
	sta	,x
	lda	(___fs2slong_PARM_1 + 1)
	sta	1,x
	lda	(___fs2slong_PARM_1 + 2)
	sta	2,x
	lda	(___fs2slong_PARM_1 + 3)
	sta	3,x
	jsr	___fs2ulong
	sta	*(___fs2slong_sloc0_1_0 + 3)
	stx	*(___fs2slong_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fs2slong_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fs2slong_sloc0_1_0
	mov	*___fs2slong_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___fs2slong_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___fs2slong_sloc0_1_0 + 2)
	lda	*(___fs2slong_sloc0_1_0 + 3)
;../_fs2slong.c:119: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
