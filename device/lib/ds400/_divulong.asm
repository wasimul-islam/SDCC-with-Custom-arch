;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulong
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
	.globl __divulong_PARM_2
	.globl __divulong
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
__divulong_PARM_2:
	.ds 4
__divulong_reste_65536_2:
	.ds 4
__divulong_c_65536_2:
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
;Allocation info for local variables in function '_divulong'
;------------------------------------------------------------
;y                         Allocated with name '__divulong_PARM_2'
;x                         Allocated to registers r2 r3 r4 r5 
;reste                     Allocated with name '__divulong_reste_65536_2'
;count                     Allocated to registers 
;c                         Allocated with name '__divulong_c_65536_2'
;------------------------------------------------------------
;	_divulong.c:337: _divulong (unsigned long x, unsigned long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
__divulong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	_divulong.c:339: unsigned long reste = 0L;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divulong_reste_65536_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_divulong.c:343: do
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x20
00105$:
;	_divulong.c:346: c = MSB_SET(x);
	push	ar6
	mov	dptr,#__divulong_c_65536_2
	mov	a,r5
	rl	a
	anl	a,#0x01
	movx	@dptr,a
;	_divulong.c:347: x <<= 1;
	mov	a,r2
	add	a,acc
	mov	r0,a
	mov	a,r3
	rlc	a
	mov	r1,a
	mov	a,r4
	rlc	a
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	ar2,r0
	mov	ar3,r1
	mov	ar4,r6
	mov	ar5,r7
;	_divulong.c:348: reste <<= 1;
	mov	dptr,#__divulong_reste_65536_2
	movx	a,@dptr
	add	a,acc
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
	mov	dptr,#__divulong_reste_65536_2
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
;	_divulong.c:349: if (c)
	pop	ar6
	mov	dptr,#__divulong_c_65536_2
	movx	a,@dptr
	jz  00102$
00127$:
;	_divulong.c:350: reste |= 1L;
	mov	dptr,#__divulong_reste_65536_2
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
00102$:
;	_divulong.c:352: if (reste >= y)
	mov	dptr,#__divulong_PARM_2
	mov	dps, #1
	mov	dptr, #__divulong_reste_65536_2
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
	jc   00106$
00128$:
;	_divulong.c:354: reste -= y;
	push	ar6
	mov	dptr,#__divulong_PARM_2
	mov	dps, #1
	mov	dptr, #__divulong_reste_65536_2
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
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
	mov	r6,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divulong_reste_65536_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_divulong.c:356: x |= 1L;
	orl	ar2,#0x01
;	_divulong.c:360: return x;
	pop	ar6
;	_divulong.c:356: x |= 1L;
00106$:
;	_divulong.c:359: while (--count);
	dec	r6
	mov	a,r6
	jz	00129$
	ljmp	00105$
00129$:
;	_divulong.c:360: return x;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00108$:
;	_divulong.c:361: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
