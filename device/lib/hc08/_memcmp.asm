;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memcmp
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
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcmp
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memcmp_sloc0_1_0:
	.ds 2
_memcmp_sloc1_1_0:
	.ds 2
_memcmp_sloc2_1_0:
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
_memcmp_PARM_2:
	.ds 2
_memcmp_PARM_3:
	.ds 2
_memcmp_buf1_65536_26:
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2                      Allocated with name '_memcmp_PARM_2'
;count                     Allocated with name '_memcmp_PARM_3'
;buf1                      Allocated with name '_memcmp_buf1_65536_26'
;sloc0                     Allocated with name '_memcmp_sloc0_1_0'
;sloc1                     Allocated with name '_memcmp_sloc1_1_0'
;sloc2                     Allocated with name '_memcmp_sloc2_1_0'
;------------------------------------------------------------
;../_memcmp.c:31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memcmp:
	sta	(_memcmp_buf1_65536_26 + 1)
	stx	_memcmp_buf1_65536_26
;../_memcmp.c:33: if (!count)
	lda	_memcmp_PARM_3
	ora	(_memcmp_PARM_3 + 1)
	bne	00112$
;../_memcmp.c:34: return(0);
	clra
	tax
	rts
;../_memcmp.c:36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	lda	_memcmp_PARM_3
	sta	*_memcmp_sloc0_1_0
	lda	(_memcmp_PARM_3 + 1)
	sta	*(_memcmp_sloc0_1_0 + 1)
00104$:
	ldhx	*_memcmp_sloc0_1_0
	aix	#-1
	sthx	*_memcmp_sloc0_1_0
	lda	_memcmp_buf1_65536_26
	psha
	pulh
	ldx	(_memcmp_buf1_65536_26 + 1)
	lda	(_memcmp_PARM_2 + 1)
	sta	*(_memcmp_sloc1_1_0 + 1)
	lda	_memcmp_PARM_2
	sta	*_memcmp_sloc1_1_0
	lda	,x
	pshx
	pshh
	ldhx	*_memcmp_sloc1_1_0
	psha
	lda	,x
	sta	*_memcmp_sloc2_1_0
	pula
	pulh
	pulx
	tst	*(_memcmp_sloc0_1_0 + 1)
	bne	00131$
	tst	*_memcmp_sloc0_1_0
00131$:
	beq	00106$
	cmp	*_memcmp_sloc2_1_0
	bne	00106$
;../_memcmp.c:37: buf1 = (char *)buf1 + 1;
	aix	#1
	stx	(_memcmp_buf1_65536_26 + 1)
	pshh
	pula
	sta	_memcmp_buf1_65536_26
;../_memcmp.c:38: buf2 = (char *)buf2 + 1;
	ldhx	*_memcmp_sloc1_1_0
	aix	#1
	stx	(_memcmp_PARM_2 + 1)
	pshh
	pula
	sta	_memcmp_PARM_2
	bra	00104$
00106$:
;../_memcmp.c:41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	clrx
	mov	*_memcmp_sloc2_1_0,*(_memcmp_sloc1_1_0 + 1)
	stx	*_memcmp_sloc1_1_0
	sub	*(_memcmp_sloc1_1_0 + 1)
	psha
	txa
	sbc	*_memcmp_sloc1_1_0
	tax
	pula
;../_memcmp.c:42: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
