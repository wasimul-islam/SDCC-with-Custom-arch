;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _strrchr
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
	.globl _strrchr_PARM_2
	.globl _strrchr
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strrchr_sloc0_1_0:
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
_strrchr_PARM_2:
	.ds 2
_strrchr_start_65536_27:
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
;Allocation info for local variables in function 'strrchr'
;------------------------------------------------------------
;ch                        Allocated with name '_strrchr_PARM_2'
;string                    Allocated to registers x h 
;start                     Allocated with name '_strrchr_start_65536_27'
;sloc0                     Allocated with name '_strrchr_sloc0_1_0'
;------------------------------------------------------------
;../_strrchr.c:34: char * strrchr ( const char * string, int ch )
;	-----------------------------------------
;	 function strrchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strrchr:
	pshx
	tax
	pulh
;../_strrchr.c:37: const char * start = string;
	sthx	_strrchr_start_65536_27
;../_strrchr.c:39: while (*string++)                       /* find end of string */
00101$:
	lda	,x
	aix	#1
	tsta
	bne	00101$
;../_strrchr.c:42: while (--string != start && *string != ch)
	sthx	*_strrchr_sloc0_1_0
00105$:
	ldhx	*_strrchr_sloc0_1_0
	aix	#-1
	sthx	*_strrchr_sloc0_1_0
	ldhx	*_strrchr_sloc0_1_0
	ldx	,x
	clrh
	cphx	_strrchr_PARM_2
	beq	00140$
	clra
	bra	00139$
00140$:
	lda	#0x01
00139$:
	ldhx	*_strrchr_sloc0_1_0
	cphx	_strrchr_start_65536_27
	beq	00107$
	tsta
	beq	00105$
00107$:
;../_strrchr.c:45: if (*string == ch)                      /* char found ? */
	tsta
	beq	00109$
;../_strrchr.c:46: return( (char *)string );
	ldx	*_strrchr_sloc0_1_0
	lda	*(_strrchr_sloc0_1_0 + 1)
	rts
00109$:
;../_strrchr.c:48: return (NULL) ;
	clra
	tax
;../_strrchr.c:49: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
