;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2ulong
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
___fs2ulong_fl1_65536_21:
	.ds 4
___fs2ulong_sloc0_1_0:
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
;Allocation info for local variables in function '__fs2ulong'
;------------------------------------------------------------
;a1                        Allocated to registers r2 r3 r4 r5 
;fl1                       Allocated with name '___fs2ulong_fl1_65536_21'
;exp                       Allocated to registers r2 r3 
;l                         Allocated to registers r6 r7 r4 r5 
;sloc0                     Allocated with name '___fs2ulong_sloc0_1_0'
;------------------------------------------------------------
;	_fs2ulong.c:104: __fs2ulong (float a1)
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
___fs2ulong:
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
;	_fs2ulong.c:110: fl1.f = a1;
	mov	dptr,#___fs2ulong_fl1_65536_21
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
;	_fs2ulong.c:112: if (!fl1.l || SIGN(fl1.l))
	mov	dptr,#___fs2ulong_fl1_65536_21
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
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jz  00101$
00126$:
	mov	dptr,#___fs2ulong_fl1_65536_21
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
	mov  r5,a
	rl	a
	anl	a,#0x01
	mov  r2,a
	jz  00102$
00127$:
00101$:
;	_fs2ulong.c:113: return (0);
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00109$
00102$:
;	_fs2ulong.c:115: exp = EXP (fl1.l) - EXCESS - 24;
	mov	dptr,#___fs2ulong_fl1_65536_21
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
	mov	ar2,r4
	mov	a,r5
	mov	c,acc[7]
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	clr  a
	mov  r4,a
	mov  r5,a
	mov  r3,a
	mov  a,r2
	add	a,#0x6a
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
;	genAssign: resultIsFar = TRUE
;	_fs2ulong.c:116: l = MANT (fl1.l);
	mov	dptr,#___fs2ulong_fl1_65536_21
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov	r7,a
	mov	r7,#0x00
	mov	dptr,#___fs2ulong_sloc0_1_0
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_fs2ulong.c:118: if (exp > 8)
	clr	c
	mov	a,#0x08
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc  00105$
00128$:
;	_fs2ulong.c:119: return 0xfffffffful;
	mov	dptr,#0xffffff
	mov	b,#0xff
	sjmp 00109$
00105$:
;	_fs2ulong.c:121: if (exp < 0)
	mov	a,r3
	jnb  acc[7],00107$
00129$:
;	_fs2ulong.c:122: l >>= -exp;
	mov	ar0,r2
	clr	c
	clr	a
	subb	a,r0
	mov	r0,a
	mov	b,r0
	inc	b
	mov	dptr,#___fs2ulong_sloc0_1_0
	movx	a,@dptr
	mov     r0,a
	inc	dptr
	movx	a,@dptr
	mov     r1,a
	inc	dptr
	movx	a,@dptr
	mov     r4,a
	inc	dptr
	movx	a,@dptr
	mov     r5,a
	sjmp	00131$
00130$:
	clr	c
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
00131$:
	djnz	b,00130$
;	genAssign: resultIsFar = TRUE
	mov	ar6,r0
	mov	ar7,r1
	sjmp 00108$
00107$:
;	_fs2ulong.c:124: l <<= exp;
	mov	b,r2
	inc	b
	mov	dptr,#___fs2ulong_sloc0_1_0
	movx	a,@dptr
	mov     r2,a
	inc	dptr
	movx	a,@dptr
	mov     r3,a
	inc	dptr
	movx	a,@dptr
	mov     r0,a
	inc	dptr
	movx	a,@dptr
	mov     r1,a
	sjmp	00133$
00132$:
	mov	a,r2
	add	a,acc
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r0
	rlc	a
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
00133$:
	djnz	b,00132$
;	genAssign: resultIsFar = TRUE
	mov	ar6,r2
	mov	ar7,r3
	mov	ar4,r0
	mov	ar5,r1
00108$:
;	_fs2ulong.c:126: return l;
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r4
	mov	b,r5
00109$:
;	_fs2ulong.c:127: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
