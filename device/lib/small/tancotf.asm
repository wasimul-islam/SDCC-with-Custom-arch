;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mmcs51 --model-small
	
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
_tancotf_PARM_2:
	.ds 1
_tancotf_x_65536_25:
	.ds 4
_tancotf_f_65536_26:
	.ds 4
_tancotf_g_65536_26:
	.ds 4
_tancotf_xn_65536_26:
	.ds 4
_tancotf_xnum_65536_26:
	.ds 4
_tancotf_n_65536_26:
	.ds 2
_tancotf_sloc0_1_0:
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
;iscotan                   Allocated with name '_tancotf_PARM_2'
;x                         Allocated with name '_tancotf_x_65536_25'
;f                         Allocated with name '_tancotf_f_65536_26'
;g                         Allocated with name '_tancotf_g_65536_26'
;xn                        Allocated with name '_tancotf_xn_65536_26'
;xnum                      Allocated with name '_tancotf_xnum_65536_26'
;xden                      Allocated to registers r0 r1 r2 r3 
;n                         Allocated with name '_tancotf_n_65536_26'
;sloc0                     Allocated with name '_tancotf_sloc0_1_0'
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
;	tancotf.c:58: if (fabsf(x) > YMAX)
	mov	_tancotf_x_65536_25,dpl
	mov	(_tancotf_x_65536_25 + 1),dph
	mov	(_tancotf_x_65536_25 + 2),b
	mov	(_tancotf_x_65536_25 + 3),a
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
	mov	a,r3
	jz	00102$
;	tancotf.c:60: errno = ERANGE;
	mov	_errno,#0x22
	mov	(_errno + 1),#0x00
;	tancotf.c:61: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	tancotf.c:65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	push	_tancotf_x_65536_25
	push	(_tancotf_x_65536_25 + 1)
	push	(_tancotf_x_65536_25 + 2)
	push	(_tancotf_x_65536_25 + 3)
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
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	_tancotf_x_65536_25
	push	(_tancotf_x_65536_25 + 1)
	push	(_tancotf_x_65536_25 + 2)
	push	(_tancotf_x_65536_25 + 3)
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
	mov	_tancotf_n_65536_26,dpl
	mov  (_tancotf_n_65536_26 + 1),dph
	lcall	___sint2fs
	mov	_tancotf_xn_65536_26,dpl
	mov	(_tancotf_xn_65536_26 + 1),dph
	mov	(_tancotf_xn_65536_26 + 2),b
	mov	(_tancotf_xn_65536_26 + 3),a
;	tancotf.c:68: xnum=(int)x;
	mov	dpl,_tancotf_x_65536_25
	mov	dph,(_tancotf_x_65536_25 + 1)
	mov	b,(_tancotf_x_65536_25 + 2)
	mov	a,(_tancotf_x_65536_25 + 3)
	lcall	___fs2sint
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
;	tancotf.c:69: xden=x-xnum;
	push	ar7
	push	ar6
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,_tancotf_x_65536_25
	mov	dph,(_tancotf_x_65536_25 + 1)
	mov	b,(_tancotf_x_65536_25 + 2)
	mov	a,(_tancotf_x_65536_25 + 3)
	lcall	___fssub
	mov	_tancotf_sloc0_1_0,dpl
	mov	(_tancotf_sloc0_1_0 + 1),dph
	mov	(_tancotf_sloc0_1_0 + 2),b
	mov	(_tancotf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	tancotf.c:70: f=((xnum-xn*C1)+xden)-xn*C2;
	push	_tancotf_xn_65536_26
	push	(_tancotf_xn_65536_26 + 1)
	push	(_tancotf_xn_65536_26 + 2)
	push	(_tancotf_xn_65536_26 + 3)
	mov	dptr,#0x0000
	mov	b,#0xc9
	mov	a,#0x3f
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
	push	_tancotf_sloc0_1_0
	push	(_tancotf_sloc0_1_0 + 1)
	push	(_tancotf_sloc0_1_0 + 2)
	push	(_tancotf_sloc0_1_0 + 3)
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
	push	_tancotf_xn_65536_26
	push	(_tancotf_xn_65536_26 + 1)
	push	(_tancotf_xn_65536_26 + 2)
	push	(_tancotf_xn_65536_26 + 3)
	mov	dptr,#0xaa22
	mov	b,#0xfd
	mov	a,#0x39
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
	mov	_tancotf_f_65536_26,dpl
	mov	(_tancotf_f_65536_26 + 1),dph
	mov	(_tancotf_f_65536_26 + 2),b
	mov	(_tancotf_f_65536_26 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	tancotf.c:72: if (fabsf(f) < EPS)
	mov	dpl,_tancotf_f_65536_26
	mov	dph,(_tancotf_f_65536_26 + 1)
	mov	b,(_tancotf_f_65536_26 + 2)
	mov	a,(_tancotf_f_65536_26 + 3)
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
	mov	a,r3
	jz	00104$
;	tancotf.c:74: xnum = f;
	mov	_tancotf_xnum_65536_26,_tancotf_f_65536_26
	mov	(_tancotf_xnum_65536_26 + 1),(_tancotf_f_65536_26 + 1)
	mov	(_tancotf_xnum_65536_26 + 2),(_tancotf_f_65536_26 + 2)
	mov	(_tancotf_xnum_65536_26 + 3),(_tancotf_f_65536_26 + 3)
;	tancotf.c:75: xden = 1.0;
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x80
	mov	r3,#0x3f
	ljmp	00105$
00104$:
;	tancotf.c:79: g = f*f;
	push	_tancotf_f_65536_26
	push	(_tancotf_f_65536_26 + 1)
	push	(_tancotf_f_65536_26 + 2)
	push	(_tancotf_f_65536_26 + 3)
	mov	dpl,_tancotf_f_65536_26
	mov	dph,(_tancotf_f_65536_26 + 1)
	mov	b,(_tancotf_f_65536_26 + 2)
	mov	a,(_tancotf_f_65536_26 + 3)
	lcall	___fsmul
	mov	_tancotf_g_65536_26,dpl
	mov	(_tancotf_g_65536_26 + 1),dph
	mov	(_tancotf_g_65536_26 + 2),b
	mov	(_tancotf_g_65536_26 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	tancotf.c:80: xnum = P(f,g);
	push	_tancotf_g_65536_26
	push	(_tancotf_g_65536_26 + 1)
	push	(_tancotf_g_65536_26 + 2)
	push	(_tancotf_g_65536_26 + 3)
	mov	dptr,#0x33b8
	mov	b,#0xc4
	mov	a,#0xbd
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_f_65536_26
	push	(_tancotf_f_65536_26 + 1)
	push	(_tancotf_f_65536_26 + 2)
	push	(_tancotf_f_65536_26 + 3)
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
	push	_tancotf_f_65536_26
	push	(_tancotf_f_65536_26 + 1)
	push	(_tancotf_f_65536_26 + 2)
	push	(_tancotf_f_65536_26 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	_tancotf_xnum_65536_26,dpl
	mov	(_tancotf_xnum_65536_26 + 1),dph
	mov	(_tancotf_xnum_65536_26 + 2),b
	mov	(_tancotf_xnum_65536_26 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	tancotf.c:81: xden = Q(g);
	push	_tancotf_g_65536_26
	push	(_tancotf_g_65536_26 + 1)
	push	(_tancotf_g_65536_26 + 2)
	push	(_tancotf_g_65536_26 + 3)
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
	push	_tancotf_g_65536_26
	push	(_tancotf_g_65536_26 + 1)
	push	(_tancotf_g_65536_26 + 2)
	push	(_tancotf_g_65536_26 + 3)
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
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00105$:
;	tancotf.c:84: if(n&1)
	mov	a,_tancotf_n_65536_26
	jnb	acc.0,00113$
;	tancotf.c:87: if(iscotan) return (-xnum/xden);
	mov	a,_tancotf_PARM_2
	jz	00107$
	mov	r4,_tancotf_xnum_65536_26
	mov	r5,(_tancotf_xnum_65536_26 + 1)
	mov	r6,(_tancotf_xnum_65536_26 + 2)
	mov	a,(_tancotf_xnum_65536_26 + 3)
	cpl	acc.7
	mov	r7,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
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
	mov	ar4,r0
	mov	ar5,r1
	mov	ar6,r2
	mov	a,r3
	cpl	acc.7
	mov	r7,a
	push	_tancotf_xnum_65536_26
	push	(_tancotf_xnum_65536_26 + 1)
	push	(_tancotf_xnum_65536_26 + 2)
	push	(_tancotf_xnum_65536_26 + 3)
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
	mov	a,_tancotf_PARM_2
	jz	00110$
	push	_tancotf_xnum_65536_26
	push	(_tancotf_xnum_65536_26 + 1)
	push	(_tancotf_xnum_65536_26 + 2)
	push	(_tancotf_xnum_65536_26 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
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
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_tancotf_xnum_65536_26
	mov	dph,(_tancotf_xnum_65536_26 + 1)
	mov	b,(_tancotf_xnum_65536_26 + 2)
	mov	a,(_tancotf_xnum_65536_26 + 3)
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
