;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modslonglong
	.optsdcc -mmcs51 --model-medium
	
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
__modslonglong_PARM_2:
	.ds 8
__modslonglong_numerator_65536_1:
	.ds 8
__modslonglong_numeratorneg_65536_2:
	.ds 1
__modslonglong_denominatorneg_65536_2:
	.ds 1
__modslonglong_r_65536_2:
	.ds 8
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
;Allocation info for local variables in function '_modslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modslonglong_sloc0_1_0'
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
	mov	r0,#__modslonglong_numerator_65536_1
	pop	acc
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	_modslonglong.c:42: bool numeratorneg = (numerator < 0);
	mov	r0,#__modslonglong_numerator_65536_1
	mov	r1,#__modslonglong_numeratorneg_65536_2
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	movx	a,@r0
	rlc	a
	clr	a
	rlc	a
	movx	@r1,a
;	_modslonglong.c:43: bool denominatorneg = (denominator < 0);
	mov	r0,#__modslonglong_PARM_2
	mov	r1,#__modslonglong_denominatorneg_65536_2
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	movx	a,@r0
	rlc	a
	clr	a
	rlc	a
	movx	@r1,a
;	_modslonglong.c:46: if (numeratorneg)
	mov	r0,#__modslonglong_numeratorneg_65536_2
	movx	a,@r0
	jz	00102$
;	_modslonglong.c:47: numerator = -numerator;
	mov	r0,#__modslonglong_numerator_65536_1
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
00102$:
;	_modslonglong.c:48: if (denominatorneg)
	mov	r0,#__modslonglong_denominatorneg_65536_2
	movx	a,@r0
	jz	00104$
;	_modslonglong.c:49: denominator = -denominator;
	mov	r0,#__modslonglong_PARM_2
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
00104$:
;	_modslonglong.c:51: r = (unsigned long long)numerator % (unsigned long long)denominator;
	mov	r0,#__modslonglong_numerator_65536_1
	movx	a,@r0
	mov	__modslonglong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 3),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 4),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 5),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 6),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 7),a
	mov	r0,#__modslonglong_PARM_2
	mov	r1,#__modulonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,__modslonglong_sloc0_1_0
	mov	dph,(__modslonglong_sloc0_1_0 + 1)
	mov	b,(__modslonglong_sloc0_1_0 + 2)
	mov	a,(__modslonglong_sloc0_1_0 + 3)
	mov	r4,(__modslonglong_sloc0_1_0 + 4)
	mov	r5,(__modslonglong_sloc0_1_0 + 5)
	mov	r6,(__modslonglong_sloc0_1_0 + 6)
	mov	r7,(__modslonglong_sloc0_1_0 + 7)
	lcall	__modulonglong
	mov	r0,#__modslonglong_r_65536_2
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	_modslonglong.c:53: return (numeratorneg ? -r : r);
	mov	r0,#__modslonglong_numeratorneg_65536_2
	movx	a,@r0
	jz	00107$
	mov	r0,#__modslonglong_r_65536_2
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	__modslonglong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslonglong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslonglong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslonglong_sloc0_1_0 + 3),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslonglong_sloc0_1_0 + 4),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslonglong_sloc0_1_0 + 5),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslonglong_sloc0_1_0 + 6),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslonglong_sloc0_1_0 + 7),a
	sjmp	00108$
00107$:
	mov	r0,#__modslonglong_r_65536_2
	movx	a,@r0
	mov	__modslonglong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 3),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 4),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 5),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 6),a
	inc	r0
	movx	a,@r0
	mov	(__modslonglong_sloc0_1_0 + 7),a
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
