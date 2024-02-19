;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module bsearch
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;base                      Allocated to stack - _bp -5
;nmemb                     Allocated to stack - _bp -7
;size                      Allocated to stack - _bp -9
;compar                    Allocated to stack - _bp -11
;key                       Allocated to stack - _bp +1
;left                      Allocated to stack - _bp +6
;middle                    Allocated to registers r6 r7 r5 
;c                         Allocated to registers r3 r4 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
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
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	bsearch.c:33: for(const char *left = base; nmemb;)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00109$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00129$
	ljmp	00107$
00129$:
;	bsearch.c:35: const char *middle = left + nmemb / 2 * size;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	xch	a,@r1
	rrc	a
	xch	a,@r1
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
;	bsearch.c:36: int c = (*compar)(key, middle);
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	lcall	00130$
	sjmp	00131$
00130$:
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00131$:
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	bsearch.c:38: if(c < 0)
	mov	a,r4
	jnb	acc.7,00105$
;	bsearch.c:39: nmemb = nmemb / 2;	
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	ljmp	00109$
00105$:
;	bsearch.c:40: else if(c > 0)
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	bsearch.c:42: left = middle + size;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r3,a
	mov	ar4,r5
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	bsearch.c:43: nmemb = (nmemb - 1) / 2;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r4,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar3
	mov	a,r4
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
	ljmp	00109$
00102$:
;	bsearch.c:46: return(middle);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	sjmp	00111$
00107$:
;	bsearch.c:49: return(0);
	mov	dptr,#0x0000
	mov	b,#0x00
00111$:
;	bsearch.c:50: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
