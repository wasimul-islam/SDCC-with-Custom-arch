;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mmcs51 --model-medium
	
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
__modulonglong_PARM_2:
	.ds 8
__modulonglong_a_65536_1:
	.ds 8
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	acc
	push	b
	push	dph
	push	dpl
	mov	r0,#__modulonglong_a_65536_1
	pop	acc
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	_modulonglong.c:46: unsigned char count = 0;
	mov	r7,#0x00
;	_modulonglong.c:48: while (!MSB_SET(b))
	mov	r6,#0x00
00103$:
	mov	r0,#(((__modulonglong_PARM_2 + 3) + 3) + 1)
	movx	a,@r0
	rl	a
	anl	a,#0x01
	mov	r5,a
	jz	00138$
	ljmp	00117$
00138$:
;	_modulonglong.c:50: b <<= 1;
	mov	r0,#__modulonglong_PARM_2
	movx	a,@r0
	add	a,acc
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
;	_modulonglong.c:51: if (b > a)
	mov	r0,#__modulonglong_PARM_2
	mov	r1,#__modulonglong_a_65536_1
	clr	c
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	jnc	00102$
;	_modulonglong.c:53: b >>=1;
	mov	r0,#(((__modulonglong_PARM_2 + 3) + 3) + 1)
	movx	a,@r0
	clr	c
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
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
	mov	r0,#__modulonglong_a_65536_1
	mov	r1,#__modulonglong_PARM_2
	clr	c
	movx	a,@r1
	mov	b,a
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	jc	00107$
;	_modulonglong.c:61: a -= b;
	mov	r0,#__modulonglong_a_65536_1
	mov	r1,#__modulonglong_PARM_2
	movx	a,@r1
	mov	b,a
	clr	c
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
00107$:
;	_modulonglong.c:62: b >>= 1;
	mov	r0,#(((__modulonglong_PARM_2 + 3) + 3) + 1)
	movx	a,@r0
	clr	c
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
	dec	r0
	movx	a,@r0
	rrc	a
	movx	@r0,a
;	_modulonglong.c:64: while (count--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00141$
	ljmp	00108$
00141$:
;	_modulonglong.c:66: return a;
	mov	r0,#__modulonglong_a_65536_1
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
	push	acc
	inc	r0
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
	pop	acc
;	_modulonglong.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
