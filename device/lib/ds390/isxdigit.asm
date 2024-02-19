;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isxdigit
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
	.globl _isxdigit
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
_isxdigit_sloc0_1_0:
	.ds 1
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
;Allocation info for local variables in function 'isxdigit'
;------------------------------------------------------------
;c                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	isxdigit.c:34: int isxdigit (int c)
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
_isxdigit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dpl1,dpl
	mov	dph1,dph
;	isxdigit.c:41: return (c >= '0' && c <= '9' || c >= 'a' && c <= 'f' || c >= 'A' && c <= 'F');
	clr	c
	mov	a,dpl1
	subb	a,#0x30
	mov	a,dph1
	xrl	a,#0x80
	subb	a,#0x80
	mov	_isxdigit_sloc0_1_0,c
	jb   _isxdigit_sloc0_1_0,00111$
00130$:
	clr	c
	mov	a,#0x39
	subb	a,dpl1
	clr	a
	xrl	a,#0x80
	mov	b,dph1
	xrl	b,#0x80
	subb	a,b
	mov	_isxdigit_sloc0_1_0,c
	jnb  _isxdigit_sloc0_1_0,00104$
00131$:
00111$:
	clr	c
	mov	a,dpl1
	subb	a,#0x61
	mov	a,dph1
	xrl	a,#0x80
	subb	a,#0x80
	mov	_isxdigit_sloc0_1_0,c
	jb   _isxdigit_sloc0_1_0,00108$
00132$:
	clr	c
	mov	a,#0x66
	subb	a,dpl1
	clr	a
	xrl	a,#0x80
	mov	b,dph1
	xrl	b,#0x80
	subb	a,b
	mov	_isxdigit_sloc0_1_0,c
	jnb  _isxdigit_sloc0_1_0,00104$
00133$:
00108$:
	clr	c
	mov	a,dpl1
	subb	a,#0x41
	mov	a,dph1
	xrl	a,#0x80
	subb	a,#0x80
	mov	_isxdigit_sloc0_1_0,c
	jb   _isxdigit_sloc0_1_0,00103$
00134$:
	clr	c
	mov	a,#0x46
	subb	a,dpl1
	clr	a
	xrl	a,#0x80
	mov	b,dph1
	xrl	b,#0x80
	subb	a,b
	mov	_isxdigit_sloc0_1_0,c
	jnb  _isxdigit_sloc0_1_0,00104$
00135$:
00103$:
;	genAssign: resultIsFar = FALSE
	clr	_isxdigit_sloc0_1_0
	sjmp 00105$
00104$:
;	genAssign: resultIsFar = FALSE
	setb	_isxdigit_sloc0_1_0
00105$:
	mov	c,_isxdigit_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl1,a
	mov	dph1,#0x00
	mov	dpl,dpl1
	mov	dph,dph1
00101$:
;	isxdigit.c:43: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
