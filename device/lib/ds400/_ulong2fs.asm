;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulong2fs
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
	.globl ___ulong2fs
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
___ulong2fs_fl_65536_21:
	.ds 4
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a                         Allocated to registers r2 r3 r4 r5 
;exp                       Allocated to registers 
;fl                        Allocated with name '___ulong2fs_fl_65536_21'
;------------------------------------------------------------
;	_ulong2fs.c:84: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
___ulong2fs:
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
;	_ulong2fs.c:89: if (!a)
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jnz  00102$
00152$:
;	_ulong2fs.c:91: return 0.0;
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00113$
00102$:
;	_ulong2fs.c:94: if (a == 0xfffffffful)
	cjne r2,#0xff,00118$
	cjne r3,#0xff,00118$
	cjne r4,#0xff,00118$
	cjne r5,#0xff,00118$
00154$:
;	_ulong2fs.c:96: return 4294967296.0f;
	mov  dptr,#0x0000
	mov	dpx,#0x80
	mov	b,#0x4f
	ljmp	00113$
;	_ulong2fs.c:99: while (a < HIDDEN)
00118$:
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x96
00105$:
	clr	c
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x80
	mov	a,r5
	subb	a,#0x00
	jnc  00121$
00155$:
;	_ulong2fs.c:101: a <<= 1;
	mov	a,r2
	add	a,acc
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
;	_ulong2fs.c:102: exp--;
	dec	r6
;	_ulong2fs.c:105: while (a & NORM)
	sjmp 00105$
00121$:
;	genAssign: resultIsFar = FALSE
00110$:
	mov	a,r5
	jz  00112$
00156$:
;	_ulong2fs.c:108: if (a & 1)
	mov	a,r2
	jnb  acc[0],00109$
00157$:
;	_ulong2fs.c:109: a += 2;
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
00109$:
;	_ulong2fs.c:110: a >>= 1;
	mov	a,r5
	clr	c
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
;	_ulong2fs.c:111: exp++;
	inc	r6
	sjmp 00110$
00112$:
;	_ulong2fs.c:114: a &= ~HIDDEN ;
	anl	ar4,#0x7f
;	_ulong2fs.c:116: fl.l = PACK(0,(unsigned long)exp, a);
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	ar0,r6
	mov	a,r7
	anl	a,#0x01
	mov	c,acc[0]
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	clr  a
	mov  r6,a
	mov  r7,a
	mov  a,r6
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	dptr,#___ulong2fs_fl_65536_21
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
;	_ulong2fs.c:118: return (fl.f);
	mov	dptr,#___ulong2fs_fl_65536_21
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00113$:
;	_ulong2fs.c:119: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
