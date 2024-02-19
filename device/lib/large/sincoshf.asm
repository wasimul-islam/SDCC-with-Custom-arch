;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mmcs51 --model-large
	
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
_sincoshf_PARM_2:
	.ds 1
_sincoshf_x_65536_25:
	.ds 4
_sincoshf_y_65536_26:
	.ds 4
_sincoshf_w_65536_26:
	.ds 4
_sincoshf_z_65536_26:
	.ds 4
_sincoshf_sign_65536_26:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincoshf_sloc0_1_0'
;sloc1                     Allocated with name '_sincoshf_sloc1_1_0'
;iscosh                    Allocated with name '_sincoshf_PARM_2'
;x                         Allocated with name '_sincoshf_x_65536_25'
;y                         Allocated with name '_sincoshf_y_65536_26'
;w                         Allocated with name '_sincoshf_w_65536_26'
;z                         Allocated with name '_sincoshf_z_65536_26'
;sign                      Allocated with name '_sincoshf_sign_65536_26'
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
	mov	dptr,#_sincoshf_x_65536_25
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
;	sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
	mov	dptr,#_sincoshf_x_65536_25
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
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
	jz	00102$
	mov	dptr,#_sincoshf_y_65536_26
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sincoshf_sign_65536_26
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00103$
00102$:
;	sincoshf.c:62: else { y=x;  sign=0; }
	mov	dptr,#_sincoshf_y_65536_26
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
	mov	dptr,#_sincoshf_sign_65536_26
	clr	a
	movx	@dptr,a
00103$:
;	sincoshf.c:64: if ((y>1.0) || iscosh)
	mov	dptr,#_sincoshf_y_65536_26
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	mov	dptr,#_sincoshf_PARM_2
	movx	a,@dptr
	jnz	00153$
	ljmp	00118$
00153$:
00117$:
;	sincoshf.c:66: if(y>YBAR)
	mov	dptr,#_sincoshf_y_65536_26
	movx	a,@dptr
	mov	_sincoshf_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_sincoshf_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_sincoshf_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_sincoshf_sloc0_1_0 + 3),a
	push	_sincoshf_sloc0_1_0
	push	(_sincoshf_sloc0_1_0 + 1)
	push	(_sincoshf_sloc0_1_0 + 2)
	push	(_sincoshf_sloc0_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0x10
	mov	a,#0x41
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jnz	00154$
	ljmp	00110$
00154$:
;	sincoshf.c:68: w=y-K1;
	clr	a
	push	acc
	mov	a,#0x73
	push	acc
	mov	a,#0x31
	push	acc
	mov	a,#0x3f
	push	acc
;	sincoshf.c:69: if (w>WMAX)
	mov	dpl,_sincoshf_sloc0_1_0
	mov	dph,(_sincoshf_sloc0_1_0 + 1)
	mov	b,(_sincoshf_sloc0_1_0 + 2)
	mov	a,(_sincoshf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	_sincoshf_sloc1_1_0,dpl
	mov	(_sincoshf_sloc1_1_0 + 1),dph
	mov	(_sincoshf_sloc1_1_0 + 2),b
	mov	(_sincoshf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincoshf_sloc1_1_0
	push	(_sincoshf_sloc1_1_0 + 1)
	push	(_sincoshf_sloc1_1_0 + 2)
	push	(_sincoshf_sloc1_1_0 + 3)
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
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	sincoshf.c:72: z=HUGE_VALF;
	mov	dptr,#_sincoshf_z_65536_26
	dec	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x7f
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00111$
00105$:
;	sincoshf.c:76: z=expf(w);
	mov	dpl,_sincoshf_sloc1_1_0
	mov	dph,(_sincoshf_sloc1_1_0 + 1)
	mov	b,(_sincoshf_sloc1_1_0 + 2)
	mov	a,(_sincoshf_sloc1_1_0 + 3)
	lcall	_expf
	mov	_sincoshf_sloc1_1_0,dpl
	mov	(_sincoshf_sloc1_1_0 + 1),dph
	mov	(_sincoshf_sloc1_1_0 + 2),b
	mov	(_sincoshf_sloc1_1_0 + 3),a
;	sincoshf.c:77: z+=K3*z;
	push	_sincoshf_sloc1_1_0
	push	(_sincoshf_sloc1_1_0 + 1)
	push	(_sincoshf_sloc1_1_0 + 2)
	push	(_sincoshf_sloc1_1_0 + 3)
	mov	dptr,#0x0897
	mov	b,#0x68
	mov	a,#0x37
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_sincoshf_sloc1_1_0
	mov	dph,(_sincoshf_sloc1_1_0 + 1)
	mov	b,(_sincoshf_sloc1_1_0 + 2)
	mov	a,(_sincoshf_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sincoshf_z_65536_26
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00111$
00110$:
;	sincoshf.c:82: z=expf(y);
	mov	dpl,_sincoshf_sloc0_1_0
	mov	dph,(_sincoshf_sloc0_1_0 + 1)
	mov	b,(_sincoshf_sloc0_1_0 + 2)
	mov	a,(_sincoshf_sloc0_1_0 + 3)
	lcall	_expf
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
;	sincoshf.c:83: w=1.0/z;
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fsdiv
	mov	_sincoshf_sloc1_1_0,dpl
	mov	(_sincoshf_sloc1_1_0 + 1),dph
	mov	(_sincoshf_sloc1_1_0 + 2),b
	mov	(_sincoshf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	dptr,#_sincoshf_w_65536_26
	mov	a,_sincoshf_sloc1_1_0
	movx	@dptr,a
	mov	a,(_sincoshf_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincoshf_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincoshf_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	sincoshf.c:84: if(!iscosh) w=-w;
	mov	dptr,#_sincoshf_PARM_2
	movx	a,@dptr
	jnz	00108$
	mov	dptr,#_sincoshf_w_65536_26
	mov	a,_sincoshf_sloc1_1_0
	movx	@dptr,a
	mov	a,(_sincoshf_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincoshf_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sincoshf_sloc1_1_0 + 3)
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
00108$:
;	sincoshf.c:85: z=(z+w)*0.5;
	mov	dptr,#_sincoshf_w_65536_26
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
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
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x3f
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sincoshf_z_65536_26
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00111$:
;	sincoshf.c:87: if(sign) z=-z;
	mov	dptr,#_sincoshf_sign_65536_26
	movx	a,@dptr
	jnz	00157$
	ljmp	00119$
00157$:
	mov	dptr,#_sincoshf_z_65536_26
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_sincoshf_z_65536_26
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00115$
;	sincoshf.c:92: z=x;
	mov	dptr,#_sincoshf_x_65536_25
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
	mov	dptr,#_sincoshf_z_65536_26
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
	ljmp	00119$
00115$:
;	sincoshf.c:95: z=x*x;
	mov	dptr,#_sincoshf_x_65536_25
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	sincoshf.c:96: z=x+x*z*P(z)/Q(z);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	_sincoshf_sloc1_1_0,dpl
	mov	(_sincoshf_sloc1_1_0 + 1),dph
	mov	(_sincoshf_sloc1_1_0 + 2),b
	mov	(_sincoshf_sloc1_1_0 + 3),a
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
	push	_sincoshf_sloc1_1_0
	push	(_sincoshf_sloc1_1_0 + 1)
	push	(_sincoshf_sloc1_1_0 + 2)
	push	(_sincoshf_sloc1_1_0 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	_sincoshf_sloc0_1_0,dpl
	mov	(_sincoshf_sloc0_1_0 + 1),dph
	mov	(_sincoshf_sloc0_1_0 + 2),b
	mov	(_sincoshf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincoshf_sloc1_1_0
	push	(_sincoshf_sloc1_1_0 + 1)
	push	(_sincoshf_sloc1_1_0 + 2)
	push	(_sincoshf_sloc1_1_0 + 3)
	mov	dptr,#0xe6ea
	mov	b,#0x42
	mov	a,#0xbe
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
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
	push	ar0
	push	ar1
	push	ar2
	push	ar3
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
	mov	dpl,_sincoshf_sloc1_1_0
	mov	dph,(_sincoshf_sloc1_1_0 + 1)
	mov	b,(_sincoshf_sloc1_1_0 + 2)
	mov	a,(_sincoshf_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_sincoshf_sloc0_1_0
	mov	dph,(_sincoshf_sloc0_1_0 + 1)
	mov	b,(_sincoshf_sloc0_1_0 + 2)
	mov	a,(_sincoshf_sloc0_1_0 + 3)
	lcall	___fsdiv
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
	mov	dptr,#_sincoshf_z_65536_26
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
00119$:
;	sincoshf.c:99: return z;
	mov	dptr,#_sincoshf_z_65536_26
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
;	sincoshf.c:100: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
