;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _moduint
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduint
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
;Allocation info for local variables in function '_moduint'
;------------------------------------------------------------
;b                         Allocated to stack - _bp -4
;a                         Allocated to registers r6 r7 
;count                     Allocated to registers r5 
;------------------------------------------------------------
;	_moduint.c:179: _moduint (unsigned int a, unsigned int b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
__moduint:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	_moduint.c:181: unsigned char count = 0;
	mov	r5,#0x00
;	_moduint.c:183: while (!MSB_SET(b))
	mov	r4,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	a,@r0
	rl	a
	anl	a,#0x01
	mov	r3,a
	jnz	00117$
;	_moduint.c:185: b <<= 1;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
;	_moduint.c:186: if (b > a)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jnc	00102$
;	_moduint.c:188: b >>=1;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	_moduint.c:189: break;
	sjmp	00117$
00102$:
;	_moduint.c:191: count++;
	inc	r4
	mov	ar5,r4
;	_moduint.c:193: do
	sjmp	00103$
00117$:
00108$:
;	_moduint.c:195: if (a >= b)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jc	00107$
;	_moduint.c:196: a -= b;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
00107$:
;	_moduint.c:197: b >>= 1;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	_moduint.c:199: while (count--);
	mov	ar4,r5
	dec	r5
	mov	a,r4
	jnz	00108$
;	_moduint.c:200: return a;
	mov	dpl,r6
	mov	dph,r7
;	_moduint.c:201: }
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
