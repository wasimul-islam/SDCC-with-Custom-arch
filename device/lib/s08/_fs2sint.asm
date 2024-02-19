;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _fs2sint
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
	.globl ___fs2slong
	.globl ___fs2sint_PARM_1
	.globl ___fs2sint
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___fs2sint_sloc0_1_0:
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
___fs2sint_PARM_1:
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
;Allocation info for local variables in function '__fs2sint'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fs2sint_sloc0_1_0'
;f                         Allocated with name '___fs2sint_PARM_1'
;sl                        Allocated with name '___fs2sint_sl_65536_21'
;------------------------------------------------------------
;../_fs2sint.c:81: signed int __fs2sint (float f)
;	-----------------------------------------
;	 function __fs2sint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2sint:
;../_fs2sint.c:83: signed long sl=__fs2slong(f);
	ldhx	___fs2sint_PARM_1
	sthx	___fs2slong_PARM_1
	ldhx	(___fs2sint_PARM_1 + 2)
	sthx	(___fs2slong_PARM_1 + 2)
	jsr	___fs2slong
	sta	*(___fs2sint_sloc0_1_0 + 3)
	stx	*(___fs2sint_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fs2sint_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fs2sint_sloc0_1_0
;../_fs2sint.c:84: if (sl>=INT_MAX)
	lda	*(___fs2sint_sloc0_1_0 + 3)
	sub	#0xff
	lda	*(___fs2sint_sloc0_1_0 + 2)
	sbc	#0x7f
	lda	*(___fs2sint_sloc0_1_0 + 1)
	sbc	#0x00
	lda	*___fs2sint_sloc0_1_0
	sbc	#0x00
	blt	00102$
;../_fs2sint.c:85: return INT_MAX;
	lda	#0xff
	ldx	#0x7f
	rts
00102$:
;../_fs2sint.c:86: if (sl<=INT_MIN)
	clra
	sub	*(___fs2sint_sloc0_1_0 + 3)
	lda	#0x80
	sbc	*(___fs2sint_sloc0_1_0 + 2)
	lda	#0xff
	sbc	*(___fs2sint_sloc0_1_0 + 1)
	lda	#0xff
	sbc	*___fs2sint_sloc0_1_0
	blt	00104$
;../_fs2sint.c:87: return -INT_MIN;
	clra
	ldx	#0x80
	rts
00104$:
;../_fs2sint.c:88: return sl;
	lda	*(___fs2sint_sloc0_1_0 + 3)
	ldx	*(___fs2sint_sloc0_1_0 + 2)
;../_fs2sint.c:89: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
