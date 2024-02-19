;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divslonglong
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslonglong_PARM_2
	.globl __divslonglong
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
__divslonglong_PARM_2:
	.ds 8
__divslonglong_numeratorneg_65536_2:
	.ds 1
__divslonglong_denominatorneg_65536_2:
	.ds 1
__divslonglong_d_65536_2:
	.ds 8
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
;Allocation info for local variables in function '_divslonglong'
;------------------------------------------------------------
;denominator               Allocated with name '__divslonglong_PARM_2'
;numerator                 Allocated to registers r0 r1 r2 r3 
;numeratorneg              Allocated with name '__divslonglong_numeratorneg_65536_2'
;denominatorneg            Allocated with name '__divslonglong_denominatorneg_65536_2'
;d                         Allocated with name '__divslonglong_d_65536_2'
;------------------------------------------------------------
;	_divslonglong.c:40: _divslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
__divslonglong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
;	_divslonglong.c:42: bool numeratorneg = (numerator < 0);
	mov	a,r7
	rlc	a
	clr	a
	rlc	a
	mov	__divslonglong_numeratorneg_65536_2,a
;	_divslonglong.c:43: bool denominatorneg = (denominator < 0);
	mov	a,(__divslonglong_PARM_2 + 7)
	rlc	a
	clr	a
	rlc	a
	mov	__divslonglong_denominatorneg_65536_2,a
;	_divslonglong.c:46: if (numeratorneg)
	mov	a,__divslonglong_numeratorneg_65536_2
	jz	00102$
;	_divslonglong.c:47: numerator = -numerator;
	clr	c
	clr	a
	subb	a,r0
	mov	r0,a
	clr	a
	subb	a,r1
	mov	r1,a
	clr	a
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
00102$:
;	_divslonglong.c:48: if (denominatorneg)
	mov	a,__divslonglong_denominatorneg_65536_2
	jz	00104$
;	_divslonglong.c:49: denominator = -denominator;
	clr	c
	clr	a
	subb	a,__divslonglong_PARM_2
	mov	__divslonglong_PARM_2,a
	clr	a
	subb	a,(__divslonglong_PARM_2 + 1)
	mov	(__divslonglong_PARM_2 + 1),a
	clr	a
	subb	a,(__divslonglong_PARM_2 + 2)
	mov	(__divslonglong_PARM_2 + 2),a
	clr	a
	subb	a,(__divslonglong_PARM_2 + 3)
	mov	(__divslonglong_PARM_2 + 3),a
	clr	a
	subb	a,(__divslonglong_PARM_2 + 4)
	mov	(__divslonglong_PARM_2 + 4),a
	clr	a
	subb	a,(__divslonglong_PARM_2 + 5)
	mov	(__divslonglong_PARM_2 + 5),a
	clr	a
	subb	a,(__divslonglong_PARM_2 + 6)
	mov	(__divslonglong_PARM_2 + 6),a
	clr	a
	subb	a,(__divslonglong_PARM_2 + 7)
	mov	(__divslonglong_PARM_2 + 7),a
00104$:
;	_divslonglong.c:51: d = (unsigned long long)numerator / (unsigned long long)denominator;
	mov	__divulonglong_PARM_2,__divslonglong_PARM_2
	mov	(__divulonglong_PARM_2 + 1),(__divslonglong_PARM_2 + 1)
	mov	(__divulonglong_PARM_2 + 2),(__divslonglong_PARM_2 + 2)
	mov	(__divulonglong_PARM_2 + 3),(__divslonglong_PARM_2 + 3)
	mov	(__divulonglong_PARM_2 + 4),(__divslonglong_PARM_2 + 4)
	mov	(__divulonglong_PARM_2 + 5),(__divslonglong_PARM_2 + 5)
	mov	(__divulonglong_PARM_2 + 6),(__divslonglong_PARM_2 + 6)
	mov	(__divulonglong_PARM_2 + 7),(__divslonglong_PARM_2 + 7)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__divulonglong
	mov	__divslonglong_d_65536_2,dpl
	mov	(__divslonglong_d_65536_2 + 1),dph
	mov	(__divslonglong_d_65536_2 + 2),b
	mov	(__divslonglong_d_65536_2 + 3),a
	mov	(__divslonglong_d_65536_2 + 4),r4
	mov	(__divslonglong_d_65536_2 + 5),r5
	mov	(__divslonglong_d_65536_2 + 6),r6
	mov	(__divslonglong_d_65536_2 + 7),r7
;	_divslonglong.c:53: return ((numeratorneg ^ denominatorneg) ? -d : d);
	mov	a,__divslonglong_denominatorneg_65536_2
	xrl	a,__divslonglong_numeratorneg_65536_2
	jz	00107$
	clr	c
	clr	a
	subb	a,__divslonglong_d_65536_2
	mov	r0,a
	clr	a
	subb	a,(__divslonglong_d_65536_2 + 1)
	mov	r1,a
	clr	a
	subb	a,(__divslonglong_d_65536_2 + 2)
	mov	r2,a
	clr	a
	subb	a,(__divslonglong_d_65536_2 + 3)
	mov	r3,a
	clr	a
	subb	a,(__divslonglong_d_65536_2 + 4)
	mov	r4,a
	clr	a
	subb	a,(__divslonglong_d_65536_2 + 5)
	mov	r5,a
	clr	a
	subb	a,(__divslonglong_d_65536_2 + 6)
	mov	r6,a
	clr	a
	subb	a,(__divslonglong_d_65536_2 + 7)
	mov	r7,a
	sjmp	00108$
00107$:
	mov	r0,__divslonglong_d_65536_2
	mov	r1,(__divslonglong_d_65536_2 + 1)
	mov	r2,(__divslonglong_d_65536_2 + 2)
	mov	r3,(__divslonglong_d_65536_2 + 3)
	mov	r4,(__divslonglong_d_65536_2 + 4)
	mov	r5,(__divslonglong_d_65536_2 + 5)
	mov	r6,(__divslonglong_d_65536_2 + 6)
	mov	r7,(__divslonglong_d_65536_2 + 7)
00108$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
;	_divslonglong.c:54: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
