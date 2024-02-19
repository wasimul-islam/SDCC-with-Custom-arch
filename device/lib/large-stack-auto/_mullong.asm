;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong
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
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;b                         Allocated to stack - _bp -6
;a                         Allocated to stack - _bp +1
;t                         Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	_mullong.c:743: _mullong (long a, long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
__mullong:
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
	push	acc
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	_mullong.c:747: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	add	a,#0x02
	mov	r0,a
	mov	r7,_bp
	inc	r7
	mov	ar6,r7
	push	ar0
	mov	r0,ar6
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r5,a
	mov	r4,a
	inc	r4
	inc	r4
	mov	r0,ar4
	mov	ar4,@r0
	pop	ar0
	mov	b,r6
	mov	a,r4
	mul	ab
	mov	r6,a
	mov	r3,b
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar3
;	_mullong.c:748: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	mov	ar6,r7
	mov	ar0,r6
	mov	ar6,@r0
	mov	ar4,r5
	mov	ar0,r4
	mov	ar4,@r0
	mov	b,r6
	mov	a,r4
	mul	ab
	mov	r6,a
	mov	r3,b
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar3
;	_mullong.c:749: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	mov	a,_bp
	add	a,#0x09
	add	a,#0x03
	mov	r1,a
	mov	ar6,@r1
	mov	ar4,r7
	mov	a,#0x03
	add	a,r4
	mov	r0,a
	mov	ar4,@r0
	mov	ar3,r5
	mov	ar0,r3
	mov	ar3,@r0
	mov	b,r4
	mov	a,r3
	mul	ab
	add	a,r6
	mov	r6,a
	mov	@r1,a
;	_mullong.c:750: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	mov	ar4,r7
	mov	a,#0x02
	add	a,r4
	mov	r0,a
	mov	ar4,@r0
	mov	ar3,r5
	mov	a,r3
	inc	a
	mov	r0,a
	mov	ar3,@r0
	mov	b,r4
	mov	a,r3
	mul	ab
	add	a,r6
	mov	@r1,a
;	_mullong.c:751: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	mov	a,_bp
	add	a,#0x09
	add	a,#0x02
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	mov	ar3,r7
	mov	a,#0x02
	add	a,r3
	mov	r0,a
	mov	ar3,@r0
	mov	ar2,r5
	mov	ar0,r2
	mov	ar2,@r0
	mov	b,r3
	mov	a,r2
	mul	ab
	mov	r3,b
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar6
	dec	r1
;	_mullong.c:753: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	mov	ar3,r7
	mov	a,r3
	inc	a
	mov	r0,a
	mov	ar3,@r0
	mov	ar2,r5
	mov	a,r2
	inc	a
	mov	r0,a
	mov	ar2,@r0
	mov	b,r3
	mov	a,r2
	mul	ab
	mov	r3,b
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar6
;	_mullong.c:755: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	mov	ar6,r7
	mov	a,#0x03
	add	a,r6
	mov	r1,a
	mov	ar6,r7
	mov	a,r6
	inc	a
	mov	r0,a
	mov	ar6,@r0
	mov	ar4,r5
	mov	a,#0x02
	add	a,r4
	mov	r0,a
	mov	ar4,@r0
	mov	b,r6
	mov	a,r4
	mul	ab
	mov	@r1,a
;	_mullong.c:756: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	mov	ar6,r7
	mov	a,r6
	inc	a
	mov	r1,a
	mov	ar6,r7
	mov	a,r6
	inc	a
	mov	r0,a
	mov	ar6,@r0
	mov	ar4,r5
	mov	ar0,r4
	mov	ar4,@r0
	mov	b,r6
	mov	a,r4
	mul	ab
	mov	r6,a
	mov	r3,b
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar3
;	_mullong.c:758: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	mov	ar6,r5
	mov	a,#0x03
	add	a,r6
	mov	r1,a
	mov	ar6,r7
	mov	ar0,r6
	mov	ar6,@r0
	mov	ar4,r5
	mov	a,#0x03
	add	a,r4
	mov	r0,a
	mov	ar4,@r0
	mov	b,r6
	mov	a,r4
	mul	ab
	mov	@r1,a
;	_mullong.c:759: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	mov	ar6,r5
	mov	a,r6
	inc	a
	mov	r1,a
	mov	ar6,r7
	mov	ar0,r6
	mov	ar6,@r0
	mov	ar4,r5
	mov	a,r4
	inc	a
	mov	r0,a
	mov	ar4,@r0
	mov	b,r6
	mov	a,r4
	mul	ab
	mov	r6,a
	mov	r3,b
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar3
;	_mullong.c:761: bcast(b)->bi.b0 = 0;                                // B
	mov	ar1,r5
	mov	@r1,#0x00
;	_mullong.c:762: bcast(a)->bi.b0 = 0;                                // C
	mov	ar1,r7
	mov	@r1,#0x00
;	_mullong.c:763: t.l += a;
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	inc	r0
	mov	a,@r0
	mov	@r1,a
	inc	r1
	inc	r0
	mov	a,@r0
	mov	@r1,a
	inc	r1
	inc	r0
	mov	a,@r0
	mov	@r1,a
;	_mullong.c:765: return t.l + b;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	_mullong.c:766: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
