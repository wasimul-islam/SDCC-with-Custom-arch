;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _strcpy
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
	.globl _strcpy_PARM_2
	.globl _strcpy
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strcpy_sloc0_1_0:
	.ds 2
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
_strcpy_PARM_2:
	.ds 2
_strcpy_d_65536_26:
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
;Allocation info for local variables in function 'strcpy'
;------------------------------------------------------------
;s                         Allocated with name '_strcpy_PARM_2'
;d                         Allocated with name '_strcpy_d_65536_26'
;d1                        Allocated to registers 
;sloc0                     Allocated with name '_strcpy_sloc0_1_0'
;------------------------------------------------------------
;../_strcpy.c:36: char * strcpy ( char * d, const char * s )
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strcpy:
	sta	(_strcpy_d_65536_26 + 1)
	stx	_strcpy_d_65536_26
;../_strcpy.c:48: while (*d1++ = *s++) ;
	ldhx	_strcpy_PARM_2
	sthx	*_strcpy_sloc0_1_0
	ldhx	_strcpy_d_65536_26
00101$:
	pshx
	pshh
	ldhx	*_strcpy_sloc0_1_0
	lda	,x
	aix	#1
	sthx	*_strcpy_sloc0_1_0
	pulh
	pulx
	sta	,x
	aix	#1
	tsta
	bne	00101$
;../_strcpy.c:50: return d;
	ldx	_strcpy_d_65536_26
	lda	(_strcpy_d_65536_26 + 1)
;../_strcpy.c:52: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
