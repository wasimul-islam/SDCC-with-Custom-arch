;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong_PARM_2
	.globl __divslong
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
__divslong_sloc0_1_0:
	.ds 1
__divslong_sloc1_1_0:
	.ds 4
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
__divslong_PARM_2:
	.ds 4
__divslong_x_65536_1:
	.ds 4
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
;Allocation info for local variables in function '_divslong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divslong_sloc0_1_0'
;sloc1                     Allocated with name '__divslong_sloc1_1_0'
;y                         Allocated with name '__divslong_PARM_2'
;x                         Allocated with name '__divslong_x_65536_1'
;r                         Allocated with name '__divslong_r_65536_2'
;------------------------------------------------------------
;	_divslong.c:265: _divslong (long x, long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divslong
;	-----------------------------------------
__divslong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#__divslong_x_65536_1
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_divslong.c:269: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	mov	dptr,#__divslong_x_65536_1
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
	jnb	acc.7,00106$
	clr	c
	clr	a
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
	clr	a
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	r3,a
	sjmp	00107$
00106$:
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
00107$:
	mov	dptr,#__divslong_PARM_2
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
	rlc	a
	clr	a
	rlc	a
	mov	__divslong_sloc0_1_0,a
	jz	00108$
	clr	c
	clr	a
	subb	a,r4
	mov	__divslong_sloc1_1_0,a
	clr	a
	subb	a,r5
	mov	(__divslong_sloc1_1_0 + 1),a
	clr	a
	subb	a,r6
	mov	(__divslong_sloc1_1_0 + 2),a
	clr	a
	subb	a,r7
	mov	(__divslong_sloc1_1_0 + 3),a
	sjmp	00109$
00108$:
	mov	__divslong_sloc1_1_0,r4
	mov	(__divslong_sloc1_1_0 + 1),r5
	mov	(__divslong_sloc1_1_0 + 2),r6
	mov	(__divslong_sloc1_1_0 + 3),r7
00109$:
	mov	dptr,#__divulong_PARM_2
	mov	a,__divslong_sloc1_1_0
	movx	@dptr,a
	mov	a,(__divslong_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__divslong_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__divslong_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	_divslong.c:270: if ((x < 0) ^ (y < 0))
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__divslong_x_65536_1
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	rlc	a
	clr	a
	rlc	a
	xrl	a,__divslong_sloc0_1_0
	jz	00102$
;	_divslong.c:271: return -r;
	clr	c
	clr	a
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
	clr	a
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	ret
00102$:
;	_divslong.c:273: return r;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	_divslong.c:274: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
