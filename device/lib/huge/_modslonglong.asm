;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modslonglong
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslonglong_PARM_2
	.globl __modslonglong
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
__modslonglong_sloc0_1_0:
	.ds 8
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
__modslonglong_PARM_2:
	.ds 8
__modslonglong_numerator_65536_1:
	.ds 8
__modslonglong_numeratorneg_65536_2:
	.ds 1
__modslonglong_denominatorneg_65536_2:
	.ds 1
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
;Allocation info for local variables in function '_modslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modslonglong_sloc0_1_0'
;denominator               Allocated with name '__modslonglong_PARM_2'
;numerator                 Allocated with name '__modslonglong_numerator_65536_1'
;numeratorneg              Allocated with name '__modslonglong_numeratorneg_65536_2'
;denominatorneg            Allocated with name '__modslonglong_denominatorneg_65536_2'
;r                         Allocated with name '__modslonglong_r_65536_2'
;------------------------------------------------------------
;	_modslonglong.c:40: _modslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modslonglong
;	-----------------------------------------
__modslonglong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#__modslonglong_numerator_65536_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_modslonglong.c:42: bool numeratorneg = (numerator < 0);
	mov	dptr,#__modslonglong_numerator_65536_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modslonglong_numeratorneg_65536_2
	rlc	a
	clr	a
	rlc	a
	movx	@dptr,a
;	_modslonglong.c:43: bool denominatorneg = (denominator < 0);
	mov	dptr,#__modslonglong_PARM_2
	movx	a,@dptr
	mov	__modslonglong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modslonglong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modslonglong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modslonglong_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__modslonglong_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__modslonglong_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__modslonglong_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__modslonglong_sloc0_1_0 + 7),a
	mov	dptr,#__modslonglong_denominatorneg_65536_2
	rlc	a
	clr	a
	rlc	a
	movx	@dptr,a
;	_modslonglong.c:46: if (numeratorneg)
	mov	dptr,#__modslonglong_numeratorneg_65536_2
	movx	a,@dptr
	jz	00102$
;	_modslonglong.c:47: numerator = -numerator;
	mov	dptr,#__modslonglong_numerator_65536_1
	clr	c
	clr	a
	subb	a,r0
	movx	@dptr,a
	clr	a
	subb	a,r1
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r2
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	_modslonglong.c:48: if (denominatorneg)
	mov	dptr,#__modslonglong_denominatorneg_65536_2
	movx	a,@dptr
	jz	00104$
;	_modslonglong.c:49: denominator = -denominator;
	mov	dptr,#__modslonglong_PARM_2
	clr	c
	clr	a
	subb	a,__modslonglong_sloc0_1_0
	movx	@dptr,a
	clr	a
	subb	a,(__modslonglong_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__modslonglong_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__modslonglong_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__modslonglong_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__modslonglong_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__modslonglong_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__modslonglong_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
00104$:
;	_modslonglong.c:51: r = (unsigned long long)numerator % (unsigned long long)denominator;
	mov	dptr,#__modslonglong_numerator_65536_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	__modslonglong_sloc0_1_0,r0
	mov	(__modslonglong_sloc0_1_0 + 1),r1
	mov	(__modslonglong_sloc0_1_0 + 2),r2
	mov	(__modslonglong_sloc0_1_0 + 3),r3
	mov	(__modslonglong_sloc0_1_0 + 4),r4
	mov	(__modslonglong_sloc0_1_0 + 5),r5
	mov	(__modslonglong_sloc0_1_0 + 6),r6
	mov	(__modslonglong_sloc0_1_0 + 7),r7
	mov	dptr,#__modslonglong_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
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
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modulonglong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_modslonglong.c:53: return (numeratorneg ? -r : r);
	mov	dpl,__modslonglong_sloc0_1_0
	mov	dph,(__modslonglong_sloc0_1_0 + 1)
	mov	b,(__modslonglong_sloc0_1_0 + 2)
	mov	a,(__modslonglong_sloc0_1_0 + 3)
	mov	r4,(__modslonglong_sloc0_1_0 + 4)
	mov	r5,(__modslonglong_sloc0_1_0 + 5)
	mov	r6,(__modslonglong_sloc0_1_0 + 6)
	mov	r7,(__modslonglong_sloc0_1_0 + 7)
	lcall	__modulonglong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#__modslonglong_numeratorneg_65536_2
	movx	a,@dptr
	jz	00107$
	clr	c
	clr	a
	subb	a,r0
	mov	__modslonglong_sloc0_1_0,a
	clr	a
	subb	a,r1
	mov	(__modslonglong_sloc0_1_0 + 1),a
	clr	a
	subb	a,r2
	mov	(__modslonglong_sloc0_1_0 + 2),a
	clr	a
	subb	a,r3
	mov	(__modslonglong_sloc0_1_0 + 3),a
	clr	a
	subb	a,r4
	mov	(__modslonglong_sloc0_1_0 + 4),a
	clr	a
	subb	a,r5
	mov	(__modslonglong_sloc0_1_0 + 5),a
	clr	a
	subb	a,r6
	mov	(__modslonglong_sloc0_1_0 + 6),a
	clr	a
	subb	a,r7
	mov	(__modslonglong_sloc0_1_0 + 7),a
	sjmp	00108$
00107$:
	mov	__modslonglong_sloc0_1_0,r0
	mov	(__modslonglong_sloc0_1_0 + 1),r1
	mov	(__modslonglong_sloc0_1_0 + 2),r2
	mov	(__modslonglong_sloc0_1_0 + 3),r3
	mov	(__modslonglong_sloc0_1_0 + 4),r4
	mov	(__modslonglong_sloc0_1_0 + 5),r5
	mov	(__modslonglong_sloc0_1_0 + 6),r6
	mov	(__modslonglong_sloc0_1_0 + 7),r7
00108$:
	mov	dpl,__modslonglong_sloc0_1_0
	mov	dph,(__modslonglong_sloc0_1_0 + 1)
	mov	b,(__modslonglong_sloc0_1_0 + 2)
	mov	a,(__modslonglong_sloc0_1_0 + 3)
	mov	r4,(__modslonglong_sloc0_1_0 + 4)
	mov	r5,(__modslonglong_sloc0_1_0 + 5)
	mov	r6,(__modslonglong_sloc0_1_0 + 6)
	mov	r7,(__modslonglong_sloc0_1_0 + 7)
;	_modslonglong.c:54: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
