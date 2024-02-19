;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isalnum
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
	.globl _isalpha
	.globl _isalnum
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
_isalnum_sloc0_1_0:
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
;Allocation info for local variables in function 'isalnum'
;------------------------------------------------------------
;c                         Allocated to registers r2 r3 
;__1310720001              Allocated to registers 
;__1310720002              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;	isalnum.c:37: int isalnum (int c)
;	-----------------------------------------
;	 function isalnum
;	-----------------------------------------
_isalnum:
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
;	isalnum.c:39: return (isalpha (c) || isdigit (c));
	push	ar2
	push	ar3
	mov	dpl,r2
	mov	dph,r3
	lcall	_isalpha
	pop	ar3
	pop	ar2
	mov	a,dpl
	orl	a,dph
	jnz  00105$
00119$:
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r2,#0x30,00120$
00120$:
	mov	_isalnum_sloc0_1_0,c
	jb   _isalnum_sloc0_1_0,00109$
00121$:
	clr	c
	mov	a,#0x39
	subb	a,r2
	mov	_isalnum_sloc0_1_0,c
	jnb  _isalnum_sloc0_1_0,00105$
00122$:
00109$:
;	isalnum.c:39: return (isalpha (c) || isdigit (c));
;	genAssign: resultIsFar = FALSE
	clr	_isalnum_sloc0_1_0
	sjmp 00106$
00105$:
;	genAssign: resultIsFar = FALSE
	setb	_isalnum_sloc0_1_0
00106$:
	mov	c,_isalnum_sloc0_1_0
	clr	a
	rlc	a
	mov	dpl1,a
	mov	dph1,#0x00
	mov	dpl,dpl1
	mov	dph,dph1
00102$:
;	isalnum.c:40: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
