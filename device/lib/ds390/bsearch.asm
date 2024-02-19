;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module bsearch
	.optsdcc -mds390 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
mcon	=	0xC6
F1	=	0xD1	; user flag
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
	.ds 4
_bsearch_PARM_3:
	.ds 2
_bsearch_PARM_4:
	.ds 2
_bsearch_PARM_5:
	.ds 3
_bsearch_key_65536_36:
	.ds 4
_bsearch_left_131072_39:
	.ds 4
_bsearch_middle_196608_40:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;key                       Allocated with name '_bsearch_key_65536_36'
;left                      Allocated with name '_bsearch_left_131072_39'
;middle                    Allocated with name '_bsearch_middle_196608_40'
;c                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	bsearch.c:31: void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function bsearch
;	-----------------------------------------
_bsearch:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_bsearch_key_65536_36
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	bsearch.c:33: for(const char *left = base; nmemb;)
	mov	dptr,#_bsearch_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_bsearch_left_131072_39
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
00109$:
	mov	dptr,#_bsearch_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00129$
	ljmp	00107$
00129$:
;	bsearch.c:35: const char *middle = left + nmemb / 2 * size;
	mov	dptr,#_bsearch_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	dptr,#_bsearch_PARM_4
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mulint_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar6
	push	ar7
	mov	dpl,r6
	mov	dph,r7
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	mov	dptr,#_bsearch_left_131072_39
	mov	dps, #1
	mov	dptr, #_bsearch_middle_196608_40
	dec	dps
	movx	a,@dptr
	add	a,r0
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r1
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
;	bsearch.c:36: int c = (*compar)(key, middle);
	mov	dptr,#_bsearch_middle_196608_40
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	mov	a,#00130$
	push	acc
	mov	a,#(00130$ >> 8)
	push	acc
	mov	a,#(00130$ >> 16)
	push	acc
	mov	dptr,#_bsearch_PARM_5
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dps
	mov	dptr,#_bsearch_key_65536_36
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	ret
00130$:
	mov	r2,dpl
	mov	r3,dph
;	stack adjustment for parms
	pop	acc
	pop	acc
	pop	acc
	pop	acc
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
;	bsearch.c:38: if(c < 0)
	mov	a,r3
	jnb  acc[7],00105$
00131$:
;	bsearch.c:39: nmemb = nmemb / 2;	
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_bsearch_PARM_3
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00109$
00105$:
;	bsearch.c:40: else if(c > 0)
	clr	c
	clr	a
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc  00102$
00132$:
;	bsearch.c:42: left = middle + size;
	mov	dptr,#_bsearch_PARM_4
	mov	dps, #1
	mov	dptr, #_bsearch_middle_196608_40
	dec	dps
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	clr	a
	xch	a, acc1
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	mov     dps, #1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_bsearch_left_131072_39
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	bsearch.c:43: nmemb = (nmemb - 1) / 2;
	mov	dptr,#_bsearch_PARM_3
	movx	a,@dptr
	add	a,#0xff
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov  r3,a
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_bsearch_PARM_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	ljmp	00109$
00102$:
;	bsearch.c:46: return(middle);
	mov	dptr,#_bsearch_middle_196608_40
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	sjmp 00111$
00107$:
;	bsearch.c:49: return(0);
	mov  dptr,#0x0000
	mov	b,#0x00
00111$:
;	bsearch.c:50: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
