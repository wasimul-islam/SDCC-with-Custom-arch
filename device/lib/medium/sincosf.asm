;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _fabsf
	.globl _sincosf_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_sincosf_sloc0_1_0:
	.ds 4
_sincosf_sloc1_1_0:
	.ds 4
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
_sincosf_PARM_2:
	.ds 1
_sincosf_x_65536_25:
	.ds 4
_sincosf_f_65536_26:
	.ds 4
_sincosf_g_65536_26:
	.ds 4
_sincosf_XN_65536_26:
	.ds 4
_sincosf_sign_65536_26:
	.ds 1
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
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincosf_sloc0_1_0'
;sloc1                     Allocated with name '_sincosf_sloc1_1_0'
;------------------------------------------------------------
;	sincosf.c:50: float sincosf(float x, bool iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
_sincosf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#_sincosf_x_65536_25
	mov	a,r7
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
;	sincosf.c:56: if(iscos)
	mov	r0,#_sincosf_PARM_2
	movx	a,@r0
	jz	00105$
;	sincosf.c:58: y=fabsf(x)+HALF_PI;
	mov	r0,#_sincosf_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0xdb
	push	acc
	mov	a,#0x0f
	push	acc
	mov	a,#0xc9
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:59: sign=0;
	mov	r0,#_sincosf_sign_65536_26
	clr	a
	movx	@r0,a
	sjmp	00106$
00105$:
;	sincosf.c:63: if(x<0.0)
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,#_sincosf_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00102$
;	sincosf.c:64: { y=-x; sign=1; }
	mov	r0,#_sincosf_x_65536_25
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	cpl	acc.7
	mov	r7,a
	mov	r0,#_sincosf_sign_65536_26
	mov	a,#0x01
	movx	@r0,a
	sjmp	00106$
00102$:
;	sincosf.c:66: { y=x; sign=0; }
	mov	r0,#_sincosf_x_65536_25
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_sincosf_sign_65536_26
	clr	a
	movx	@r0,a
00106$:
;	sincosf.c:69: if(y>YMAX)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0c00
	mov	b,#0x49
	mov	a,#0x46
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00108$
;	sincosf.c:71: errno=ERANGE;
	mov	r0,#_errno
	mov	a,#0x22
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	sincosf.c:72: return 0.0;
	mov	dptr,#0x0000
	mov	b,a
	ret
00108$:
;	sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xf983
	mov	b,#0xa2
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
;	sincosf.c:79: if(N&1) sign=!sign;
	mov	a,r6
	jnb	acc.0,00110$
	mov	r0,#_sincosf_sign_65536_26
	movx	a,@r0
	cjne	a,#0x01,00158$
00158$:
	clr	a
	rlc	a
	movx	@r0,a
00110$:
;	sincosf.c:81: XN=N;
	mov	dpl,r6
	mov	dph,r7
	lcall	___sint2fs
	mov	r0,#_sincosf_XN_65536_26
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	sincosf.c:83: if(iscos) XN-=0.5;
	mov	r0,#_sincosf_PARM_2
	movx	a,@r0
	jz	00112$
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3f
	push	acc
	mov	r0,#_sincosf_XN_65536_26
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fssub
	mov	r0,#_sincosf_XN_65536_26
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00112$:
;	sincosf.c:85: y=fabsf(x);
	mov	r0,#_sincosf_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_fabsf
;	sincosf.c:86: r=(int)y;
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___fs2sint
	lcall	___sint2fs
	mov	_sincosf_sloc0_1_0,dpl
	mov	(_sincosf_sloc0_1_0 + 1),dph
	mov	(_sincosf_sloc0_1_0 + 2),b
	mov	(_sincosf_sloc0_1_0 + 3),a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	sincosf.c:87: g=y-r;
	push	_sincosf_sloc0_1_0
	push	(_sincosf_sloc0_1_0 + 1)
	push	(_sincosf_sloc0_1_0 + 2)
	push	(_sincosf_sloc0_1_0 + 3)
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	___fssub
	mov	_sincosf_sloc1_1_0,dpl
	mov	(_sincosf_sloc1_1_0 + 1),dph
	mov	(_sincosf_sloc1_1_0 + 2),b
	mov	(_sincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	mov	r0,#_sincosf_XN_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x49
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_sincosf_sloc0_1_0
	mov	dph,(_sincosf_sloc0_1_0 + 1)
	mov	b,(_sincosf_sloc0_1_0 + 2)
	mov	a,(_sincosf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincosf_sloc1_1_0
	push	(_sincosf_sloc1_1_0 + 1)
	push	(_sincosf_sloc1_1_0 + 2)
	push	(_sincosf_sloc1_1_0 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	_sincosf_sloc1_1_0,dpl
	mov	(_sincosf_sloc1_1_0 + 1),dph
	mov	(_sincosf_sloc1_1_0 + 2),b
	mov	(_sincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_sincosf_XN_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0xaa22
	mov	b,#0x7d
	mov	a,#0x3a
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_sincosf_sloc1_1_0
	mov	dph,(_sincosf_sloc1_1_0 + 1)
	mov	b,(_sincosf_sloc1_1_0 + 2)
	mov	a,(_sincosf_sloc1_1_0 + 3)
	lcall	___fssub
	mov	r0,#_sincosf_f_65536_26
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:90: g=f*f;
	mov	r0,#_sincosf_f_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	r0,#_sincosf_f_65536_26
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fsmul
	mov	r0,#_sincosf_g_65536_26
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	mov	r0,#_sincosf_g_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0xfff3
	mov	b,#0x7f
	mov	a,#0x33
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jnz	00160$
	ljmp	00114$
00160$:
;	sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	mov	r0,#_sincosf_g_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0x9c5b
	mov	b,#0x2e
	mov	a,#0x36
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x22
	push	acc
	mov	a,#0xb2
	push	acc
	mov	a,#0x4f
	push	acc
	mov	a,#0xb9
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_sincosf_g_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x3e
	push	acc
	mov	a,#0x87
	push	acc
	mov	a,#0x08
	push	acc
	mov	a,#0x3c
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_sincosf_g_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xa4
	push	acc
	mov	a,#0xaa
	push	acc
	mov	a,#0x2a
	push	acc
	mov	a,#0xbe
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_sincosf_g_65536_26
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:94: f+=f*r;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	r0,#_sincosf_f_65536_26
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	r0,#_sincosf_f_65536_26
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fsadd
	mov	r0,#_sincosf_f_65536_26
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00114$:
;	sincosf.c:96: return (sign?-f:f);
	mov	r0,#_sincosf_sign_65536_26
	movx	a,@r0
	jz	00117$
	mov	r0,#_sincosf_f_65536_26
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	cpl	acc.7
	mov	r7,a
	sjmp	00118$
00117$:
	mov	r0,#_sincosf_f_65536_26
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
00118$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	sincosf.c:97: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
