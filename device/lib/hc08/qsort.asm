;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module qsort
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
	.globl _qsort_PARM_4
	.globl _qsort_PARM_3
	.globl _qsort_PARM_2
	.globl _qsort
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_qsort_sloc0_1_0:
	.ds 2
_qsort_sloc1_1_0:
	.ds 2
_qsort_sloc2_1_0:
	.ds 2
_qsort_sloc3_1_0:
	.ds 2
_qsort_sloc4_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_swap_sloc0_1_0:
	.ds 2
_swap_sloc1_1_0:
	.ds 2
_swap_sloc2_1_0:
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
_swap_PARM_2:
	.ds 2
_swap_PARM_3:
	.ds 2
_qsort_PARM_2:
	.ds 2
_qsort_PARM_3:
	.ds 2
_qsort_PARM_4:
	.ds 2
_qsort_b_65536_41:
	.ds 2
_qsort_i_131072_42:
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;src                       Allocated with name '_swap_PARM_2'
;n                         Allocated with name '_swap_PARM_3'
;dst                       Allocated to registers a x 
;d                         Allocated to registers 
;s                         Allocated to registers 
;tmp                       Allocated to registers a 
;sloc0                     Allocated with name '_swap_sloc0_1_0'
;sloc1                     Allocated with name '_swap_sloc1_1_0'
;sloc2                     Allocated with name '_swap_sloc2_1_0'
;------------------------------------------------------------
;../qsort.c:33: static void swap(void *restrict dst, void *restrict src, size_t n)
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_swap:
;../qsort.c:35: unsigned char *restrict d = dst;
	sta	*(_swap_sloc0_1_0 + 1)
	stx	*_swap_sloc0_1_0
;../qsort.c:36: unsigned char *restrict s = src;
	lda	(_swap_PARM_2 + 1)
	sta	*(_swap_sloc1_1_0 + 1)
	lda	_swap_PARM_2
	sta	*_swap_sloc1_1_0
;../qsort.c:38: while(n--)
	lda	_swap_PARM_3
	sta	*_swap_sloc2_1_0
	lda	(_swap_PARM_3 + 1)
	sta	*(_swap_sloc2_1_0 + 1)
00101$:
	ldhx	*_swap_sloc2_1_0
	pshx
	pshh
	ldhx	*_swap_sloc2_1_0
	aix	#-1
	sthx	*_swap_sloc2_1_0
	pulh
	pulx
	cphx	#0x00
	beq	00104$
;../qsort.c:40: unsigned char tmp = *d;
	ldhx	*_swap_sloc0_1_0
	lda	,x
;../qsort.c:41: *d = *s;
	ldhx	*_swap_sloc1_1_0
	ldx	,x
	psha
	txa
	ldhx	*_swap_sloc0_1_0
	sta	,x
	aix	#1
	sthx	*_swap_sloc0_1_0
	pula
;../qsort.c:42: *s = tmp;
	ldhx	*_swap_sloc1_1_0
	sta	,x
	aix	#1
	sthx	*_swap_sloc1_1_0
;../qsort.c:43: d++;
;../qsort.c:44: s++;
	bra	00101$
00104$:
;../qsort.c:46: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'qsort'
;------------------------------------------------------------
;sloc0                     Allocated with name '_qsort_sloc0_1_0'
;sloc1                     Allocated with name '_qsort_sloc1_1_0'
;sloc2                     Allocated with name '_qsort_sloc2_1_0'
;sloc3                     Allocated with name '_qsort_sloc3_1_0'
;sloc4                     Allocated with name '_qsort_sloc4_1_0'
;nmemb                     Allocated with name '_qsort_PARM_2'
;size                      Allocated with name '_qsort_PARM_3'
;compar                    Allocated with name '_qsort_PARM_4'
;base                      Allocated to registers x h 
;b                         Allocated with name '_qsort_b_65536_41'
;i                         Allocated with name '_qsort_i_131072_42'
;j                         Allocated to registers x h 
;------------------------------------------------------------
;../qsort.c:48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_qsort:
	pshx
	tax
	pulh
;../qsort.c:50: unsigned char *b = base;
	pshh
	pula
	sta	_qsort_b_65536_41
	stx	(_qsort_b_65536_41 + 1)
;../qsort.c:52: if(nmemb <= 1)
	lda	#0x01
	sub	(_qsort_PARM_2 + 1)
	clra
	sbc	_qsort_PARM_2
	bcs	00102$
;../qsort.c:53: return;
	rts
00102$:
;../qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	pshh
	pula
	sta	_qsort_i_131072_42
	stx	(_qsort_i_131072_42 + 1)
	lda	_qsort_PARM_3
	sta	*_qsort_sloc0_1_0
	lda	(_qsort_PARM_3 + 1)
	sta	*(_qsort_sloc0_1_0 + 1)
	lda	*_qsort_sloc0_1_0
	sta	__mulint_PARM_2
	lda	*(_qsort_sloc0_1_0 + 1)
	sta	(__mulint_PARM_2 + 1)
	lda	(_qsort_PARM_2 + 1)
	ldx	_qsort_PARM_2
	jsr	__mulint
	add	(_qsort_b_65536_41 + 1)
	sta	*(_qsort_sloc1_1_0 + 1)
	txa
	adc	_qsort_b_65536_41
	sta	*_qsort_sloc1_1_0
00110$:
	lda	(_qsort_i_131072_42 + 1)
	sub	*(_qsort_sloc1_1_0 + 1)
	lda	_qsort_i_131072_42
	sbc	*_qsort_sloc1_1_0
	bcs	00145$
	rts
00145$:
;../qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	lda	_qsort_i_131072_42
	psha
	pulh
	ldx	(_qsort_i_131072_42 + 1)
00107$:
	lda	(_qsort_b_65536_41 + 1)
	pshx
	sub	1,s
	ais	#1
	lda	_qsort_b_65536_41
	pshh
	sbc	1,s
	ais	#1
	bcc	00111$
	txa
	sub	*(_qsort_sloc0_1_0 + 1)
	sta	*(_qsort_sloc2_1_0 + 1)
	pshh
	pula
	sbc	*_qsort_sloc0_1_0
	sta	*_qsort_sloc2_1_0
	mov	*(_qsort_sloc2_1_0 + 1),*(_qsort_sloc3_1_0 + 1)
	mov	*_qsort_sloc2_1_0,*_qsort_sloc3_1_0
	stx	*(_qsort_sloc4_1_0 + 1)
	pshh
	pula
	sta	*_qsort_sloc4_1_0
	lda	*(_qsort_sloc3_1_0 + 1)
	psha
	lda	*_qsort_sloc3_1_0
	psha
	bsr	00148$
	bra	00147$
00148$:
	lda	(_qsort_PARM_4 + 1)
	psha
	lda	_qsort_PARM_4
	psha
	lda	*(_qsort_sloc4_1_0 + 1)
	ldx	*_qsort_sloc4_1_0
	rts
00147$:
	ais	#2
	txa
	sub	#0x00
	bge	00111$
;../qsort.c:58: swap(j, j - size, size);
	ldx	*_qsort_sloc2_1_0
	lda	*(_qsort_sloc2_1_0 + 1)
	sta	(_swap_PARM_2 + 1)
	stx	_swap_PARM_2
	lda	*_qsort_sloc0_1_0
	sta	_swap_PARM_3
	lda	*(_qsort_sloc0_1_0 + 1)
	sta	(_swap_PARM_3 + 1)
	lda	*(_qsort_sloc4_1_0 + 1)
	ldx	*_qsort_sloc4_1_0
	jsr	_swap
;../qsort.c:57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	ldhx	*_qsort_sloc2_1_0
	bra	00107$
00111$:
;../qsort.c:55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	ldhx	#_qsort_i_131072_42
	lda	*(_qsort_sloc0_1_0 + 1)
	add	1,x
	sta	1,x
	lda	*_qsort_sloc0_1_0
	adc	,x
	sta	,x
	jmp	00110$
;../qsort.c:60: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
