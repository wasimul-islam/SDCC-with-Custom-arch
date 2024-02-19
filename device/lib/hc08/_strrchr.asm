;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strrchr
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
	.globl _strrchr_PARM_2
	.globl _strrchr
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
_strrchr_PARM_2:
	.ds 1
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
;------------------------------------------------------------
;../_strrchr.c:32: char * strrchr ( const char * string, char ch )
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
	pshh
	pula
	sta	_strrchr_start_65536_27
	stx	(_strrchr_start_65536_27 + 1)
;../_strrchr.c:39: while (*string++)                       /* find end of string */
00101$:
	lda	,x
	aix	#1
	tsta
	bne	00101$
;../_strrchr.c:42: while (--string != start && *string != ch)
00105$:
	aix	#-1
	lda	,x
	cmp	_strrchr_PARM_2
	beq	00140$
	clra
	bra	00139$
00140$:
	lda	#0x01
00139$:
	cpx	(_strrchr_start_65536_27 + 1)
	bne	00141$
	psha
	pshh
	pula
	cmp	_strrchr_start_65536_27
	pula
	beq	00107$
00141$:
	tsta
	beq	00105$
00107$:
;../_strrchr.c:45: if (*string == ch)                      /* char found ? */
	tsta
	beq	00109$
;../_strrchr.c:46: return( (char *)string );
	pshx
	pshh
	pulx
	pula
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
