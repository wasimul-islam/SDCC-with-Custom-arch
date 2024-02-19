;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulonglong_PARM_2
	.globl __modulonglong
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
__modulonglong_PARM_2:
	.ds 8
__modulonglong_a_65536_1:
	.ds 8
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;b                         Allocated with name '__modulonglong_PARM_2'
;a                         Allocated with name '__modulonglong_a_65536_1'
;count                     Allocated to registers r7 
;------------------------------------------------------------
;	_modulonglong.c:44: _modulonglong (unsigned long long a, unsigned long long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
__modulonglong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	__modulonglong_a_65536_1,dpl
	mov	(__modulonglong_a_65536_1 + 1),dph
	mov	(__modulonglong_a_65536_1 + 2),b
	mov	(__modulonglong_a_65536_1 + 3),a
	mov	(__modulonglong_a_65536_1 + 4),r4
	mov	(__modulonglong_a_65536_1 + 5),r5
	mov	(__modulonglong_a_65536_1 + 6),r6
	mov	(__modulonglong_a_65536_1 + 7),r7
;	_modulonglong.c:46: unsigned char count = 0;
	mov	r7,#0x00
;	_modulonglong.c:48: while (!MSB_SET(b))
	mov	r6,#0x00
00103$:
	mov	a,(__modulonglong_PARM_2 + 7)
	rl	a
	anl	a,#0x01
	mov	r5,a
	jz	00138$
	ljmp	00117$
00138$:
;	_modulonglong.c:50: b <<= 1;
	mov	a,__modulonglong_PARM_2
	add	a,__modulonglong_PARM_2
	mov	__modulonglong_PARM_2,a
	mov	a,(__modulonglong_PARM_2 + 1)
	rlc	a
	mov	(__modulonglong_PARM_2 + 1),a
	mov	a,(__modulonglong_PARM_2 + 2)
	rlc	a
	mov	(__modulonglong_PARM_2 + 2),a
	mov	a,(__modulonglong_PARM_2 + 3)
	rlc	a
	mov	(__modulonglong_PARM_2 + 3),a
	mov	a,(__modulonglong_PARM_2 + 4)
	rlc	a
	mov	(__modulonglong_PARM_2 + 4),a
	mov	a,(__modulonglong_PARM_2 + 5)
	rlc	a
	mov	(__modulonglong_PARM_2 + 5),a
	mov	a,(__modulonglong_PARM_2 + 6)
	rlc	a
	mov	(__modulonglong_PARM_2 + 6),a
	mov	a,(__modulonglong_PARM_2 + 7)
	rlc	a
	mov	(__modulonglong_PARM_2 + 7),a
;	_modulonglong.c:51: if (b > a)
	clr	c
	mov	a,__modulonglong_a_65536_1
	subb	a,__modulonglong_PARM_2
	mov	a,(__modulonglong_a_65536_1 + 1)
	subb	a,(__modulonglong_PARM_2 + 1)
	mov	a,(__modulonglong_a_65536_1 + 2)
	subb	a,(__modulonglong_PARM_2 + 2)
	mov	a,(__modulonglong_a_65536_1 + 3)
	subb	a,(__modulonglong_PARM_2 + 3)
	mov	a,(__modulonglong_a_65536_1 + 4)
	subb	a,(__modulonglong_PARM_2 + 4)
	mov	a,(__modulonglong_a_65536_1 + 5)
	subb	a,(__modulonglong_PARM_2 + 5)
	mov	a,(__modulonglong_a_65536_1 + 6)
	subb	a,(__modulonglong_PARM_2 + 6)
	mov	a,(__modulonglong_a_65536_1 + 7)
	subb	a,(__modulonglong_PARM_2 + 7)
	jnc	00102$
;	_modulonglong.c:53: b >>=1;
	mov	a,(__modulonglong_PARM_2 + 7)
	clr	c
	rrc	a
	mov	(__modulonglong_PARM_2 + 7),a
	mov	a,(__modulonglong_PARM_2 + 6)
	rrc	a
	mov	(__modulonglong_PARM_2 + 6),a
	mov	a,(__modulonglong_PARM_2 + 5)
	rrc	a
	mov	(__modulonglong_PARM_2 + 5),a
	mov	a,(__modulonglong_PARM_2 + 4)
	rrc	a
	mov	(__modulonglong_PARM_2 + 4),a
	mov	a,(__modulonglong_PARM_2 + 3)
	rrc	a
	mov	(__modulonglong_PARM_2 + 3),a
	mov	a,(__modulonglong_PARM_2 + 2)
	rrc	a
	mov	(__modulonglong_PARM_2 + 2),a
	mov	a,(__modulonglong_PARM_2 + 1)
	rrc	a
	mov	(__modulonglong_PARM_2 + 1),a
	mov	a,__modulonglong_PARM_2
	rrc	a
	mov	__modulonglong_PARM_2,a
;	_modulonglong.c:54: break;
	sjmp	00117$
00102$:
;	_modulonglong.c:56: count++;
	inc	r6
	mov	ar7,r6
	ljmp	00103$
;	_modulonglong.c:58: do
00117$:
00108$:
;	_modulonglong.c:60: if (a >= b)
	clr	c
	mov	a,__modulonglong_a_65536_1
	subb	a,__modulonglong_PARM_2
	mov	a,(__modulonglong_a_65536_1 + 1)
	subb	a,(__modulonglong_PARM_2 + 1)
	mov	a,(__modulonglong_a_65536_1 + 2)
	subb	a,(__modulonglong_PARM_2 + 2)
	mov	a,(__modulonglong_a_65536_1 + 3)
	subb	a,(__modulonglong_PARM_2 + 3)
	mov	a,(__modulonglong_a_65536_1 + 4)
	subb	a,(__modulonglong_PARM_2 + 4)
	mov	a,(__modulonglong_a_65536_1 + 5)
	subb	a,(__modulonglong_PARM_2 + 5)
	mov	a,(__modulonglong_a_65536_1 + 6)
	subb	a,(__modulonglong_PARM_2 + 6)
	mov	a,(__modulonglong_a_65536_1 + 7)
	subb	a,(__modulonglong_PARM_2 + 7)
	jc	00107$
;	_modulonglong.c:61: a -= b;
	mov	a,__modulonglong_a_65536_1
	clr	c
	subb	a,__modulonglong_PARM_2
	mov	__modulonglong_a_65536_1,a
	mov	a,(__modulonglong_a_65536_1 + 1)
	subb	a,(__modulonglong_PARM_2 + 1)
	mov	(__modulonglong_a_65536_1 + 1),a
	mov	a,(__modulonglong_a_65536_1 + 2)
	subb	a,(__modulonglong_PARM_2 + 2)
	mov	(__modulonglong_a_65536_1 + 2),a
	mov	a,(__modulonglong_a_65536_1 + 3)
	subb	a,(__modulonglong_PARM_2 + 3)
	mov	(__modulonglong_a_65536_1 + 3),a
	mov	a,(__modulonglong_a_65536_1 + 4)
	subb	a,(__modulonglong_PARM_2 + 4)
	mov	(__modulonglong_a_65536_1 + 4),a
	mov	a,(__modulonglong_a_65536_1 + 5)
	subb	a,(__modulonglong_PARM_2 + 5)
	mov	(__modulonglong_a_65536_1 + 5),a
	mov	a,(__modulonglong_a_65536_1 + 6)
	subb	a,(__modulonglong_PARM_2 + 6)
	mov	(__modulonglong_a_65536_1 + 6),a
	mov	a,(__modulonglong_a_65536_1 + 7)
	subb	a,(__modulonglong_PARM_2 + 7)
	mov	(__modulonglong_a_65536_1 + 7),a
00107$:
;	_modulonglong.c:62: b >>= 1;
	mov	a,(__modulonglong_PARM_2 + 7)
	clr	c
	rrc	a
	mov	(__modulonglong_PARM_2 + 7),a
	mov	a,(__modulonglong_PARM_2 + 6)
	rrc	a
	mov	(__modulonglong_PARM_2 + 6),a
	mov	a,(__modulonglong_PARM_2 + 5)
	rrc	a
	mov	(__modulonglong_PARM_2 + 5),a
	mov	a,(__modulonglong_PARM_2 + 4)
	rrc	a
	mov	(__modulonglong_PARM_2 + 4),a
	mov	a,(__modulonglong_PARM_2 + 3)
	rrc	a
	mov	(__modulonglong_PARM_2 + 3),a
	mov	a,(__modulonglong_PARM_2 + 2)
	rrc	a
	mov	(__modulonglong_PARM_2 + 2),a
	mov	a,(__modulonglong_PARM_2 + 1)
	rrc	a
	mov	(__modulonglong_PARM_2 + 1),a
	mov	a,__modulonglong_PARM_2
	rrc	a
	mov	__modulonglong_PARM_2,a
;	_modulonglong.c:64: while (count--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00141$
	ljmp	00108$
00141$:
;	_modulonglong.c:66: return a;
	mov	dpl,__modulonglong_a_65536_1
	mov	dph,(__modulonglong_a_65536_1 + 1)
	mov	b,(__modulonglong_a_65536_1 + 2)
	mov	a,(__modulonglong_a_65536_1 + 3)
	mov	r4,(__modulonglong_a_65536_1 + 4)
	mov	r5,(__modulonglong_a_65536_1 + 5)
	mov	r6,(__modulonglong_a_65536_1 + 6)
	mov	r7,(__modulonglong_a_65536_1 + 7)
;	_modulonglong.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
