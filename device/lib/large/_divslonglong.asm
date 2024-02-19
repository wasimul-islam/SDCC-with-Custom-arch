;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divslonglong
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslonglong_PARM_2
	.globl __divslonglong
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
__divslonglong_sloc0_1_0:
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
__divslonglong_PARM_2:
	.ds 8
__divslonglong_numerator_65536_1:
	.ds 8
__divslonglong_numeratorneg_65536_2:
	.ds 1
__divslonglong_denominatorneg_65536_2:
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
;Allocation info for local variables in function '_divslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divslonglong_sloc0_1_0'
;denominator               Allocated with name '__divslonglong_PARM_2'
;numerator                 Allocated with name '__divslonglong_numerator_65536_1'
;numeratorneg              Allocated with name '__divslonglong_numeratorneg_65536_2'
;denominatorneg            Allocated with name '__divslonglong_denominatorneg_65536_2'
;d                         Allocated with name '__divslonglong_d_65536_2'
;------------------------------------------------------------
;	_divslonglong.c:40: _divslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
__divslonglong:
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
	mov	dptr,#__divslonglong_numerator_65536_1
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
;	_divslonglong.c:42: bool numeratorneg = (numerator < 0);
	mov	dptr,#__divslonglong_numerator_65536_1
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
	mov	dptr,#__divslonglong_numeratorneg_65536_2
	rlc	a
	clr	a
	rlc	a
	movx	@dptr,a
;	_divslonglong.c:43: bool denominatorneg = (denominator < 0);
	mov	dptr,#__divslonglong_PARM_2
	movx	a,@dptr
	mov	__divslonglong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__divslonglong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__divslonglong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__divslonglong_sloc0_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__divslonglong_sloc0_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__divslonglong_sloc0_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__divslonglong_sloc0_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__divslonglong_sloc0_1_0 + 7),a
	mov	dptr,#__divslonglong_denominatorneg_65536_2
	rlc	a
	clr	a
	rlc	a
	movx	@dptr,a
;	_divslonglong.c:46: if (numeratorneg)
	mov	dptr,#__divslonglong_numeratorneg_65536_2
	movx	a,@dptr
	jz	00102$
;	_divslonglong.c:47: numerator = -numerator;
	mov	dptr,#__divslonglong_numerator_65536_1
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
;	_divslonglong.c:48: if (denominatorneg)
	mov	dptr,#__divslonglong_denominatorneg_65536_2
	movx	a,@dptr
	jz	00104$
;	_divslonglong.c:49: denominator = -denominator;
	mov	dptr,#__divslonglong_PARM_2
	clr	c
	clr	a
	subb	a,__divslonglong_sloc0_1_0
	movx	@dptr,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 7)
	inc	dptr
	movx	@dptr,a
00104$:
;	_divslonglong.c:51: d = (unsigned long long)numerator / (unsigned long long)denominator;
	mov	dptr,#__divslonglong_numerator_65536_1
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
	mov	__divslonglong_sloc0_1_0,r0
	mov	(__divslonglong_sloc0_1_0 + 1),r1
	mov	(__divslonglong_sloc0_1_0 + 2),r2
	mov	(__divslonglong_sloc0_1_0 + 3),r3
	mov	(__divslonglong_sloc0_1_0 + 4),r4
	mov	(__divslonglong_sloc0_1_0 + 5),r5
	mov	(__divslonglong_sloc0_1_0 + 6),r6
	mov	(__divslonglong_sloc0_1_0 + 7),r7
	mov	dptr,#__divslonglong_PARM_2
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
	mov	dptr,#__divulonglong_PARM_2
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
;	_divslonglong.c:53: return ((numeratorneg ^ denominatorneg) ? -d : d);
	mov	dpl,__divslonglong_sloc0_1_0
	mov	dph,(__divslonglong_sloc0_1_0 + 1)
	mov	b,(__divslonglong_sloc0_1_0 + 2)
	mov	a,(__divslonglong_sloc0_1_0 + 3)
	mov	r4,(__divslonglong_sloc0_1_0 + 4)
	mov	r5,(__divslonglong_sloc0_1_0 + 5)
	mov	r6,(__divslonglong_sloc0_1_0 + 6)
	mov	r7,(__divslonglong_sloc0_1_0 + 7)
	lcall	__divulonglong
	mov	__divslonglong_sloc0_1_0,dpl
	mov	(__divslonglong_sloc0_1_0 + 1),dph
	mov	(__divslonglong_sloc0_1_0 + 2),b
	mov	(__divslonglong_sloc0_1_0 + 3),a
	mov	(__divslonglong_sloc0_1_0 + 4),r4
	mov	(__divslonglong_sloc0_1_0 + 5),r5
	mov	(__divslonglong_sloc0_1_0 + 6),r6
	mov	(__divslonglong_sloc0_1_0 + 7),r7
	mov	dptr,#__divslonglong_denominatorneg_65536_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divslonglong_numeratorneg_65536_2
	movx	a,@dptr
	xrl	a,r7
	jz	00107$
	clr	c
	clr	a
	subb	a,__divslonglong_sloc0_1_0
	mov	r0,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 1)
	mov	r1,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 2)
	mov	r2,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 3)
	mov	r3,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 4)
	mov	r4,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 5)
	mov	r5,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 6)
	mov	r6,a
	clr	a
	subb	a,(__divslonglong_sloc0_1_0 + 7)
	mov	r7,a
	sjmp	00108$
00107$:
	mov	r0,__divslonglong_sloc0_1_0
	mov	r1,(__divslonglong_sloc0_1_0 + 1)
	mov	r2,(__divslonglong_sloc0_1_0 + 2)
	mov	r3,(__divslonglong_sloc0_1_0 + 3)
	mov	r4,(__divslonglong_sloc0_1_0 + 4)
	mov	r5,(__divslonglong_sloc0_1_0 + 5)
	mov	r6,(__divslonglong_sloc0_1_0 + 6)
	mov	r7,(__divslonglong_sloc0_1_0 + 7)
00108$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
;	_divslonglong.c:54: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
