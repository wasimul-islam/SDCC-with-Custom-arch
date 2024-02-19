;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strcat
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
	.globl _strcat_PARM_2
	.globl _strcat
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strcat_sloc0_1_0:
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
_strcat_PARM_2:
	.ds 2
_strcat_dst_65536_26:
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
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;src                       Allocated with name '_strcat_PARM_2'
;dst                       Allocated with name '_strcat_dst_65536_26'
;cp                        Allocated to registers 
;sloc0                     Allocated with name '_strcat_sloc0_1_0'
;------------------------------------------------------------
;../_strcat.c:31: char * strcat ( char * dst, const char * src )
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strcat:
	sta	(_strcat_dst_65536_26 + 1)
	stx	_strcat_dst_65536_26
;../_strcat.c:35: while( *cp )
	lda	_strcat_dst_65536_26
	psha
	pulh
	ldx	(_strcat_dst_65536_26 + 1)
00101$:
	lda	,x
	beq	00111$
;../_strcat.c:36: cp++;                   /* find end of dst */
	aix	#1
	bra	00101$
;../_strcat.c:38: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
00111$:
	lda	_strcat_PARM_2
	sta	*_strcat_sloc0_1_0
	lda	(_strcat_PARM_2 + 1)
	sta	*(_strcat_sloc0_1_0 + 1)
00104$:
	pshx
	pshh
	ldhx	*_strcat_sloc0_1_0
	lda	,x
	aix	#1
	sthx	*_strcat_sloc0_1_0
	pulh
	pulx
	sta	,x
	aix	#1
	tsta
	bne	00104$
;../_strcat.c:40: return( dst );                  /* return dst */
	ldx	_strcat_dst_65536_26
	lda	(_strcat_dst_65536_26 + 1)
;../_strcat.c:41: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
