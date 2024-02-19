;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _expf
	.globl _sincoshf_PARM_2
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
_sincoshf_sloc0_1_0:
	.ds 4
_sincoshf_sloc1_1_0:
	.ds 4
_sincoshf_sloc2_1_0:
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
_sincoshf_PARM_2:
	.ds 1
_sincoshf_x_65536_25:
	.ds 4
_sincoshf_z_65536_26:
	.ds 4
_sincoshf_sign_65536_26:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincoshf_sloc0_1_0'
;sloc1                     Allocated with name '_sincoshf_sloc1_1_0'
;sloc2                     Allocated with name '_sincoshf_sloc2_1_0'
;------------------------------------------------------------
;	sincoshf.c:56: float sincoshf(float x, bool iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
_sincoshf:
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
	mov	r0,#_sincoshf_x_65536_25
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
;	sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,#_sincoshf_x_65536_25
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
	mov	r0,#_sincoshf_x_65536_25
	movx	a,@r0
	mov	r7,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	cpl	acc.7
	mov	r4,a
	mov	r0,#_sincoshf_sign_65536_26
	mov	a,#0x01
	movx	@r0,a
	sjmp	00103$
00102$:
;	sincoshf.c:62: else { y=x;  sign=0; }
	mov	r0,#_sincoshf_x_65536_25
	movx	a,@r0
	mov	r7,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	r0,#_sincoshf_sign_65536_26
	clr	a
	movx	@r0,a
00103$:
;	sincoshf.c:64: if ((y>1.0) || iscosh)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
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
	jnz	00117$
	mov	r0,#_sincoshf_PARM_2
	movx	a,@r0
	jnz	00160$
	ljmp	00118$
00160$:
00117$:
;	sincoshf.c:66: if(y>YBAR)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dptr,#0x0000
	mov	b,#0x10
	mov	a,#0x41
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
	jnz	00161$
	ljmp	00110$
00161$:
;	sincoshf.c:68: w=y-K1;
	clr	a
	push	acc
	mov	a,#0x73
	push	acc
	mov	a,#0x31
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	___fssub
	mov	_sincoshf_sloc0_1_0,dpl
	mov	(_sincoshf_sloc0_1_0 + 1),dph
	mov	(_sincoshf_sloc0_1_0 + 2),b
	mov	(_sincoshf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:69: if (w>WMAX)
	push	_sincoshf_sloc0_1_0
	push	(_sincoshf_sloc0_1_0 + 1)
	push	(_sincoshf_sloc0_1_0 + 2)
	push	(_sincoshf_sloc0_1_0 + 3)
	mov	dptr,#0xbdcf
	mov	b,#0x33
	mov	a,#0x42
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00105$
;	sincoshf.c:71: errno=ERANGE;
	mov	r0,#_errno
	mov	a,#0x22
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	sincoshf.c:72: z=HUGE_VALF;
	mov	_sincoshf_sloc1_1_0,#0xff
	mov	(_sincoshf_sloc1_1_0 + 1),#0xff
	mov	(_sincoshf_sloc1_1_0 + 2),#0x7f
	mov	(_sincoshf_sloc1_1_0 + 3),#0x7f
	ljmp	00111$
00105$:
;	sincoshf.c:76: z=expf(w);
	mov	dpl,_sincoshf_sloc0_1_0
	mov	dph,(_sincoshf_sloc0_1_0 + 1)
	mov	b,(_sincoshf_sloc0_1_0 + 2)
	mov	a,(_sincoshf_sloc0_1_0 + 3)
	lcall	_expf
	mov	_sincoshf_sloc0_1_0,dpl
	mov	(_sincoshf_sloc0_1_0 + 1),dph
	mov	(_sincoshf_sloc0_1_0 + 2),b
	mov	(_sincoshf_sloc0_1_0 + 3),a
;	sincoshf.c:77: z+=K3*z;
	push	_sincoshf_sloc0_1_0
	push	(_sincoshf_sloc0_1_0 + 1)
	push	(_sincoshf_sloc0_1_0 + 2)
	push	(_sincoshf_sloc0_1_0 + 3)
	mov	dptr,#0x0897
	mov	b,#0x68
	mov	a,#0x37
	lcall	___fsmul
	mov	_sincoshf_sloc2_1_0,dpl
	mov	(_sincoshf_sloc2_1_0 + 1),dph
	mov	(_sincoshf_sloc2_1_0 + 2),b
	mov	(_sincoshf_sloc2_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincoshf_sloc2_1_0
	push	(_sincoshf_sloc2_1_0 + 1)
	push	(_sincoshf_sloc2_1_0 + 2)
	push	(_sincoshf_sloc2_1_0 + 3)
	mov	dpl,_sincoshf_sloc0_1_0
	mov	dph,(_sincoshf_sloc0_1_0 + 1)
	mov	b,(_sincoshf_sloc0_1_0 + 2)
	mov	a,(_sincoshf_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	_sincoshf_sloc1_1_0,dpl
	mov	(_sincoshf_sloc1_1_0 + 1),dph
	mov	(_sincoshf_sloc1_1_0 + 2),b
	mov	(_sincoshf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00111$
00110$:
;	sincoshf.c:82: z=expf(y);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	_expf
	mov	r0,#_sincoshf_z_65536_26
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
;	sincoshf.c:83: w=1.0/z;
	mov	r0,#_sincoshf_z_65536_26
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
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fsdiv
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:84: if(!iscosh) w=-w;
	mov	r0,#_sincoshf_PARM_2
	movx	a,@r0
	jnz	00108$
	mov	a,r4
	cpl	acc.7
	mov	r4,a
00108$:
;	sincoshf.c:85: z=(z+w)*0.5;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_sincoshf_z_65536_26
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
	mov	_sincoshf_sloc2_1_0,dpl
	mov	(_sincoshf_sloc2_1_0 + 1),dph
	mov	(_sincoshf_sloc2_1_0 + 2),b
	mov	(_sincoshf_sloc2_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincoshf_sloc2_1_0
	push	(_sincoshf_sloc2_1_0 + 1)
	push	(_sincoshf_sloc2_1_0 + 2)
	push	(_sincoshf_sloc2_1_0 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x3f
	lcall	___fsmul
	mov	_sincoshf_sloc1_1_0,dpl
	mov	(_sincoshf_sloc1_1_0 + 1),dph
	mov	(_sincoshf_sloc1_1_0 + 2),b
	mov	(_sincoshf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00111$:
;	sincoshf.c:87: if(sign) z=-z;
	mov	r0,#_sincoshf_sign_65536_26
	movx	a,@r0
	jnz	00164$
	ljmp	00119$
00164$:
	mov	a,(_sincoshf_sloc1_1_0 + 3)
	cpl	acc.7
	mov	(_sincoshf_sloc1_1_0 + 3),a
	ljmp	00119$
00118$:
;	sincoshf.c:91: if (y<EPS)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00115$
;	sincoshf.c:92: z=x;
	mov	r0,#_sincoshf_x_65536_25
	movx	a,@r0
	mov	_sincoshf_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_sincoshf_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_sincoshf_sloc1_1_0 + 2),a
	inc	r0
	movx	a,@r0
	mov	(_sincoshf_sloc1_1_0 + 3),a
	ljmp	00119$
00115$:
;	sincoshf.c:95: z=x*x;
	mov	r0,#_sincoshf_x_65536_25
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
	mov	r0,#_sincoshf_x_65536_25
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
	mov	_sincoshf_sloc2_1_0,dpl
	mov	(_sincoshf_sloc2_1_0 + 1),dph
	mov	(_sincoshf_sloc2_1_0 + 2),b
	mov	(_sincoshf_sloc2_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:96: z=x+x*z*P(z)/Q(z);
	push	_sincoshf_sloc2_1_0
	push	(_sincoshf_sloc2_1_0 + 1)
	push	(_sincoshf_sloc2_1_0 + 2)
	push	(_sincoshf_sloc2_1_0 + 3)
	mov	r0,#_sincoshf_x_65536_25
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
	mov	_sincoshf_sloc0_1_0,dpl
	mov	(_sincoshf_sloc0_1_0 + 1),dph
	mov	(_sincoshf_sloc0_1_0 + 2),b
	mov	(_sincoshf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincoshf_sloc2_1_0
	push	(_sincoshf_sloc2_1_0 + 1)
	push	(_sincoshf_sloc2_1_0 + 2)
	push	(_sincoshf_sloc2_1_0 + 3)
	mov	dptr,#0xe6ea
	mov	b,#0x42
	mov	a,#0xbe
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xf0
	push	acc
	mov	a,#0x69
	push	acc
	mov	a,#0xe4
	push	acc
	mov	a,#0xc0
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_sincoshf_sloc0_1_0
	mov	dph,(_sincoshf_sloc0_1_0 + 1)
	mov	b,(_sincoshf_sloc0_1_0 + 2)
	mov	a,(_sincoshf_sloc0_1_0 + 3)
	lcall	___fsmul
	mov	_sincoshf_sloc0_1_0,dpl
	mov	(_sincoshf_sloc0_1_0 + 1),dph
	mov	(_sincoshf_sloc0_1_0 + 2),b
	mov	(_sincoshf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x93
	push	acc
	mov	a,#0x4f
	push	acc
	mov	a,#0x2b
	push	acc
	mov	a,#0xc2
	push	acc
	mov	dpl,_sincoshf_sloc2_1_0
	mov	dph,(_sincoshf_sloc2_1_0 + 1)
	mov	b,(_sincoshf_sloc2_1_0 + 2)
	mov	a,(_sincoshf_sloc2_1_0 + 3)
	lcall	___fsadd
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
	mov	dpl,_sincoshf_sloc0_1_0
	mov	dph,(_sincoshf_sloc0_1_0 + 1)
	mov	b,(_sincoshf_sloc0_1_0 + 2)
	mov	a,(_sincoshf_sloc0_1_0 + 3)
	lcall	___fsdiv
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
	mov	r0,#_sincoshf_x_65536_25
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
	mov	_sincoshf_sloc1_1_0,dpl
	mov	(_sincoshf_sloc1_1_0 + 1),dph
	mov	(_sincoshf_sloc1_1_0 + 2),b
	mov	(_sincoshf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00119$:
;	sincoshf.c:99: return z;
	mov	dpl,_sincoshf_sloc1_1_0
	mov	dph,(_sincoshf_sloc1_1_0 + 1)
	mov	b,(_sincoshf_sloc1_1_0 + 2)
	mov	a,(_sincoshf_sloc1_1_0 + 3)
;	sincoshf.c:100: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
