;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strncmp
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
	.globl _strncmp_PARM_3
	.globl _strncmp_PARM_2
	.globl _strncmp
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncmp_sloc0_1_0:
	.ds 2
_strncmp_sloc1_1_0:
	.ds 2
_strncmp_sloc2_1_0:
	.ds 2
_strncmp_sloc3_1_0:
	.ds 1
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
_strncmp_PARM_2:
	.ds 2
_strncmp_PARM_3:
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last                      Allocated with name '_strncmp_PARM_2'
;count                     Allocated with name '_strncmp_PARM_3'
;first                     Allocated to registers x h 
;sloc0                     Allocated with name '_strncmp_sloc0_1_0'
;sloc1                     Allocated with name '_strncmp_sloc1_1_0'
;sloc2                     Allocated with name '_strncmp_sloc2_1_0'
;sloc3                     Allocated with name '_strncmp_sloc3_1_0'
;------------------------------------------------------------
;../_strncmp.c:31: int strncmp ( const char * first, const char * last, size_t count )
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strncmp:
	pshx
	tax
	pulh
;../_strncmp.c:33: if (!count)
	lda	_strncmp_PARM_3
	ora	(_strncmp_PARM_3 + 1)
	bne	00114$
;../_strncmp.c:34: return(0);
	clra
	tax
	rts
;../_strncmp.c:36: while (--count && *first && *first == *last) {
00114$:
	sthx	*_strncmp_sloc0_1_0
	lda	_strncmp_PARM_2
	sta	*_strncmp_sloc1_1_0
	lda	(_strncmp_PARM_2 + 1)
	sta	*(_strncmp_sloc1_1_0 + 1)
	lda	_strncmp_PARM_3
	sta	*_strncmp_sloc2_1_0
	lda	(_strncmp_PARM_3 + 1)
	sta	*(_strncmp_sloc2_1_0 + 1)
00105$:
	ldhx	*_strncmp_sloc2_1_0
	aix	#-1
	sthx	*_strncmp_sloc2_1_0
	ldhx	*_strncmp_sloc0_1_0
	lda	,x
	ldhx	*_strncmp_sloc1_1_0
	ldx	,x
	stx	*_strncmp_sloc3_1_0
	tst	*(_strncmp_sloc2_1_0 + 1)
	bne	00137$
	tst	*_strncmp_sloc2_1_0
00137$:
	beq	00107$
	tsta
	beq	00107$
	cmp	*_strncmp_sloc3_1_0
	bne	00107$
;../_strncmp.c:37: first++;
	ldhx	*_strncmp_sloc0_1_0
	aix	#1
	sthx	*_strncmp_sloc0_1_0
;../_strncmp.c:38: last++;
	ldhx	*_strncmp_sloc1_1_0
	aix	#1
	sthx	*_strncmp_sloc1_1_0
	bra	00105$
00107$:
;../_strncmp.c:41: return( *first - *last );
	clrx
	mov	*_strncmp_sloc3_1_0,*(_strncmp_sloc2_1_0 + 1)
	stx	*_strncmp_sloc2_1_0
	sub	*(_strncmp_sloc2_1_0 + 1)
	psha
	txa
	sbc	*_strncmp_sloc2_1_0
	tax
	pula
;../_strncmp.c:42: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
