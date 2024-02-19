;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divuint
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
	.globl __divuint_PARM_2
	.globl __divuint
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
__divuint_PARM_2:
	.ds 2
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
;Allocation info for local variables in function '_divuint'
;------------------------------------------------------------
;y                         Allocated with name '__divuint_PARM_2'
;x                         Allocated to registers r2 r3 
;reste                     Allocated to registers r4 r5 
;count                     Allocated to registers 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	_divuint.c:161: _divuint (unsigned int x, unsigned int y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
__divuint:
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
;	_divuint.c:163: unsigned int reste = 0;
;	genAssign: resultIsFar = TRUE
	mov	r4,#0x00
	mov	r5,#0x00
;	_divuint.c:167: do
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x10
00105$:
;	_divuint.c:170: c = MSB_SET(x);
	mov	a,r3
	rl	a
	anl	a,#0x01
	mov	r7,a
;	_divuint.c:171: x <<= 1;
	mov	ar0,r2
	mov	a,r3
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	ar2,r0
	mov	ar3,r1
;	_divuint.c:172: reste <<= 1;
	mov	ar0,r4
	mov	a,r5
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	ar4,r0
	mov	ar5,r1
;	_divuint.c:173: if (c)
	mov	a,r7
	jz  00102$
00127$:
;	_divuint.c:174: reste |= 1;
	orl	ar4,#0x01
00102$:
;	_divuint.c:176: if (reste >= y)
	mov	dptr,#__divuint_PARM_2
	clr	c
	mov	a,r4
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r5
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00106$
00128$:
;	_divuint.c:178: reste -= y;
	mov	dptr,#__divuint_PARM_2
	clr	c
	movx	a,@dptr
	mov	b,a
	mov	a,r4
	subb	a,b
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	a,r5
	subb	a,b
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	ar4,r7
	mov	ar5,r0
;	_divuint.c:180: x |= 1;
	orl	ar2,#0x01
00106$:
;	_divuint.c:183: while (--count);
	dec	r6
	mov	a,r6
	jnz  00105$
00129$:
;	_divuint.c:184: return x;
	mov	dpl,r2
	mov	dph,r3
00108$:
;	_divuint.c:185: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
