;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wctomb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
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
;Allocation info for local variables in function 'wctomb'
;------------------------------------------------------------
;wc                        Allocated to stack - _bp -6
;s                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	wctomb.c:31: int wctomb(char *s, wchar_t wc)
;	-----------------------------------------
;	 function wctomb
;	-----------------------------------------
_wctomb:
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
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	wctomb.c:33: if(!s)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	wctomb.c:34: return(0);
	mov	dptr,#0x0000
	ljmp	00119$
00102$:
;	wctomb.c:36: if(wc < 0x80)
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x80
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00117$
;	wctomb.c:38: s[0] = wc;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	wctomb.c:39: return(1);
	mov	dptr,#0x0001
	ljmp	00119$
00117$:
;	wctomb.c:41: else if(wc < 0x800)
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0x08
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00114$
;	wctomb.c:43: s[0] = (wc >> 6) & 0x1f | 0xc0;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x03
	anl	ar3,#0x1f
	orl	ar3,#0xc0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	wctomb.c:44: s[1] = (wc >> 0) & 0x3f | 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	anl	ar4,#0x3f
	orl	ar4,#0x80
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
;	wctomb.c:45: return(2);
	mov	dptr,#0x0002
	ljmp	00119$
00114$:
;	wctomb.c:47: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xd8
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jc	00110$
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xe0
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00110$
;	wctomb.c:48: return(-1);
	mov	dptr,#0xffff
	ljmp	00119$
00110$:
;	wctomb.c:49: else if(wc < 0x10000)
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	inc	r0
	inc	r0
	mov	a,@r0
	subb	a,#0x01
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jc	00154$
	ljmp	00107$
00154$:
;	wctomb.c:51: s[0] = (wc >> 12) & 0x0f | 0xe0;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	inc	r0
	mov	a,@r0
	swap	a
	anl	a,#0xf0
	orl	a,r3
	mov	a,@r0
	swap	a
	anl	a,#0x0f
	anl	ar2,#0x0f
	orl	ar2,#0xe0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	wctomb.c:52: s[1] = (wc >> 6) & 0x3f  | 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x03
	anl	ar3,#0x3f
	orl	ar3,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	wctomb.c:53: s[2] = (wc >> 0) & 0x3f  | 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	anl	ar4,#0x3f
	orl	ar4,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	wctomb.c:54: return(3);
	mov	dptr,#0x0003
	ljmp	00119$
00107$:
;	wctomb.c:56: else if(wc < 0x110000)
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	inc	r0
	inc	r0
	mov	a,@r0
	subb	a,#0x11
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jc	00155$
	ljmp	00104$
00155$:
;	wctomb.c:58: s[0] = (wc >> 18) & 0x07 | 0xf0;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	anl	ar4,#0x07
	orl	ar4,#0xf0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	wctomb.c:59: s[1] = (wc >> 12) & 0x3f | 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x01
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	inc	r0
	mov	a,@r0
	swap	a
	anl	a,#0xf0
	orl	a,r3
	mov	a,@r0
	swap	a
	anl	a,#0x0f
	anl	ar2,#0x3f
	orl	ar2,#0x80
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	wctomb.c:60: s[2] = (wc >> 6) & 0x3f  | 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x03
	anl	ar3,#0x3f
	orl	ar3,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	wctomb.c:61: s[3] = (wc >> 0) & 0x3f  | 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	anl	ar4,#0x3f
	orl	ar4,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	wctomb.c:62: return(4);
	mov	dptr,#0x0004
	sjmp	00119$
00104$:
;	wctomb.c:65: return(-1);
	mov	dptr,#0xffff
00119$:
;	wctomb.c:66: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
