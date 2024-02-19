;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module bsearch
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bsearch_PARM_5
	.globl _bsearch_PARM_4
	.globl _bsearch_PARM_3
	.globl _bsearch_PARM_2
	.globl _bsearch
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_bsearch_sloc0_1_0:
	.ds 2
_bsearch_sloc1_1_0:
	.ds 3
_bsearch_sloc2_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_bsearch_PARM_2:
	.ds 3
_bsearch_PARM_3:
	.ds 2
_bsearch_PARM_4:
	.ds 2
_bsearch_PARM_5:
	.ds 2
_bsearch_key_65536_39:
	.ds 3
_bsearch_left_131072_42:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;sloc1                     Allocated with name '_bsearch_sloc1_1_0'
;sloc2                     Allocated with name '_bsearch_sloc2_1_0'
;base                      Allocated with name '_bsearch_PARM_2'
;nmemb                     Allocated with name '_bsearch_PARM_3'
;size                      Allocated with name '_bsearch_PARM_4'
;compar                    Allocated with name '_bsearch_PARM_5'
;key                       Allocated with name '_bsearch_key_65536_39'
;left                      Allocated with name '_bsearch_left_131072_42'
;middle                    Allocated with name '_bsearch_middle_196608_43'
;c                         Allocated with name '_bsearch_c_196608_43'
;------------------------------------------------------------
;	bsearch.c:31: void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function bsearch
;	-----------------------------------------
_bsearch:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_bsearch_key_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	bsearch.c:33: for(const char *left = base; nmemb;)
	mov	dptr,#_bsearch_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_bsearch_left_131072_42
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00109$:
	mov	dptr,#_bsearch_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00129$
	ljmp	00107$
00129$:
;	bsearch.c:35: const char *middle = left + nmemb / 2 * size;
	mov	ar4,r6
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	dptr,#_bsearch_PARM_4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	_bsearch_sloc0_1_0,dpl
	mov	(_bsearch_sloc0_1_0 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar6
	push	ar7
	mov	dptr,#_bsearch_left_131072_42
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bsearch_sloc0_1_0
	add	a,r1
	mov	_bsearch_sloc1_1_0,a
	mov	a,(_bsearch_sloc0_1_0 + 1)
	addc	a,r6
	mov	(_bsearch_sloc1_1_0 + 1),a
	mov	(_bsearch_sloc1_1_0 + 2),r7
;	bsearch.c:36: int c = (*compar)(key, middle);
	mov	r1,_bsearch_sloc1_1_0
	mov	r6,(_bsearch_sloc1_1_0 + 1)
	mov	r7,(_bsearch_sloc1_1_0 + 2)
	mov	_bsearch_sloc2_1_0,r1
	mov	(_bsearch_sloc2_1_0 + 1),r6
	mov	(_bsearch_sloc2_1_0 + 2),r7
	mov	dptr,#_bsearch_key_65536_39
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	_bsearch_sloc2_1_0
	push	(_bsearch_sloc2_1_0 + 1)
	push	(_bsearch_sloc2_1_0 + 2)
	lcall	00130$
	sjmp	00131$
00130$:
	mov	dptr,#_bsearch_PARM_5
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	ret
00131$:
	mov	_bsearch_sloc2_1_0,dpl
	mov	(_bsearch_sloc2_1_0 + 1),dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	bsearch.c:38: if(c < 0)
	mov	a,(_bsearch_sloc2_1_0 + 1)
	pop	ar7
	pop	ar6
	jnb	acc.7,00105$
;	bsearch.c:39: nmemb = nmemb / 2;	
	mov	dptr,#_bsearch_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00109$
00105$:
;	bsearch.c:40: else if(c > 0)
	clr	c
	clr	a
	subb	a,_bsearch_sloc2_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_bsearch_sloc2_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	bsearch.c:42: left = middle + size;
	mov	dptr,#_bsearch_left_131072_42
	mov	a,r2
	add	a,_bsearch_sloc1_1_0
	movx	@dptr,a
	mov	a,r3
	addc	a,(_bsearch_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_bsearch_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	bsearch.c:43: nmemb = (nmemb - 1) / 2;
	dec	r6
	cjne	r6,#0xff,00134$
	dec	r7
00134$:
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	dptr,#_bsearch_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00109$
00102$:
;	bsearch.c:46: return(middle);
	mov	r5,_bsearch_sloc1_1_0
	mov	r6,(_bsearch_sloc1_1_0 + 1)
	mov	r7,(_bsearch_sloc1_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00107$:
;	bsearch.c:49: return(0);
	mov	dptr,#0x0000
	mov	b,#0x00
;	bsearch.c:50: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
