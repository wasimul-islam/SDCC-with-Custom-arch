;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module calloc
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
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _calloc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_calloc_sloc0_1_0:
	.ds 4
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
_calloc_PARM_2:
	.ds 2
_calloc_ptr_65536_62:
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_calloc_sloc0_1_0'
;size                      Allocated with name '_calloc_PARM_2'
;nmemb                     Allocated to registers a x 
;ptr                       Allocated with name '_calloc_ptr_65536_62'
;msize                     Allocated with name '_calloc_msize_65536_62'
;------------------------------------------------------------
;../calloc.c:44: void *calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_calloc:
;../calloc.c:49: unsigned long msize = (unsigned long)nmemb * (unsigned long)size;
	sta	(__mullong_PARM_1 + 3)
	stx	(__mullong_PARM_1 + 2)
	psha
	clra
	sta	(__mullong_PARM_1 + 1)
	clra
	sta	__mullong_PARM_1
	pula
	lda	(_calloc_PARM_2 + 1)
	sta	(__mullong_PARM_2 + 3)
	lda	_calloc_PARM_2
	sta	(__mullong_PARM_2 + 2)
	clra
	sta	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
;../calloc.c:54: if (msize > SIZE_MAX)
	jsr	__mullong
	sta	*(_calloc_sloc0_1_0 + 3)
	stx	*(_calloc_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_calloc_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_calloc_sloc0_1_0
	lda	#0xff
	sub	*(_calloc_sloc0_1_0 + 3)
	lda	#0xff
	sbc	*(_calloc_sloc0_1_0 + 2)
	clra
	sbc	*(_calloc_sloc0_1_0 + 1)
	clra
	sbc	*_calloc_sloc0_1_0
	bcc	00102$
;../calloc.c:55: return(0);
	clra
	tax
	rts
00102$:
;../calloc.c:57: if (ptr = malloc(msize))
	mov	*(_calloc_sloc0_1_0 + 3),*(_calloc_sloc0_1_0 + 1)
	mov	*(_calloc_sloc0_1_0 + 2),*_calloc_sloc0_1_0
	lda	*(_calloc_sloc0_1_0 + 1)
	ldx	*_calloc_sloc0_1_0
	jsr	_malloc
	stx	_calloc_ptr_65536_62
	sta	(_calloc_ptr_65536_62 + 1)
	tsta
	bne	00118$
	tstx
00118$:
	beq	00104$
;../calloc.c:58: memset(ptr, 0, msize);
	clra
	sta	_memset_PARM_2
	lda	*_calloc_sloc0_1_0
	sta	_memset_PARM_3
	lda	*(_calloc_sloc0_1_0 + 1)
	sta	(_memset_PARM_3 + 1)
	lda	(_calloc_ptr_65536_62 + 1)
	ldx	_calloc_ptr_65536_62
	jsr	_memset
00104$:
;../calloc.c:60: return(ptr);
	ldx	_calloc_ptr_65536_62
	lda	(_calloc_ptr_65536_62 + 1)
;../calloc.c:61: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
