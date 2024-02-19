;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module isinf
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
	.globl _isinf_PARM_1
	.globl _isinf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_isinf_sloc0_1_0:
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
_isinf_PARM_1:
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
;Allocation info for local variables in function 'isinf'
;------------------------------------------------------------
;f                         Allocated with name '_isinf_PARM_1'
;pl                        Allocated to registers 
;sloc0                     Allocated with name '_isinf_sloc0_1_0'
;------------------------------------------------------------
;../isinf.c:33: int isinf (float f)
;	-----------------------------------------
;	 function isinf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isinf:
;../isinf.c:35: unsigned long *pl = (unsigned long *) &f;
;../isinf.c:36: return *pl == 0x7f800000 || *pl == 0xff800000;
	lda	_isinf_PARM_1
	sta	*_isinf_sloc0_1_0
	lda	(_isinf_PARM_1 + 1)
	sta	*(_isinf_sloc0_1_0 + 1)
	lda	(_isinf_PARM_1 + 2)
	sta	*(_isinf_sloc0_1_0 + 2)
	lda	(_isinf_PARM_1 + 3)
	sta	*(_isinf_sloc0_1_0 + 3)
	lda	*(_isinf_sloc0_1_0 + 3)
	cmp	#0x00
	bne	00116$
	lda	*(_isinf_sloc0_1_0 + 2)
	cmp	#0x00
	bne	00116$
	lda	*(_isinf_sloc0_1_0 + 1)
	cmp	#0x80
	bne	00116$
	lda	*_isinf_sloc0_1_0
	cbeqa	#0x7f,00104$
00116$:
	lda	*(_isinf_sloc0_1_0 + 3)
	cmp	#0x00
	bne	00117$
	lda	*(_isinf_sloc0_1_0 + 2)
	cmp	#0x00
	bne	00117$
	lda	*(_isinf_sloc0_1_0 + 1)
	cmp	#0x80
	bne	00117$
	lda	*_isinf_sloc0_1_0
	cbeqa	#0xff,00104$
00117$:
	clra
	bra	00105$
00104$:
	lda	#0x01
00105$:
	clrx
;../isinf.c:37: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
