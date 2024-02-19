;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atanf
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
	.globl _fabsf
	.globl _atanf
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
;Allocation info for local variables in function 'atanf'
;------------------------------------------------------------
;x                         Allocated to stack - _bp +1
;f                         Allocated to stack - _bp +9
;r                         Allocated to registers r2 r3 r4 r5 
;g                         Allocated to registers r2 r3 r4 r5 
;n                         Allocated to stack - _bp +13
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	atanf.c:55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
_atanf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bpx
	push	_bpx+1
	mov	_bpx,sp
	mov	_bpx+1,esp
	anl	_bpx+1,#3
	mov	a,sp
	add	a,#0x0e
	mov	sp,a
	mov	a,esp
	anl	a,#3
	addc	a,#0x00
	mov	esp,a
	mov	dpx1,#0x40
	mov	dph1,_bpx+1
	mov	dpl1,_bpx
	mov	dps,#1
	inc	dptr
	mov	dps, #1
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	atanf.c:58: int n=0;
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xf3
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	atanf.c:61: f=fabsf(x);
	mov	dpx1,#0x40
	mov	dph1,_bpx+1
	mov	dpl1,_bpx
	mov	dps,#1
	inc	dptr
	mov	dps, #1
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_fabsf
	mov	r0,dpl
	mov	r1,dph
	mov	r6,dpx
	mov	r7,b
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	atanf.c:62: if(f>1.0)
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fslt_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov  dptr,#0x0000
	mov	dpx,#0x80
	mov	b,#0x3f
	lcall	___fslt
	mov	a,dpl
	jz  00102$
00139$:
;	atanf.c:64: f=1.0/f;
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsdiv_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov  dptr,#0x0000
	mov	dpx,#0x80
	mov	b,#0x3f
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
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
;	atanf.c:65: n=2;
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xf3
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	atanf.c:84: return r;
;	atanf.c:65: n=2;
00102$:
;	atanf.c:67: if(f>K1)
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fslt_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#0x8930a3
	mov	b,#0x3e
	lcall	___fslt
	mov	a,dpl
	jnz	00140$
	ljmp	00104$
00140$:
;	atanf.c:69: f=((K2*f-1.0)+f)/(K3+f);
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#0x3b67af
	mov	b,#0x3f
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3f
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsadd_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xd7
	movx	@dptr,a
	inc	dptr
	mov	a,#0xb3
	movx	@dptr,a
	inc	dptr
	mov	a,#0xdd
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3f
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph1,a
	mov	dpx1,#0x40
	inc	dps
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
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
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
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
;	atanf.c:73: n++;
	mov	a,_bpx
	clr	c
	subb	a,#0xf3
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	atanf.c:84: return r;
;	atanf.c:73: n++;
00104$:
;	atanf.c:75: if(fabsf(f)<EPS) r=f;
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph1,a
	mov	dpx1,#0x40
	inc	dps
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x39
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fslt
	mov	a,dpl
	jz  00106$
00141$:
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	ljmp	00107$
00106$:
;	atanf.c:78: g=f*f;
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph1,a
	mov	dpx1,#0x40
	inc	dps
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
;	atanf.c:79: r=f+P(g,f)/Q(g);
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x508691
	mov	b,#0xbd
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xf6
	movx	@dptr,a
	inc	dptr
	mov	a,#0x10
	movx	@dptr,a
	inc	dptr
	mov	a,#0xf1
	movx	@dptr,a
	inc	dptr
	mov	a,#0xbe
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsmul
	mov	a,_bpx
	clr	c
	subb	a,#0xfb
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph1,a
	mov	dpx1,#0x40
	inc	dps
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xd3
	movx	@dptr,a
	inc	dptr
	mov	a,#0xcc
	movx	@dptr,a
	inc	dptr
	mov	a,#0xb4
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3f
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
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
	mov	a,_bpx
	clr	c
	subb	a,#0xfb
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph1,a
	mov	dpx1,#0x40
	inc	dps
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
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
	mov	a,_bpx
	clr	c
	subb	a,#0xf7
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph1,a
	mov	dpx1,#0x40
	inc	dps
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsadd
;	genAssign: resultIsFar = FALSE
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
00107$:
;	atanf.c:81: if(n>1) r=-r;
	mov	a,_bpx
	clr	c
	subb	a,#0xf3
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
	clr	c
	mov	a,#0x01
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	clr	a
	xrl	a,#0x80
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	xrl	b,#0x80
	subb	a,b
	jnc  00109$
00142$:
	mov	a,r5
	cpl	acc[7]
	mov	r5,a
00109$:
;	atanf.c:82: r+=a[n];
	mov	a,_bpx
	clr	c
	subb	a,#0xf3
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xff
	mov	dph,a
	mov	dpx,#0x40
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov  r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	a,r6
	add	a,#_atanf_a_65536_26
	mov	dpl,a
	mov	a,r7
	addc	a,#(_atanf_a_65536_26 >> 8)
	mov	dph,a
	mov	a,r0
	addc	a,#(_atanf_a_65536_26 >> 16)
	mov	dpx,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r6,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r7,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
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
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
;	atanf.c:83: if(x<0.0) r=-r;
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
	mov	dpx1,#0x40
	mov	dph1,_bpx+1
	mov	dpl1,_bpx
	mov	dps,#1
	inc	dptr
	mov	dps, #1
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fslt
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jz  00111$
00143$:
	mov	a,r5
	cpl	acc[7]
	mov	r5,a
00111$:
;	atanf.c:84: return r;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00112$:
;	atanf.c:85: }
	mov	sp,_bpx
	mov	esp,_bpx+1
	pop	_bpx+1
	pop	_bpx
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_atanf_a_65536_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x92, #0x0a, #0x06, #0x3f	;  5.235988e-01
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0x92, #0x0a, #0x86, #0x3f	;  1.047198e+00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
