;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2slong
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
	.globl ___fs2ulong
	.globl ___fs2slong
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
;Allocation info for local variables in function '__fs2slong'
;------------------------------------------------------------
;f                         Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	_fs2slong.c:108: signed long __fs2slong (float f)
;	-----------------------------------------
;	 function __fs2slong
;	-----------------------------------------
___fs2slong:
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
;	_fs2slong.c:111: if (!f)
	mov	b,r2
	mov	a,r3
	orl	b,a
	mov	a,r4
	orl	b,a
	mov	a,r5
	anl	a,#0x7F
	orl	a,b
	jnz  00102$
00116$:
;	_fs2slong.c:112: return 0;
	mov  dptr,#0x0000
	mov	b,#0x00
	sjmp 00106$
00102$:
;	_fs2slong.c:114: if (f<0) {
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fslt
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jz  00104$
00117$:
;	_fs2slong.c:115: return -__fs2ulong(-f);
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	a,r5
	cpl	acc[7]
	mov	r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fs2ulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	clr	a
	subb	a,r0
	mov	r0,a
	clr	a
	subb	a,r1
	mov	r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	sjmp 00106$
00104$:
;	_fs2slong.c:117: return __fs2ulong(f);
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fs2ulong
00106$:
;	_fs2slong.c:119: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
