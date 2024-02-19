;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isspace
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
	.globl _isspace
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
_isspace_sloc0_1_0:
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
;Allocation info for local variables in function 'isspace'
;------------------------------------------------------------
;c                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	isspace.c:39: int isspace (int c)
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
_isspace:
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
;	isspace.c:46: return (c == ' ' || c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r');
	mov	a,dpl1
	cjne	a,#0x20,00142$
	mov	a,dph1
	cjne	a,#0x00,00142$
	sjmp 00104$
00142$:
	mov	a,dpl1
	cjne	a,#0x09,00143$
	mov	a,dph1
	cjne	a,#0x00,00143$
	sjmp 00104$
00143$:
	mov	a,dpl1
	cjne	a,#0x0a,00144$
	mov	a,dph1
	cjne	a,#0x00,00144$
	sjmp 00104$
00144$:
	mov	a,dpl1
	cjne	a,#0x0b,00145$
	mov	a,dph1
	cjne	a,#0x00,00145$
	sjmp 00104$
00145$:
	mov	a,dpl1
	cjne	a,#0x0c,00146$
	mov	a,dph1
	cjne	a,#0x00,00146$
	sjmp 00104$
00146$:
	mov	a,dpl1
	cjne	a,#0x0d,00147$
	mov	a,dph1
	cjne	a,#0x00,00147$
	sjmp 00104$
00147$:
;	genAssign: resultIsFar = FALSE
	clr	_isspace_sloc0_1_0
	sjmp 00105$
00104$:
;	genAssign: resultIsFar = FALSE
	setb	_isspace_sloc0_1_0
00105$:
	mov	c,_isspace_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl1,a
	mov	dph1,#0x00
	mov	dpl,dpl1
	mov	dph,dph1
00101$:
;	isspace.c:48: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
