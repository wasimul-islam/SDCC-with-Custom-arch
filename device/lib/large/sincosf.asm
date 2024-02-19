;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mmcs51 --model-large
	
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
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_sincosf_PARM_2:
	.ds 1
_sincosf_x_65536_25:
	.ds 4
_sincosf_y_65536_26:
	.ds 4
_sincosf_f_65536_26:
	.ds 4
_sincosf_XN_65536_26:
	.ds 4
_sincosf_sign_65536_26:
	.ds 1
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
;iscos                     Allocated with name '_sincosf_PARM_2'
;x                         Allocated with name '_sincosf_x_65536_25'
;y                         Allocated with name '_sincosf_y_65536_26'
;f                         Allocated with name '_sincosf_f_65536_26'
;r                         Allocated with name '_sincosf_r_65536_26'
;g                         Allocated with name '_sincosf_g_65536_26'
;XN                        Allocated with name '_sincosf_XN_65536_26'
;N                         Allocated with name '_sincosf_N_65536_26'
;sign                      Allocated with name '_sincosf_sign_65536_26'
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
	mov	dptr,#_sincosf_x_65536_25
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	sincosf.c:56: if(iscos)
	mov	dptr,#_sincosf_PARM_2
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00105$
;	sincosf.c:58: y=fabsf(x)+HALF_PI;
	mov	dptr,#_sincosf_x_65536_25
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	lcall	_fabsf
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,#0xdb
	push	acc
	mov	a,#0x0f
	push	acc
	mov	a,#0xc9
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	mov	dptr,#_sincosf_y_65536_26
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	sincosf.c:59: sign=0;
	mov	dptr,#_sincosf_sign_65536_26
	clr	a
	movx	@dptr,a
	sjmp	00106$
00105$:
;	sincosf.c:63: if(x<0.0)
	mov	dptr,#_sincosf_x_65536_25
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	jz	00102$
;	sincosf.c:64: { y=-x; sign=1; }
	mov	dptr,#_sincosf_y_65536_26
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sincosf_sign_65536_26
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00106$
00102$:
;	sincosf.c:66: { y=x; sign=0; }
	mov	dptr,#_sincosf_y_65536_26
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sincosf_sign_65536_26
	clr	a
	movx	@dptr,a
00106$:
;	sincosf.c:69: if(y>YMAX)
	mov	dptr,#_sincosf_y_65536_26
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#0x0c00
	mov	b,#0x49
	mov	a,#0x46
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	jz	00108$
;	sincosf.c:71: errno=ERANGE;
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	sincosf.c:72: return 0.0;
	mov	dptr,#0x0000
	mov	b,a
	ret
00108$:
;	sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#0xf983
	mov	b,#0xa2
	mov	a,#0x3e
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fs2sint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
;	sincosf.c:79: if(N&1) sign=!sign;
	mov	a,r5
	jnb	acc.0,00110$
	mov	dptr,#_sincosf_sign_65536_26
	movx	a,@dptr
	mov	r4,a
	cjne	a,#0x01,00151$
00151$:
	clr	a
	rlc	a
	movx	@dptr,a
00110$:
;	sincosf.c:81: XN=N;
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	___sint2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	dptr,#_sincosf_XN_65536_26
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	sincosf.c:83: if(iscos) XN-=0.5;
	mov	a,r7
	jz	00112$
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sincosf_XN_65536_26
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00112$:
;	sincosf.c:85: y=fabsf(x);
	mov	dptr,#_sincosf_x_65536_25
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_fabsf
;	sincosf.c:86: r=(int)y;
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___fs2sint
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	sincosf.c:87: g=y-r;
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar2
	push	ar3
;	sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	_sincosf_sloc0_1_0,dpl
	mov	(_sincosf_sloc0_1_0 + 1),dph
	mov	(_sincosf_sloc0_1_0 + 2),b
	mov	(_sincosf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sincosf_XN_65536_26
	movx	a,@dptr
	mov	_sincosf_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 3),a
	push	_sincosf_sloc1_1_0
	push	(_sincosf_sloc1_1_0 + 1)
	push	(_sincosf_sloc1_1_0 + 2)
	push	(_sincosf_sloc1_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0x49
	mov	a,#0x40
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincosf_sloc0_1_0
	push	(_sincosf_sloc0_1_0 + 1)
	push	(_sincosf_sloc0_1_0 + 2)
	push	(_sincosf_sloc0_1_0 + 3)
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_sincosf_sloc1_1_0
	push	(_sincosf_sloc1_1_0 + 1)
	push	(_sincosf_sloc1_1_0 + 2)
	push	(_sincosf_sloc1_1_0 + 3)
	mov	dptr,#0xaa22
	mov	b,#0x7d
	mov	a,#0x3a
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sincosf_f_65536_26
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	sincosf.c:90: g=f*f;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	_sincosf_sloc1_1_0,dpl
	mov	(_sincosf_sloc1_1_0 + 1),dph
	mov	(_sincosf_sloc1_1_0 + 2),b
	mov	(_sincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincosf_sloc1_1_0
	push	(_sincosf_sloc1_1_0 + 1)
	push	(_sincosf_sloc1_1_0 + 2)
	push	(_sincosf_sloc1_1_0 + 3)
	mov	dptr,#0xfff3
	mov	b,#0x7f
	mov	a,#0x33
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
	jnz	00153$
	ljmp	00114$
00153$:
;	sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_sincosf_sloc1_1_0
	push	(_sincosf_sloc1_1_0 + 1)
	push	(_sincosf_sloc1_1_0 + 2)
	push	(_sincosf_sloc1_1_0 + 3)
	mov	dptr,#0x9c5b
	mov	b,#0x2e
	mov	a,#0x36
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
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
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincosf_sloc1_1_0
	push	(_sincosf_sloc1_1_0 + 1)
	push	(_sincosf_sloc1_1_0 + 2)
	push	(_sincosf_sloc1_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
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
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincosf_sloc1_1_0
	push	(_sincosf_sloc1_1_0 + 1)
	push	(_sincosf_sloc1_1_0 + 2)
	push	(_sincosf_sloc1_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
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
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincosf_sloc1_1_0
	push	(_sincosf_sloc1_1_0 + 1)
	push	(_sincosf_sloc1_1_0 + 2)
	push	(_sincosf_sloc1_1_0 + 3)
;	sincosf.c:94: f+=f*r;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
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
	mov	dptr,#_sincosf_f_65536_26
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00114$:
;	sincosf.c:96: return (sign?-f:f);
	mov	dptr,#_sincosf_sign_65536_26
	movx	a,@dptr
	jz	00117$
	mov	dptr,#_sincosf_f_65536_26
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	cpl	acc.7
	mov	r7,a
	sjmp	00118$
00117$:
	mov	dptr,#_sincosf_f_65536_26
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
