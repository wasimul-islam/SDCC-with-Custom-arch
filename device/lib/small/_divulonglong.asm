;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong_PARM_2
	.globl __divulonglong
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
__divulonglong_PARM_2:
	.ds 8
__divulonglong_x_65536_1:
	.ds 8
__divulonglong_count_65536_2:
	.ds 1
__divulonglong_c_65536_2:
	.ds 1
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
;Allocation info for local variables in function '_divulonglong'
;------------------------------------------------------------
;y                         Allocated with name '__divulonglong_PARM_2'
;x                         Allocated with name '__divulonglong_x_65536_1'
;reste                     Allocated to registers r0 r1 r2 r3 
;count                     Allocated with name '__divulonglong_count_65536_2'
;c                         Allocated with name '__divulonglong_c_65536_2'
;------------------------------------------------------------
;	_divulonglong.c:43: _divulonglong (unsigned long long x, unsigned long long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
__divulonglong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	__divulonglong_x_65536_1,dpl
	mov	(__divulonglong_x_65536_1 + 1),dph
	mov	(__divulonglong_x_65536_1 + 2),b
	mov	(__divulonglong_x_65536_1 + 3),a
	mov	(__divulonglong_x_65536_1 + 4),r4
	mov	(__divulonglong_x_65536_1 + 5),r5
	mov	(__divulonglong_x_65536_1 + 6),r6
	mov	(__divulonglong_x_65536_1 + 7),r7
;	_divulonglong.c:45: unsigned long long reste = 0L;
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	_divulonglong.c:49: do
	mov	__divulonglong_count_65536_2,#0x40
00105$:
;	_divulonglong.c:52: c = MSB_SET(x);
	mov	a,(__divulonglong_x_65536_1 + 7)
	rl	a
	anl	a,#0x01
	mov	__divulonglong_c_65536_2,a
;	_divulonglong.c:53: x <<= 1;
	mov	a,__divulonglong_x_65536_1
	add	a,__divulonglong_x_65536_1
	mov	__divulonglong_x_65536_1,a
	mov	a,(__divulonglong_x_65536_1 + 1)
	rlc	a
	mov	(__divulonglong_x_65536_1 + 1),a
	mov	a,(__divulonglong_x_65536_1 + 2)
	rlc	a
	mov	(__divulonglong_x_65536_1 + 2),a
	mov	a,(__divulonglong_x_65536_1 + 3)
	rlc	a
	mov	(__divulonglong_x_65536_1 + 3),a
	mov	a,(__divulonglong_x_65536_1 + 4)
	rlc	a
	mov	(__divulonglong_x_65536_1 + 4),a
	mov	a,(__divulonglong_x_65536_1 + 5)
	rlc	a
	mov	(__divulonglong_x_65536_1 + 5),a
	mov	a,(__divulonglong_x_65536_1 + 6)
	rlc	a
	mov	(__divulonglong_x_65536_1 + 6),a
	mov	a,(__divulonglong_x_65536_1 + 7)
	rlc	a
	mov	(__divulonglong_x_65536_1 + 7),a
;	_divulonglong.c:54: reste <<= 1;
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	_divulonglong.c:55: if (c)
	mov	a,__divulonglong_c_65536_2
	jz	00102$
;	_divulonglong.c:56: reste |= 1L;
	orl	ar0,#0x01
00102$:
;	_divulonglong.c:58: if (reste >= y)
	clr	c
	mov	a,r0
	subb	a,__divulonglong_PARM_2
	mov	a,r1
	subb	a,(__divulonglong_PARM_2 + 1)
	mov	a,r2
	subb	a,(__divulonglong_PARM_2 + 2)
	mov	a,r3
	subb	a,(__divulonglong_PARM_2 + 3)
	mov	a,r4
	subb	a,(__divulonglong_PARM_2 + 4)
	mov	a,r5
	subb	a,(__divulonglong_PARM_2 + 5)
	mov	a,r6
	subb	a,(__divulonglong_PARM_2 + 6)
	mov	a,r7
	subb	a,(__divulonglong_PARM_2 + 7)
	jc	00106$
;	_divulonglong.c:60: reste -= y;
	mov	a,r0
	clr	c
	subb	a,__divulonglong_PARM_2
	mov	r0,a
	mov	a,r1
	subb	a,(__divulonglong_PARM_2 + 1)
	mov	r1,a
	mov	a,r2
	subb	a,(__divulonglong_PARM_2 + 2)
	mov	r2,a
	mov	a,r3
	subb	a,(__divulonglong_PARM_2 + 3)
	mov	r3,a
	mov	a,r4
	subb	a,(__divulonglong_PARM_2 + 4)
	mov	r4,a
	mov	a,r5
	subb	a,(__divulonglong_PARM_2 + 5)
	mov	r5,a
	mov	a,r6
	subb	a,(__divulonglong_PARM_2 + 6)
	mov	r6,a
	mov	a,r7
	subb	a,(__divulonglong_PARM_2 + 7)
	mov	r7,a
;	_divulonglong.c:62: x |= 1L;
	orl	__divulonglong_x_65536_1,#0x01
00106$:
;	_divulonglong.c:65: while (--count);
	dec	__divulonglong_count_65536_2
	mov	a,__divulonglong_count_65536_2
	jz	00129$
	ljmp	00105$
00129$:
;	_divulonglong.c:66: return x;
	mov	dpl,__divulonglong_x_65536_1
	mov	dph,(__divulonglong_x_65536_1 + 1)
	mov	b,(__divulonglong_x_65536_1 + 2)
	mov	a,(__divulonglong_x_65536_1 + 3)
	mov	r4,(__divulonglong_x_65536_1 + 4)
	mov	r5,(__divulonglong_x_65536_1 + 5)
	mov	r6,(__divulonglong_x_65536_1 + 6)
	mov	r7,(__divulonglong_x_65536_1 + 7)
;	_divulonglong.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
