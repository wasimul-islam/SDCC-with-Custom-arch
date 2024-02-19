;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong_PARM_2
	.globl __divulonglong
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
	.area	OSEG    (OVR,DATA)
__divulonglong_sloc0_1_0:
	.ds 1
__divulonglong_sloc1_1_0:
	.ds 8
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
__divulonglong_PARM_2:
	.ds 8
__divulonglong_x_65536_1:
	.ds 8
__divulonglong_reste_65536_2:
	.ds 8
__divulonglong_c_65536_2:
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
;Allocation info for local variables in function '_divulonglong'
;------------------------------------------------------------
;y                         Allocated with name '__divulonglong_PARM_2'
;x                         Allocated with name '__divulonglong_x_65536_1'
;reste                     Allocated with name '__divulonglong_reste_65536_2'
;count                     Allocated with name '__divulonglong_count_65536_2'
;c                         Allocated with name '__divulonglong_c_65536_2'
;sloc0                     Allocated with name '__divulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__divulonglong_sloc1_1_0'
;------------------------------------------------------------
;	_divulonglong.c:43: _divulonglong (unsigned long long x, unsigned long long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
__divulonglong:
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
	mov	dptr,#__divulonglong_x_65536_1
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
;	_divulonglong.c:45: unsigned long long reste = 0L;
	mov	dptr,#__divulonglong_reste_65536_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_divulonglong.c:49: do
	mov	dptr,#__divulonglong_PARM_2
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
	mov	__divulonglong_sloc0_1_0,#0x40
00105$:
;	_divulonglong.c:52: c = MSB_SET(x);
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#__divulonglong_x_65536_1
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
	mov	dptr,#__divulonglong_c_65536_2
	rl	a
	anl	a,#0x01
	movx	@dptr,a
;	_divulonglong.c:53: x <<= 1;
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	dptr,#__divulonglong_x_65536_1
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
;	_divulonglong.c:54: reste <<= 1;
	mov	dptr,#__divulonglong_reste_65536_2
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
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	dptr,#__divulonglong_reste_65536_2
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
;	_divulonglong.c:55: if (c)
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	pop	ar1
	pop	ar0
	mov	dptr,#__divulonglong_c_65536_2
	movx	a,@dptr
	jz	00102$
;	_divulonglong.c:56: reste |= 1L;
	mov	dptr,#__divulonglong_reste_65536_2
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
00102$:
;	_divulonglong.c:58: if (reste >= y)
	mov	dptr,#__divulonglong_reste_65536_2
	movx	a,@dptr
	mov	__divulonglong_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__divulonglong_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__divulonglong_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__divulonglong_sloc1_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__divulonglong_sloc1_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__divulonglong_sloc1_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__divulonglong_sloc1_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__divulonglong_sloc1_1_0 + 7),a
	clr	c
	mov	a,__divulonglong_sloc1_1_0
	subb	a,r0
	mov	a,(__divulonglong_sloc1_1_0 + 1)
	subb	a,r1
	mov	a,(__divulonglong_sloc1_1_0 + 2)
	subb	a,r2
	mov	a,(__divulonglong_sloc1_1_0 + 3)
	subb	a,r3
	mov	a,(__divulonglong_sloc1_1_0 + 4)
	subb	a,r4
	mov	a,(__divulonglong_sloc1_1_0 + 5)
	subb	a,r5
	mov	a,(__divulonglong_sloc1_1_0 + 6)
	subb	a,r6
	mov	a,(__divulonglong_sloc1_1_0 + 7)
	subb	a,r7
	jc	00106$
;	_divulonglong.c:60: reste -= y;
	mov	dptr,#__divulonglong_reste_65536_2
	mov	a,__divulonglong_sloc1_1_0
	clr	c
	subb	a,r0
	movx	@dptr,a
	mov	a,(__divulonglong_sloc1_1_0 + 1)
	subb	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,(__divulonglong_sloc1_1_0 + 2)
	subb	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(__divulonglong_sloc1_1_0 + 3)
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,(__divulonglong_sloc1_1_0 + 4)
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,(__divulonglong_sloc1_1_0 + 5)
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,(__divulonglong_sloc1_1_0 + 6)
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,(__divulonglong_sloc1_1_0 + 7)
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	_divulonglong.c:62: x |= 1L;
	mov	dptr,#__divulonglong_x_65536_1
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
00106$:
;	_divulonglong.c:65: while (--count);
	dec	__divulonglong_sloc0_1_0
	mov	a,__divulonglong_sloc0_1_0
	jz	00129$
	ljmp	00105$
00129$:
;	_divulonglong.c:66: return x;
	mov	dptr,#__divulonglong_x_65536_1
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
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
;	_divulonglong.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
