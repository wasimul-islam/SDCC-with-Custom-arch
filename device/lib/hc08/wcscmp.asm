;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcscmp
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
	.globl _wcscmp_PARM_2
	.globl _wcscmp
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wcscmp_sloc0_1_0:
	.ds 2
_wcscmp_sloc1_1_0:
	.ds 2
_wcscmp_sloc2_1_0:
	.ds 4
_wcscmp_sloc3_1_0:
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
_wcscmp_PARM_2:
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
;Allocation info for local variables in function 'wcscmp'
;------------------------------------------------------------
;s2                        Allocated with name '_wcscmp_PARM_2'
;s1                        Allocated to registers 
;sloc0                     Allocated with name '_wcscmp_sloc0_1_0'
;sloc1                     Allocated with name '_wcscmp_sloc1_1_0'
;sloc2                     Allocated with name '_wcscmp_sloc2_1_0'
;sloc3                     Allocated with name '_wcscmp_sloc3_1_0'
;------------------------------------------------------------
;../wcscmp.c:31: int wcscmp(const wchar_t *s1, const wchar_t *s2)
;	-----------------------------------------
;	 function wcscmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcscmp:
	sta	*(_wcscmp_sloc0_1_0 + 1)
	stx	*_wcscmp_sloc0_1_0
;../wcscmp.c:33: while(*s1 == *s2 && *s1)
	lda	_wcscmp_PARM_2
	sta	*_wcscmp_sloc1_1_0
	lda	(_wcscmp_PARM_2 + 1)
	sta	*(_wcscmp_sloc1_1_0 + 1)
00102$:
	ldhx	*_wcscmp_sloc0_1_0
	lda	,x
	sta	*_wcscmp_sloc2_1_0
	lda	1,x
	sta	*(_wcscmp_sloc2_1_0 + 1)
	lda	2,x
	sta	*(_wcscmp_sloc2_1_0 + 2)
	lda	3,x
	sta	*(_wcscmp_sloc2_1_0 + 3)
	ldhx	*_wcscmp_sloc1_1_0
	lda	,x
	sta	*_wcscmp_sloc3_1_0
	lda	1,x
	sta	*(_wcscmp_sloc3_1_0 + 1)
	lda	2,x
	sta	*(_wcscmp_sloc3_1_0 + 2)
	lda	3,x
	sta	*(_wcscmp_sloc3_1_0 + 3)
	lda	*(_wcscmp_sloc2_1_0 + 3)
	cmp	*(_wcscmp_sloc3_1_0 + 3)
	bne	00137$
	lda	*(_wcscmp_sloc2_1_0 + 2)
	cmp	*(_wcscmp_sloc3_1_0 + 2)
	bne	00137$
	lda	*(_wcscmp_sloc2_1_0 + 1)
	cmp	*(_wcscmp_sloc3_1_0 + 1)
	bne	00137$
	lda	*_wcscmp_sloc2_1_0
	cbeq	*_wcscmp_sloc3_1_0,00138$
00137$:
	bra	00104$
00138$:
	lda	*_wcscmp_sloc2_1_0
	ora	*(_wcscmp_sloc2_1_0 + 1)
	ora	*(_wcscmp_sloc2_1_0 + 2)
	ora	*(_wcscmp_sloc2_1_0 + 3)
	beq	00104$
;../wcscmp.c:34: s1++, s2++;
	ldhx	*_wcscmp_sloc0_1_0
	aix	#4
	sthx	*_wcscmp_sloc0_1_0
	ldhx	*_wcscmp_sloc1_1_0
	aix	#4
	sthx	*_wcscmp_sloc1_1_0
	bra	00102$
00104$:
;../wcscmp.c:36: if(*s1 < *s2)
	lda	*(_wcscmp_sloc2_1_0 + 3)
	sub	*(_wcscmp_sloc3_1_0 + 3)
	lda	*(_wcscmp_sloc2_1_0 + 2)
	sbc	*(_wcscmp_sloc3_1_0 + 2)
	lda	*(_wcscmp_sloc2_1_0 + 1)
	sbc	*(_wcscmp_sloc3_1_0 + 1)
	lda	*_wcscmp_sloc2_1_0
	sbc	*_wcscmp_sloc3_1_0
	bcc	00106$
;../wcscmp.c:37: return(-1);
	lda	#0xff
	tax
	rts
00106$:
;../wcscmp.c:38: if(*s1 > *s2)
	lda	*(_wcscmp_sloc3_1_0 + 3)
	sub	*(_wcscmp_sloc2_1_0 + 3)
	lda	*(_wcscmp_sloc3_1_0 + 2)
	sbc	*(_wcscmp_sloc2_1_0 + 2)
	lda	*(_wcscmp_sloc3_1_0 + 1)
	sbc	*(_wcscmp_sloc2_1_0 + 1)
	lda	*_wcscmp_sloc3_1_0
	sbc	*_wcscmp_sloc2_1_0
	bcc	00108$
;../wcscmp.c:39: return(1);
	lda	#0x01
	clrx
	rts
00108$:
;../wcscmp.c:40: return(0);
	clra
	tax
;../wcscmp.c:41: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
