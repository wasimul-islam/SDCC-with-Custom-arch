;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isnan
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
	.globl _isnan_PARM_1
	.globl _isnan
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_isnan_sloc0_1_0:
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
_isnan_PARM_1:
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
;Allocation info for local variables in function 'isnan'
;------------------------------------------------------------
;f                         Allocated with name '_isnan_PARM_1'
;pl                        Allocated to registers 
;sloc0                     Allocated with name '_isnan_sloc0_1_0'
;------------------------------------------------------------
;../isnan.c:33: int isnan (float f)
;	-----------------------------------------
;	 function isnan
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isnan:
;../isnan.c:35: unsigned long *pl = (unsigned long *) &f;
;../isnan.c:37: return (*pl & 0x7fffffff) > 0x7f800000;
	lda	_isnan_PARM_1
	sta	*_isnan_sloc0_1_0
	lda	(_isnan_PARM_1 + 1)
	sta	*(_isnan_sloc0_1_0 + 1)
	lda	(_isnan_PARM_1 + 2)
	sta	*(_isnan_sloc0_1_0 + 2)
	lda	(_isnan_PARM_1 + 3)
	sta	*(_isnan_sloc0_1_0 + 3)
	bclr	#7,*_isnan_sloc0_1_0
	clra
	sub	*(_isnan_sloc0_1_0 + 3)
	clra
	sbc	*(_isnan_sloc0_1_0 + 2)
	lda	#0x80
	sbc	*(_isnan_sloc0_1_0 + 1)
	lda	#0x7f
	sbc	*_isnan_sloc0_1_0
	bcs	00103$
	clra
	bra	00104$
00103$:
	lda	#0x01
00104$:
	clrx
;../isnan.c:38: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
