;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isspace
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
	.globl _isspace
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
_isspace_c_65536_21:
	.ds 2
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
;Allocation info for local variables in function 'isspace'
;------------------------------------------------------------
;c                         Allocated with name '_isspace_c_65536_21'
;------------------------------------------------------------
;../isspace.c:39: int isspace (int c)
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isspace:
	sta	(_isspace_c_65536_21 + 1)
	stx	_isspace_c_65536_21
;../isspace.c:46: return (c == ' ' || c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r');
	lda	(_isspace_c_65536_21 + 1)
	cmp	#0x20
	bne	00148$
	lda	_isspace_c_65536_21
	cbeqa	#0x00,00104$
00148$:
	lda	(_isspace_c_65536_21 + 1)
	cmp	#0x09
	bne	00149$
	lda	_isspace_c_65536_21
	cbeqa	#0x00,00104$
00149$:
	lda	(_isspace_c_65536_21 + 1)
	cmp	#0x0a
	bne	00150$
	lda	_isspace_c_65536_21
	cbeqa	#0x00,00104$
00150$:
	lda	(_isspace_c_65536_21 + 1)
	cmp	#0x0b
	bne	00151$
	lda	_isspace_c_65536_21
	cbeqa	#0x00,00104$
00151$:
	lda	(_isspace_c_65536_21 + 1)
	cmp	#0x0c
	bne	00152$
	lda	_isspace_c_65536_21
	cbeqa	#0x00,00104$
00152$:
	lda	(_isspace_c_65536_21 + 1)
	cmp	#0x0d
	bne	00153$
	lda	_isspace_c_65536_21
	cbeqa	#0x00,00104$
00153$:
	clra
	bra	00105$
00104$:
	lda	#0x01
00105$:
	clrx
;../isspace.c:48: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
