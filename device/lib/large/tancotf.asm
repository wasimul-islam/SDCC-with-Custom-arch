;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _tancotf_PARM_2
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
_tancotf_sloc0_1_0:
	.ds 2
_tancotf_sloc1_1_0:
	.ds 4
_tancotf_sloc2_1_0:
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
_tancotf_PARM_2:
	.ds 1
_tancotf_x_65536_25:
	.ds 4
_tancotf_xnum_65536_26:
	.ds 4
_tancotf_xden_65536_26:
	.ds 4
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
;Allocation info for local variables in function 'tancotf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tancotf_sloc0_1_0'
;sloc1                     Allocated with name '_tancotf_sloc1_1_0'
;sloc2                     Allocated with name '_tancotf_sloc2_1_0'
;iscotan                   Allocated with name '_tancotf_PARM_2'
;x                         Allocated with name '_tancotf_x_65536_25'
;f                         Allocated with name '_tancotf_f_65536_26'
;g                         Allocated with name '_tancotf_g_65536_26'
;xn                        Allocated with name '_tancotf_xn_65536_26'
;xnum                      Allocated with name '_tancotf_xnum_65536_26'
;xden                      Allocated with name '_tancotf_xden_65536_26'
;n                         Allocated with name '_tancotf_n_65536_26'
;------------------------------------------------------------
;	tancotf.c:53: float tancotf(float x, bool iscotan)
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
_tancotf:
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
	mov	dptr,#_tancotf_x_65536_25
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
;	tancotf.c:58: if (fabsf(x) > YMAX)
	mov	dptr,#_tancotf_x_65536_25
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_fabsf
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0800
	mov	b,#0xc9
	mov	a,#0x45
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
;	tancotf.c:60: errno = ERANGE;
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tancotf.c:61: return 0.0;
	mov	dptr,#0x0000
	mov	b,a
	ret
00102$:
;	tancotf.c:65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xf983
	mov	b,#0x22
	mov	a,#0x3f
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
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r7
	jz	00117$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x3f
	sjmp	00118$
00117$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0xbf
00118$:
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
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
;	tancotf.c:66: xn=n;
	mov	_tancotf_sloc0_1_0,dpl
	mov  (_tancotf_sloc0_1_0 + 1),dph
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	tancotf.c:68: xnum=(int)x;
	mov	dptr,#_tancotf_x_65536_25
	movx	a,@dptr
	mov	_tancotf_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc1_1_0 + 3),a
	mov	dpl,_tancotf_sloc1_1_0
	mov	dph,(_tancotf_sloc1_1_0 + 1)
	mov	b,(_tancotf_sloc1_1_0 + 2)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	___fs2sint
	lcall	___sint2fs
	mov	_tancotf_sloc2_1_0,dpl
	mov	(_tancotf_sloc2_1_0 + 1),dph
	mov	(_tancotf_sloc2_1_0 + 2),b
	mov	(_tancotf_sloc2_1_0 + 3),a
;	tancotf.c:69: xden=x-xnum;
	push	_tancotf_sloc2_1_0
	push	(_tancotf_sloc2_1_0 + 1)
	push	(_tancotf_sloc2_1_0 + 2)
	push	(_tancotf_sloc2_1_0 + 3)
;	tancotf.c:70: f=((xnum-xn*C1)+xden)-xn*C2;
	mov	dpl,_tancotf_sloc1_1_0
	mov	dph,(_tancotf_sloc1_1_0 + 1)
	mov	b,(_tancotf_sloc1_1_0 + 2)
	mov	a,(_tancotf_sloc1_1_0 + 3)
	lcall	___fssub
	mov	_tancotf_sloc1_1_0,dpl
	mov	(_tancotf_sloc1_1_0 + 1),dph
	mov	(_tancotf_sloc1_1_0 + 2),b
	mov	(_tancotf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0xc9
	mov	a,#0x3f
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,_tancotf_sloc2_1_0
	mov	dph,(_tancotf_sloc2_1_0 + 1)
	mov	b,(_tancotf_sloc2_1_0 + 2)
	mov	a,(_tancotf_sloc2_1_0 + 3)
	lcall	___fssub
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_sloc1_1_0
	push	(_tancotf_sloc1_1_0 + 1)
	push	(_tancotf_sloc1_1_0 + 2)
	push	(_tancotf_sloc1_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	push	ar7
	push	ar6
	push	ar1
	push	ar0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xaa22
	mov	b,#0xfd
	mov	a,#0x39
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar6
	pop	ar7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	tancotf.c:72: if (fabsf(f) < EPS)
	mov	dpl,r0
	mov	dph,r1
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_fabsf
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
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
	jz	00104$
;	tancotf.c:74: xnum = f;
	mov	dptr,#_tancotf_xnum_65536_26
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
;	tancotf.c:75: xden = 1.0;
	mov	dptr,#_tancotf_xden_65536_26
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3f
	inc	dptr
	movx	@dptr,a
	ljmp	00105$
00104$:
;	tancotf.c:79: g = f*f;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	tancotf.c:80: xnum = P(f,g);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	_tancotf_sloc2_1_0,dpl
	mov	(_tancotf_sloc2_1_0 + 1),dph
	mov	(_tancotf_sloc2_1_0 + 2),b
	mov	(_tancotf_sloc2_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_sloc2_1_0
	push	(_tancotf_sloc2_1_0 + 1)
	push	(_tancotf_sloc2_1_0 + 2)
	push	(_tancotf_sloc2_1_0 + 3)
	mov	dptr,#0x33b8
	mov	b,#0xc4
	mov	a,#0xbd
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_tancotf_xnum_65536_26
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
;	tancotf.c:81: xden = Q(g);
	push	_tancotf_sloc2_1_0
	push	(_tancotf_sloc2_1_0 + 1)
	push	(_tancotf_sloc2_1_0 + 2)
	push	(_tancotf_sloc2_1_0 + 3)
	mov	dptr,#0x3375
	mov	b,#0x1f
	mov	a,#0x3c
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xaf
	push	acc
	mov	a,#0xb7
	push	acc
	rr	a
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
	push	_tancotf_sloc2_1_0
	push	(_tancotf_sloc2_1_0 + 1)
	push	(_tancotf_sloc2_1_0 + 2)
	push	(_tancotf_sloc2_1_0 + 3)
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
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
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
	mov	dptr,#_tancotf_xden_65536_26
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
00105$:
;	tancotf.c:84: if(n&1)
	mov	a,_tancotf_sloc0_1_0
	jb	acc.0,00146$
	ljmp	00113$
00146$:
;	tancotf.c:87: if(iscotan) return (-xnum/xden);
	mov	dptr,#_tancotf_PARM_2
	movx	a,@dptr
	jz	00107$
	mov	dptr,#_tancotf_xnum_65536_26
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
	mov	dptr,#_tancotf_xden_65536_26
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
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
	ret
00107$:
;	tancotf.c:88: else return (-xden/xnum);
	mov	dptr,#_tancotf_xden_65536_26
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
	mov	dptr,#_tancotf_xnum_65536_26
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
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
	ret
00113$:
;	tancotf.c:92: if(iscotan) return (xden/xnum);
	mov	dptr,#_tancotf_PARM_2
	movx	a,@dptr
	jz	00110$
	mov	dptr,#_tancotf_xden_65536_26
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
	mov	dptr,#_tancotf_xnum_65536_26
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
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
	ret
00110$:
;	tancotf.c:93: else return (xnum/xden);
	mov	dptr,#_tancotf_xnum_65536_26
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
	mov	dptr,#_tancotf_xden_65536_26
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
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
;	tancotf.c:95: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
