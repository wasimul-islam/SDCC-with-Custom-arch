;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module bsearch
	.optsdcc -mmcs51 --model-small
	
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
_bsearch_middle_196608_43:
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
;base                      Allocated with name '_bsearch_PARM_2'
;nmemb                     Allocated with name '_bsearch_PARM_3'
;size                      Allocated with name '_bsearch_PARM_4'
;compar                    Allocated with name '_bsearch_PARM_5'
;key                       Allocated with name '_bsearch_key_65536_39'
;left                      Allocated to registers r2 r3 r4 
;middle                    Allocated with name '_bsearch_middle_196608_43'
;c                         Allocated to registers r6 r7 
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
	mov	_bsearch_key_65536_39,dpl
	mov	(_bsearch_key_65536_39 + 1),dph
	mov	(_bsearch_key_65536_39 + 2),b
;	bsearch.c:33: for(const char *left = base; nmemb;)
	mov	r2,_bsearch_PARM_2
	mov	r3,(_bsearch_PARM_2 + 1)
	mov	r4,(_bsearch_PARM_2 + 2)
00109$:
	mov	a,_bsearch_PARM_3
	orl	a,(_bsearch_PARM_3 + 1)
	jnz	00129$
	ljmp	00107$
00129$:
;	bsearch.c:35: const char *middle = left + nmemb / 2 * size;
	mov	r0,_bsearch_PARM_3
	mov	a,(_bsearch_PARM_3 + 1)
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	__mulint_PARM_2,_bsearch_PARM_4
	mov	(__mulint_PARM_2 + 1),(_bsearch_PARM_4 + 1)
	mov	dpl,r0
	mov	dph,r1
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	add	a,r2
	mov	_bsearch_middle_196608_43,a
	mov	a,r7
	addc	a,r3
	mov	(_bsearch_middle_196608_43 + 1),a
	mov	(_bsearch_middle_196608_43 + 2),r4
;	bsearch.c:36: int c = (*compar)(key, middle);
	mov	r5,_bsearch_middle_196608_43
	mov	r6,(_bsearch_middle_196608_43 + 1)
	mov	r7,(_bsearch_middle_196608_43 + 2)
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar5
	push	ar6
	push	ar7
	lcall	00130$
	sjmp	00131$
00130$:
	push	_bsearch_PARM_5
	push	(_bsearch_PARM_5 + 1)
	mov	dpl,_bsearch_key_65536_39
	mov	dph,(_bsearch_key_65536_39 + 1)
	mov	b,(_bsearch_key_65536_39 + 2)
	ret
00131$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	bsearch.c:38: if(c < 0)
	mov	a,r7
	jnb	acc.7,00105$
;	bsearch.c:39: nmemb = nmemb / 2;	
	mov	_bsearch_PARM_3,r0
	mov	(_bsearch_PARM_3 + 1),r1
	ljmp	00109$
00105$:
;	bsearch.c:40: else if(c > 0)
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	bsearch.c:42: left = middle + size;
	mov	a,_bsearch_PARM_4
	add	a,_bsearch_middle_196608_43
	mov	r2,a
	mov	a,(_bsearch_PARM_4 + 1)
	addc	a,(_bsearch_middle_196608_43 + 1)
	mov	r3,a
	mov	r4,(_bsearch_middle_196608_43 + 2)
;	bsearch.c:43: nmemb = (nmemb - 1) / 2;
	mov	a,_bsearch_PARM_3
	add	a,#0xff
	mov	r6,a
	mov	a,(_bsearch_PARM_3 + 1)
	addc	a,#0xff
	mov	r7,a
	mov	_bsearch_PARM_3,r6
	clr	c
	rrc	a
	xch	a,_bsearch_PARM_3
	rrc	a
	xch	a,_bsearch_PARM_3
	mov	(_bsearch_PARM_3 + 1),a
	ljmp	00109$
00102$:
;	bsearch.c:46: return(middle);
	mov	r5,_bsearch_middle_196608_43
	mov	r6,(_bsearch_middle_196608_43 + 1)
	mov	r7,(_bsearch_middle_196608_43 + 2)
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
