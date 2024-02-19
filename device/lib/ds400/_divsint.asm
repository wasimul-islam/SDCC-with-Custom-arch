;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divsint
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
	.globl __divsint_PARM_2
	.globl __divsint
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
__divsint_PARM_2:
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
;Allocation info for local variables in function '_divsint'
;------------------------------------------------------------
;r                         Allocated to registers r2 r3 
;y                         Allocated with name '__divsint_PARM_2'
;x                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	_divsint.c:213: _divsint (int x, int y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
__divsint:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_divsint.c:217: r = (unsigned int)(x < 0 ? -x : x) / (unsigned int)(y < 0 ? -y : y);
	mov	a,dph
	rlc	a
	clr	a
	rlc	a
	mov  r4,a
	jz  00106$
00122$:
	clr	c
	clr	a
	subb	a,dpl
	mov	r5,a
	clr	a
	subb	a,dph
	mov	r6,a
	sjmp 00107$
00106$:
;	genAssign: resultIsFar = FALSE
	mov	r5,dpl
	mov	r6,dph
00107$:
	mov	ar2,r5
	mov	ar3,r6
	mov	dptr,#__divsint_PARM_2
	inc	dptr
	movx	a,@dptr
	rlc	a
	clr	a
	rlc	a
	mov  r5,a
	jz  00108$
00123$:
	mov	dptr,#__divsint_PARM_2
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	mov	r7,a
	sjmp 00109$
00108$:
	mov	dptr,#__divsint_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00109$:
	mov	dptr,#__divuint_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
;	genAssign: resultIsFar = FALSE
	mov	dpl,r2
	mov	dph,r3
;	_divsint.c:218: if ((x < 0) ^ (y < 0))
	mov	a,r4
	xrl	a,r5
	jz  00102$
00124$:
;	_divsint.c:219: return -r;
	clr	c
	clr	a
	subb	a,dpl
	mov	dpl1,a
	clr	a
	subb	a,dph
	mov	dph1,a
	mov	dpl,dpl1
	mov	dph,dph1
;	_divsint.c:221: return r;
00102$:
00104$:
;	_divsint.c:222: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
