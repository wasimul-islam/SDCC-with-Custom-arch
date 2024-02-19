;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module labs
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
	.globl _labs_PARM_1
	.globl _labs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_labs_sloc0_1_0:
	.ds 4
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
_labs_PARM_1:
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
;Allocation info for local variables in function 'labs'
;------------------------------------------------------------
;j                         Allocated with name '_labs_PARM_1'
;sloc0                     Allocated with name '_labs_sloc0_1_0'
;------------------------------------------------------------
;../labs.c:63: long int labs(long int j)
;	-----------------------------------------
;	 function labs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_labs:
;../labs.c:65: return (j < 0) ? -j : j;
	lda	_labs_PARM_1
	sub	#0x00
	bge	00103$
	clra
	sub	(_labs_PARM_1 + 3)
	sta	*(_labs_sloc0_1_0 + 3)
	clra
	sbc	(_labs_PARM_1 + 2)
	sta	*(_labs_sloc0_1_0 + 2)
	clra
	sbc	(_labs_PARM_1 + 1)
	sta	*(_labs_sloc0_1_0 + 1)
	clra
	sbc	_labs_PARM_1
	sta	*_labs_sloc0_1_0
	bra	00104$
00103$:
	ldhx	_labs_PARM_1
	sthx	*_labs_sloc0_1_0
	ldhx	(_labs_PARM_1 + 2)
	sthx	*(_labs_sloc0_1_0 + 2)
00104$:
	mov	*_labs_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(_labs_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_labs_sloc0_1_0 + 2)
	lda	*(_labs_sloc0_1_0 + 3)
;../labs.c:66: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
