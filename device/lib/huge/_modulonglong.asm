;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulonglong_PARM_2
	.globl __modulonglong
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
__modulonglong_sloc0_1_0:
	.ds 1
__modulonglong_sloc1_1_0:
	.ds 8
__modulonglong_sloc2_1_0:
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
__modulonglong_PARM_2:
	.ds 8
__modulonglong_a_65536_1:
	.ds 8
__modulonglong_count_65536_2:
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;b                         Allocated with name '__modulonglong_PARM_2'
;a                         Allocated with name '__modulonglong_a_65536_1'
;count                     Allocated with name '__modulonglong_count_65536_2'
;sloc0                     Allocated with name '__modulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__modulonglong_sloc1_1_0'
;sloc2                     Allocated with name '__modulonglong_sloc2_1_0'
;------------------------------------------------------------
;	_modulonglong.c:44: _modulonglong (unsigned long long a, unsigned long long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
__modulonglong:
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
	mov	dptr,#__modulonglong_a_65536_1
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
;	_modulonglong.c:46: unsigned char count = 0;
	mov	dptr,#__modulonglong_count_65536_2
	clr	a
	movx	@dptr,a
;	_modulonglong.c:48: while (!MSB_SET(b))
	mov	dptr,#__modulonglong_a_65536_1
	movx	a,@dptr
	mov	__modulonglong_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 7),a
	mov	__modulonglong_sloc0_1_0,#0x00
00103$:
	mov	dptr,#__modulonglong_PARM_2
	movx	a,@dptr
	mov	__modulonglong_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 7),a
	rl	a
	anl	a,#0x01
	mov	r7,a
	jz	00138$
	ljmp	00117$
00138$:
;	_modulonglong.c:50: b <<= 1;
	mov	a,__modulonglong_sloc1_1_0
	add	a,__modulonglong_sloc1_1_0
	mov	r0,a
	mov	a,(__modulonglong_sloc1_1_0 + 1)
	rlc	a
	mov	r1,a
	mov	a,(__modulonglong_sloc1_1_0 + 2)
	rlc	a
	mov	r2,a
	mov	a,(__modulonglong_sloc1_1_0 + 3)
	rlc	a
	mov	r3,a
	mov	a,(__modulonglong_sloc1_1_0 + 4)
	rlc	a
	mov	r4,a
	mov	a,(__modulonglong_sloc1_1_0 + 5)
	rlc	a
	mov	r5,a
	mov	a,(__modulonglong_sloc1_1_0 + 6)
	rlc	a
	mov	r6,a
	mov	a,(__modulonglong_sloc1_1_0 + 7)
	rlc	a
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
;	_modulonglong.c:51: if (b > a)
	mov	dptr,#__modulonglong_PARM_2
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
	clr	c
	mov	a,__modulonglong_sloc2_1_0
	subb	a,r0
	mov	a,(__modulonglong_sloc2_1_0 + 1)
	subb	a,r1
	mov	a,(__modulonglong_sloc2_1_0 + 2)
	subb	a,r2
	mov	a,(__modulonglong_sloc2_1_0 + 3)
	subb	a,r3
	mov	a,(__modulonglong_sloc2_1_0 + 4)
	subb	a,r4
	mov	a,(__modulonglong_sloc2_1_0 + 5)
	subb	a,r5
	mov	a,(__modulonglong_sloc2_1_0 + 6)
	subb	a,r6
	mov	a,(__modulonglong_sloc2_1_0 + 7)
	subb	a,r7
	jnc	00102$
;	_modulonglong.c:53: b >>=1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	dptr,#__modulonglong_PARM_2
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
;	_modulonglong.c:54: break;
	sjmp	00117$
00102$:
;	_modulonglong.c:56: count++;
	inc	__modulonglong_sloc0_1_0
	mov	dptr,#__modulonglong_count_65536_2
	mov	a,__modulonglong_sloc0_1_0
	movx	@dptr,a
	ljmp	00103$
;	_modulonglong.c:58: do
00117$:
	mov	dptr,#__modulonglong_count_65536_2
	movx	a,@dptr
	mov	__modulonglong_sloc0_1_0,a
00108$:
;	_modulonglong.c:60: if (a >= b)
	mov	dptr,#__modulonglong_a_65536_1
	movx	a,@dptr
	mov	__modulonglong_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc2_1_0 + 7),a
	mov	dptr,#__modulonglong_PARM_2
	movx	a,@dptr
	mov	__modulonglong_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(__modulonglong_sloc1_1_0 + 7),a
	clr	c
	mov	a,__modulonglong_sloc2_1_0
	subb	a,__modulonglong_sloc1_1_0
	mov	a,(__modulonglong_sloc2_1_0 + 1)
	subb	a,(__modulonglong_sloc1_1_0 + 1)
	mov	a,(__modulonglong_sloc2_1_0 + 2)
	subb	a,(__modulonglong_sloc1_1_0 + 2)
	mov	a,(__modulonglong_sloc2_1_0 + 3)
	subb	a,(__modulonglong_sloc1_1_0 + 3)
	mov	a,(__modulonglong_sloc2_1_0 + 4)
	subb	a,(__modulonglong_sloc1_1_0 + 4)
	mov	a,(__modulonglong_sloc2_1_0 + 5)
	subb	a,(__modulonglong_sloc1_1_0 + 5)
	mov	a,(__modulonglong_sloc2_1_0 + 6)
	subb	a,(__modulonglong_sloc1_1_0 + 6)
	mov	a,(__modulonglong_sloc2_1_0 + 7)
	subb	a,(__modulonglong_sloc1_1_0 + 7)
	jc	00107$
;	_modulonglong.c:61: a -= b;
	mov	dptr,#__modulonglong_a_65536_1
	mov	a,__modulonglong_sloc2_1_0
	clr	c
	subb	a,__modulonglong_sloc1_1_0
	movx	@dptr,a
	mov	a,(__modulonglong_sloc2_1_0 + 1)
	subb	a,(__modulonglong_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulonglong_sloc2_1_0 + 2)
	subb	a,(__modulonglong_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulonglong_sloc2_1_0 + 3)
	subb	a,(__modulonglong_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulonglong_sloc2_1_0 + 4)
	subb	a,(__modulonglong_sloc1_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulonglong_sloc2_1_0 + 5)
	subb	a,(__modulonglong_sloc1_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulonglong_sloc2_1_0 + 6)
	subb	a,(__modulonglong_sloc1_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modulonglong_sloc2_1_0 + 7)
	subb	a,(__modulonglong_sloc1_1_0 + 7)
	inc	dptr
	movx	@dptr,a
00107$:
;	_modulonglong.c:62: b >>= 1;
	mov	dptr,#__modulonglong_PARM_2
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
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	dptr,#__modulonglong_PARM_2
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
;	_modulonglong.c:64: while (count--);
	mov	r7,__modulonglong_sloc0_1_0
	dec	__modulonglong_sloc0_1_0
	mov	a,r7
	jz	00141$
	ljmp	00108$
00141$:
;	_modulonglong.c:66: return a;
	mov	dptr,#__modulonglong_a_65536_1
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
;	_modulonglong.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
