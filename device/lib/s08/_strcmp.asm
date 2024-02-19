;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _strcmp
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
	.globl _strcmp_PARM_2
	.globl _strcmp
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strcmp_sloc0_1_0:
	.ds 2
_strcmp_sloc1_1_0:
	.ds 2
_strcmp_sloc2_1_0:
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
_strcmp_PARM_2:
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
;Allocation info for local variables in function 'strcmp'
;------------------------------------------------------------
;adst                      Allocated with name '_strcmp_PARM_2'
;asrc                      Allocated to registers 
;ret                       Allocated with name '_strcmp_sloc2_1_0'
;sloc0                     Allocated with name '_strcmp_sloc0_1_0'
;sloc1                     Allocated with name '_strcmp_sloc1_1_0'
;sloc2                     Allocated with name '_strcmp_sloc2_1_0'
;------------------------------------------------------------
;../_strcmp.c:34: int strcmp ( const char * asrc, const char * adst )
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strcmp:
	sta	*(_strcmp_sloc0_1_0 + 1)
	stx	*_strcmp_sloc0_1_0
;../_strcmp.c:51: while( ! (ret = *(unsigned char *)asrc - *(unsigned char *)adst) && *adst)
	ldhx	_strcmp_PARM_2
	sthx	*_strcmp_sloc1_1_0
00102$:
	ldhx	*_strcmp_sloc0_1_0
	ldx	,x
	clrh
	pshx
	pshh
	ldhx	*_strcmp_sloc1_1_0
	lda	,x
	pulh
	pulx
	sta	*(_strcmp_sloc2_1_0 + 1)
	mov	#0x00,*_strcmp_sloc2_1_0
	psha
	txa
	sub	*(_strcmp_sloc2_1_0 + 1)
	tax
	pshh
	pula
	sbc	*_strcmp_sloc2_1_0
	psha
	pulh
	pula
	sthx	*_strcmp_sloc2_1_0
	cphx	#0x00
	bne	00104$
	tsta
	beq	00104$
;../_strcmp.c:52: ++asrc, ++adst;
	ldhx	*_strcmp_sloc0_1_0
	aix	#1
	sthx	*_strcmp_sloc0_1_0
	ldhx	*_strcmp_sloc1_1_0
	aix	#1
	sthx	*_strcmp_sloc1_1_0
	bra	00102$
00104$:
;../_strcmp.c:54: return( ret );
	ldx	*_strcmp_sloc2_1_0
	lda	*(_strcmp_sloc2_1_0 + 1)
;../_strcmp.c:56: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
