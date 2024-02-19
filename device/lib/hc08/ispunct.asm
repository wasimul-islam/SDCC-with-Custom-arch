;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ispunct
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
	.globl _isalnum
	.globl _isspace
	.globl _isprint
	.globl _ispunct
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_ispunct_sloc0_1_0:
	.ds 2
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
;Allocation info for local variables in function 'ispunct'
;------------------------------------------------------------
;sloc0                     Allocated with name '_ispunct_sloc0_1_0'
;c                         Allocated to registers a x 
;------------------------------------------------------------
;../ispunct.c:33: int ispunct (int c)
;	-----------------------------------------
;	 function ispunct
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ispunct:
;../ispunct.c:35: return (isprint (c) && !isspace (c) && !isalnum (c));
	psha
	pshx
	jsr	_isprint
	sta	*(_ispunct_sloc0_1_0 + 1)
	stx	*_ispunct_sloc0_1_0
	pulx
	pula
	tst	*(_ispunct_sloc0_1_0 + 1)
	bne	00118$
	tst	*_ispunct_sloc0_1_0
00118$:
	beq	00103$
	psha
	pshx
	jsr	_isspace
	sta	*(_ispunct_sloc0_1_0 + 1)
	stx	*_ispunct_sloc0_1_0
	pulx
	pula
	tst	*(_ispunct_sloc0_1_0 + 1)
	bne	00120$
	tst	*_ispunct_sloc0_1_0
00120$:
	bne	00103$
	jsr	_isalnum
	tsta
	bne	00122$
	tstx
00122$:
	beq	00104$
00103$:
	clra
	bra	00105$
00104$:
	lda	#0x01
00105$:
	clrx
;../ispunct.c:36: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
