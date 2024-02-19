;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module bsearch
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
	.globl _bsearch_PARM_5
	.globl _bsearch_PARM_4
	.globl _bsearch_PARM_3
	.globl _bsearch_PARM_2
	.globl _bsearch
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_bsearch_sloc0_1_0:
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
_bsearch_PARM_2:
	.ds 2
_bsearch_PARM_3:
	.ds 2
_bsearch_PARM_4:
	.ds 2
_bsearch_PARM_5:
	.ds 2
_bsearch_key_65536_36:
	.ds 2
_bsearch_left_131072_39:
	.ds 2
_bsearch_middle_196608_40:
	.ds 2
_bsearch_c_196608_40:
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
;Allocation info for local variables in function 'bsearch'
;------------------------------------------------------------
;sloc0                     Allocated with name '_bsearch_sloc0_1_0'
;base                      Allocated with name '_bsearch_PARM_2'
;nmemb                     Allocated with name '_bsearch_PARM_3'
;size                      Allocated with name '_bsearch_PARM_4'
;compar                    Allocated with name '_bsearch_PARM_5'
;key                       Allocated with name '_bsearch_key_65536_36'
;left                      Allocated with name '_bsearch_left_131072_39'
;middle                    Allocated with name '_bsearch_middle_196608_40'
;c                         Allocated with name '_bsearch_c_196608_40'
;------------------------------------------------------------
;../bsearch.c:31: void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function bsearch
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_bsearch:
	sta	(_bsearch_key_65536_36 + 1)
	stx	_bsearch_key_65536_36
;../bsearch.c:33: for(const char *left = base; nmemb;)
	ldhx	_bsearch_PARM_2
	sthx	_bsearch_left_131072_39
00109$:
	lda	_bsearch_PARM_3
	ora	(_bsearch_PARM_3 + 1)
	bne	00133$
	jmp	00107$
00133$:
;../bsearch.c:35: const char *middle = left + nmemb / 2 * size;
	lda	(_bsearch_PARM_3 + 1)
	ldx	_bsearch_PARM_3
	lsrx
	rora
	sta	*(_bsearch_sloc0_1_0 + 1)
	stx	*_bsearch_sloc0_1_0
	ldhx	_bsearch_PARM_4
	sthx	__mulint_PARM_2
	lda	*(_bsearch_sloc0_1_0 + 1)
	ldx	*_bsearch_sloc0_1_0
	jsr	__mulint
	add	(_bsearch_left_131072_39 + 1)
	sta	(_bsearch_middle_196608_40 + 1)
	txa
	adc	_bsearch_left_131072_39
	sta	_bsearch_middle_196608_40
;../bsearch.c:36: int c = (*compar)(key, middle);
	ldhx	_bsearch_middle_196608_40
	pshx
	pshh
	pshx
	pshh
	bsr	00135$
	bra	00134$
00135$:
	lda	(_bsearch_PARM_5 + 1)
	psha
	lda	_bsearch_PARM_5
	psha
	lda	(_bsearch_key_65536_36 + 1)
	ldx	_bsearch_key_65536_36
	rts
00134$:
	sta	(_bsearch_c_196608_40 + 1)
	stx	_bsearch_c_196608_40
	ais	#2
	pulh
	pulx
;../bsearch.c:38: if(c < 0)
	lda	_bsearch_c_196608_40
	sub	#0x00
	bge	00105$
;../bsearch.c:39: nmemb = nmemb / 2;	
	lda	*_bsearch_sloc0_1_0
	sta	_bsearch_PARM_3
	lda	*(_bsearch_sloc0_1_0 + 1)
	sta	(_bsearch_PARM_3 + 1)
	bra	00109$
00105$:
;../bsearch.c:40: else if(c > 0)
	clra
	sub	(_bsearch_c_196608_40 + 1)
	clra
	sbc	_bsearch_c_196608_40
	bge	00102$
;../bsearch.c:42: left = middle + size;
	ldhx	#_bsearch_left_131072_39
	lda	(_bsearch_middle_196608_40 + 1)
	add	(_bsearch_PARM_4 + 1)
	sta	1,x
	lda	_bsearch_middle_196608_40
	adc	_bsearch_PARM_4
	sta	,x
;../bsearch.c:43: nmemb = (nmemb - 1) / 2;
	ldhx	_bsearch_PARM_3
	aix	#-1
	txa
	pshh
	pulx
	lsrx
	rora
	sta	(_bsearch_PARM_3 + 1)
	stx	_bsearch_PARM_3
	jmp	00109$
00102$:
;../bsearch.c:46: return(middle);
	pshx
	pshh
	pulx
	pula
	rts
00107$:
;../bsearch.c:49: return(0);
	clra
	tax
;../bsearch.c:50: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
