;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2schar
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
	.globl ___fs2slong
	.globl ___fs2schar
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
;Allocation info for local variables in function '__fs2schar'
;------------------------------------------------------------
;f                         Allocated to registers r2 r3 r4 r5 
;sl                        Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	_fs2schar.c:87: signed char __fs2schar (float f)
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
___fs2schar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fs2schar.c:89: signed long sl=__fs2slong(f);
	mov     r2,dpl
	mov     r3,dph
	mov     r4,dpx
	mov     r5,b
	mov	b,r5
	lcall	___fs2slong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
;	_fs2schar.c:90: if (sl>=SCHAR_MAX)
	clr	c
	mov	a,r2
	subb	a,#0x7f
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc   00102$
00115$:
;	_fs2schar.c:91: return SCHAR_MAX;
	mov	dpl,#0x7f
	sjmp 00105$
00102$:
;	_fs2schar.c:92: if (sl<=SCHAR_MIN)
	clr	c
	mov	a,#0x80
	subb	a,r2
	mov	a,#0xff
	subb	a,r3
	mov	a,#0xff
	subb	a,r4
	mov  a,#(0xff ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc   00104$
00116$:
;	_fs2schar.c:93: return -SCHAR_MIN;
	mov	dpl,#0x80
;	_fs2schar.c:94: return sl;
;	_fs2schar.c:95: }
	ret
00104$:
	mov     dpl,r2
00105$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
