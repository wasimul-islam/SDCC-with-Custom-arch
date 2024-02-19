;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fssub
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
	.globl ___fssub_PARM_2
	.globl ___fssub_PARM_1
	.globl ___fssub
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___fssub_sloc0_1_0:
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
___fssub_PARM_1:
	.ds 4
___fssub_PARM_2:
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
;Allocation info for local variables in function '__fssub'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fssub_sloc0_1_0'
;a1                        Allocated with name '___fssub_PARM_1'
;a2                        Allocated with name '___fssub_PARM_2'
;neg                       Allocated with name '___fssub_neg_65536_21'
;------------------------------------------------------------
;../_fssub.c:73: float __fssub (float a1, float a2)
;	-----------------------------------------
;	 function __fssub
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fssub:
;../_fssub.c:75: float neg = -a1;
	lda	(___fssub_PARM_1 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	(___fssub_PARM_1 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(___fssub_PARM_1 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	___fssub_PARM_1
	eor	#0x80
	sta	___fsadd_PARM_1
;../_fssub.c:76: return -(neg + a2);
	ldhx	#___fsadd_PARM_2
	lda	___fssub_PARM_2
	sta	,x
	lda	(___fssub_PARM_2 + 1)
	sta	1,x
	lda	(___fssub_PARM_2 + 2)
	sta	2,x
	lda	(___fssub_PARM_2 + 3)
	sta	3,x
	jsr	___fsadd
	sta	*(___fssub_sloc0_1_0 + 3)
	stx	*(___fssub_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fssub_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fssub_sloc0_1_0
	lda	*___fssub_sloc0_1_0
	eor	#0x80
	sta	*___fssub_sloc0_1_0
	mov	*___fssub_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___fssub_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___fssub_sloc0_1_0 + 2)
	lda	*(___fssub_sloc0_1_0 + 3)
;../_fssub.c:77: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
