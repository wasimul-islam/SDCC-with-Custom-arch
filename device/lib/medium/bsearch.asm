;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module bsearch
	.optsdcc -mmcs51 --model-medium
	
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
;sloc0                     Allocated with name '_bsearch_sloc0_1_0'
;sloc1                     Allocated with name '_bsearch_sloc1_1_0'
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
	mov	r0,#_bsearch_key_65536_39
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	bsearch.c:33: for(const char *left = base; nmemb;)
	mov	r0,#_bsearch_PARM_2
	movx	a,@r0
	mov	_bsearch_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_bsearch_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_bsearch_sloc1_1_0 + 2),a
00109$:
	mov	r0,#_bsearch_PARM_3
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00129$
	ljmp	00107$
00129$:
;	bsearch.c:35: const char *middle = left + nmemb / 2 * size;
	mov	r0,#_bsearch_PARM_3
	movx	a,@r0
	mov	_bsearch_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	clr	c
	rrc	a
	xch	a,_bsearch_sloc0_1_0
	rrc	a
	xch	a,_bsearch_sloc0_1_0
	mov	(_bsearch_sloc0_1_0 + 1),a
	mov	r0,#_bsearch_PARM_4
	mov	r1,#__mulint_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,_bsearch_sloc0_1_0
	mov	dph,(_bsearch_sloc0_1_0 + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,_bsearch_sloc1_1_0
	mov	r6,a
	mov	a,r7
	addc	a,(_bsearch_sloc1_1_0 + 1)
	mov	r5,a
	mov	r7,(_bsearch_sloc1_1_0 + 2)
;	bsearch.c:36: int c = (*compar)(key, middle);
	mov	ar2,r6
	mov	ar3,r5
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	lcall	00130$
	sjmp	00131$
00130$:
	mov	r0,#_bsearch_PARM_5
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	r0,#_bsearch_key_65536_39
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	ret
00131$:
	mov	r4,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	bsearch.c:38: if(c < 0)
	mov	a,r3
	jnb	acc.7,00105$
;	bsearch.c:39: nmemb = nmemb / 2;	
	mov	r0,#_bsearch_PARM_3
	mov	a,_bsearch_sloc0_1_0
	movx	@r0,a
	mov	a,(_bsearch_sloc0_1_0 + 1)
	inc	r0
	movx	@r0,a
	ljmp	00109$
00105$:
;	bsearch.c:40: else if(c > 0)
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	bsearch.c:42: left = middle + size;
	mov	r0,#_bsearch_PARM_4
	movx	a,@r0
	add	a,r6
	mov	_bsearch_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	mov	(_bsearch_sloc1_1_0 + 1),a
	mov	(_bsearch_sloc1_1_0 + 2),r7
;	bsearch.c:43: nmemb = (nmemb - 1) / 2;
	mov	r0,#_bsearch_PARM_3
	movx	a,@r0
	add	a,#0xff
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0xff
	mov	r4,a
	mov	r0,#_bsearch_PARM_3
	mov	a,r3
	movx	@r0,a
	movx	a,@r0
	mov	b,a
	mov	a,r4
	clr	c
	rrc	a
	xch	a,b
	rrc	a
	movx	@r0,a
	xch	a,b
	inc	r0
	movx	@r0,a
	ljmp	00109$
00102$:
;	bsearch.c:46: return(middle);
	mov	dpl,r6
	mov	dph,r5
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
