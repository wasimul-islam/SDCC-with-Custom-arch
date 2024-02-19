;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modulonglong
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
	.globl __modulonglong_PARM_2
	.globl __modulonglong
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
__modulonglong_PARM_2:
	.ds 8
__modulonglong_a_65536_1:
	.ds 8
__modulonglong_count_65536_2:
	.ds 1
__modulonglong_sloc0_1_0:
	.ds 8
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;b                         Allocated with name '__modulonglong_PARM_2'
;a                         Allocated with name '__modulonglong_a_65536_1'
;count                     Allocated with name '__modulonglong_count_65536_2'
;sloc0                     Allocated with name '__modulonglong_sloc0_1_0'
;------------------------------------------------------------
;	_modulonglong.c:44: _modulonglong (unsigned long long a, unsigned long long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
__modulonglong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dps, #1
	mov	dptr, #__modulonglong_a_65536_1
	dec	dps
;	assignResultValue special case for ACC.
	push	acc
	inc	dps
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
	pop	acc
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dps,#0
;	_modulonglong.c:46: unsigned char count = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modulonglong_count_65536_2
	clr	a
	movx	@dptr,a
;	_modulonglong.c:48: while (!MSB_SET(b))
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
00103$:
	mov	dptr,#__modulonglong_PARM_2
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov  r3,a
	jz	00138$
	ljmp	00117$
00138$:
;	_modulonglong.c:50: b <<= 1;
	push	ar2
	mov	dptr,#__modulonglong_PARM_2
	movx	a,@dptr
	add	a,acc
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modulonglong_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
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
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	_modulonglong.c:51: if (b > a)
	mov	dptr,#__modulonglong_a_65536_1
	mov	dps, #1
	mov	dptr, #__modulonglong_PARM_2
	dec	dps
	clr	c
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	pop	ar2
	jnc  00102$
00139$:
;	_modulonglong.c:53: b >>=1;
	mov	dptr,#__modulonglong_PARM_2
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
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov  r1,a
	clr	c
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	a,r7
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
;	genAssign: resultIsFar = TRUE
	mov  r2,a
	mov  dptr,#__modulonglong_PARM_2
	movx @dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
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
;	_modulonglong.c:54: break;
	sjmp 00117$
00102$:
;	_modulonglong.c:56: count++;
	inc	r2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modulonglong_count_65536_2
	mov	a,r2
	movx	@dptr,a
	ljmp	00103$
;	_modulonglong.c:58: do
00117$:
	mov	dptr,#__modulonglong_count_65536_2
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#__modulonglong_sloc0_1_0
	movx	@dptr,a
00108$:
;	_modulonglong.c:60: if (a >= b)
	mov	dptr,#__modulonglong_PARM_2
	mov	dps, #1
	mov	dptr, #__modulonglong_a_65536_1
	dec	dps
	clr	c
	mov	dps,#1
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc	00140$
	ljmp	00107$
00140$:
;	_modulonglong.c:61: a -= b;
	mov	dptr,#__modulonglong_PARM_2
	mov	dps, #1
	mov	dptr, #__modulonglong_a_65536_1
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r5,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r6,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r7,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r0,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r1,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modulonglong_a_65536_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
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
	inc	dptr
	mov	a,r2
	movx	@dptr,a
00107$:
;	_modulonglong.c:62: b >>= 1;
	mov	dptr,#__modulonglong_PARM_2
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
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov  r1,a
	clr	c
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	a,r7
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
;	genAssign: resultIsFar = TRUE
	mov  r2,a
	mov  dptr,#__modulonglong_PARM_2
	movx @dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
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
;	_modulonglong.c:64: while (count--);
	mov	dptr,#__modulonglong_sloc0_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#__modulonglong_sloc0_1_0
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	mov	a,r2
	jz	00141$
	ljmp	00108$
00141$:
;	_modulonglong.c:66: return a;
	mov     dps, #1
	mov     dptr, #__modulonglong_a_65536_1
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
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dps,#0
	pop	acc
00111$:
;	_modulonglong.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
