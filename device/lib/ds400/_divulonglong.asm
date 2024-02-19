;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mds400 --model-flat24
	
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
	.globl __divulonglong_PARM_2
	.globl __divulonglong
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
	.area REG_BANK_3	(REL,OVR,DATA)
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
;count                     Allocated to registers 
;c                         Allocated with name '__divulonglong_c_65536_2'
;------------------------------------------------------------
;	_divulonglong.c:43: _divulonglong (unsigned long long x, unsigned long long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
__divulonglong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dps, #1
	mov	dptr, #__divulonglong_x_65536_1
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
;	_divulonglong.c:45: unsigned long long reste = 0L;
;	genAssign: resultIsFar = TRUE
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
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x40
00105$:
;	_divulonglong.c:52: c = MSB_SET(x);
	push	ar2
	mov	dptr,#__divulonglong_x_65536_1
	mov	dps, #1
	mov	dptr, #__divulonglong_c_65536_2
	dec	dps
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
	mov	dps,#1
	movx	@dptr,a
	mov	dps,#0
;	_divulonglong.c:53: x <<= 1;
	mov	dptr,#__divulonglong_x_65536_1
	movx	a,@dptr
	add	a,acc
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
	inc	dptr
	movx	a,@dptr
	rlc	a
	mov	r3,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divulonglong_x_65536_1
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
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_divulonglong.c:54: reste <<= 1;
	mov	dptr,#__divulonglong_reste_65536_2
	movx	a,@dptr
	add	a,acc
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	rlc	a
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
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divulonglong_reste_65536_2
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
;	_divulonglong.c:55: if (c)
	pop	ar2
	mov	dptr,#__divulonglong_c_65536_2
	movx	a,@dptr
	jz  00102$
00127$:
;	_divulonglong.c:56: reste |= 1L;
	mov	dptr,#__divulonglong_reste_65536_2
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
00102$:
;	_divulonglong.c:58: if (reste >= y)
	mov	dptr,#__divulonglong_PARM_2
	mov	dps, #1
	mov	dptr, #__divulonglong_reste_65536_2
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
	jnc	00128$
	ljmp	00106$
00128$:
;	_divulonglong.c:60: reste -= y;
	push	ar2
	mov	dptr,#__divulonglong_PARM_2
	mov	dps, #1
	mov	dptr, #__divulonglong_reste_65536_2
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
	mov	dptr,#__divulonglong_reste_65536_2
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
;	_divulonglong.c:62: x |= 1L;
	mov	dptr,#__divulonglong_x_65536_1
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
;	_divulonglong.c:66: return x;
	pop	ar2
;	_divulonglong.c:62: x |= 1L;
00106$:
;	_divulonglong.c:65: while (--count);
	dec	r2
	mov	a,r2
	jz	00129$
	ljmp	00105$
00129$:
;	_divulonglong.c:66: return x;
	mov     dps, #1
	mov     dptr, #__divulonglong_x_65536_1
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
00108$:
;	_divulonglong.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
