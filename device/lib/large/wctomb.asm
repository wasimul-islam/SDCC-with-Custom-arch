;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wctomb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb_PARM_2
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
	.area	OSEG    (OVR,DATA)
_wctomb_sloc0_1_0:
	.ds 3
_wctomb_sloc1_1_0:
	.ds 3
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
_wctomb_PARM_2:
	.ds 4
_wctomb_s_65536_39:
	.ds 3
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
;wc                        Allocated with name '_wctomb_PARM_2'
;s                         Allocated with name '_wctomb_s_65536_39'
;sloc0                     Allocated with name '_wctomb_sloc0_1_0'
;sloc1                     Allocated with name '_wctomb_sloc1_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_wctomb_s_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	wctomb.c:33: if(!s)
	mov	dptr,#_wctomb_s_65536_39
	movx	a,@dptr
	mov	_wctomb_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_wctomb_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_wctomb_sloc0_1_0 + 2),a
	mov	a,_wctomb_sloc0_1_0
	orl	a,(_wctomb_sloc0_1_0 + 1)
	jnz	00102$
;	wctomb.c:34: return(0);
	mov	dptr,#0x0000
	ret
00102$:
;	wctomb.c:36: if(wc < 0x80)
	mov	dptr,#_wctomb_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r1
	subb	a,#0x80
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	jnc	00117$
;	wctomb.c:38: s[0] = wc;
	mov	ar0,r1
	mov	dpl,_wctomb_sloc0_1_0
	mov	dph,(_wctomb_sloc0_1_0 + 1)
	mov	b,(_wctomb_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
;	wctomb.c:39: return(1);
	mov	dptr,#0x0001
	ret
00117$:
;	wctomb.c:41: else if(wc < 0x800)
	clr	c
	mov	a,r2
	subb	a,#0x08
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	jnc	00114$
;	wctomb.c:43: s[0] = (wc >> 6) & 0x1f | 0xc0;
	mov	ar0,r1
	mov	ar7,r2
	mov	a,r7
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x03
	mov	a,#0x1f
	anl	a,r0
	orl	a,#0xc0
	mov	dpl,_wctomb_sloc0_1_0
	mov	dph,(_wctomb_sloc0_1_0 + 1)
	mov	b,(_wctomb_sloc0_1_0 + 2)
	lcall	__gptrput
;	wctomb.c:44: s[1] = (wc >> 0) & 0x3f | 0x80;
	mov	a,#0x01
	add	a,_wctomb_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_wctomb_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_wctomb_sloc0_1_0 + 2)
	mov	ar0,r1
	mov	a,#0x3f
	anl	a,r0
	orl	a,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	wctomb.c:45: return(2);
	mov	dptr,#0x0002
	ret
00114$:
;	wctomb.c:47: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
	clr	c
	mov	a,r2
	subb	a,#0xd8
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	jc	00110$
	mov	a,r2
	subb	a,#0xe0
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	jnc	00110$
;	wctomb.c:48: return(-1);
	mov	dptr,#0xffff
	ret
00110$:
;	wctomb.c:49: else if(wc < 0x10000)
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r4
	subb	a,#0x00
	jc	00154$
	ljmp	00107$
00154$:
;	wctomb.c:51: s[0] = (wc >> 12) & 0x0f | 0xe0;
	mov	dptr,#_wctomb_s_65536_39
	movx	a,@dptr
	mov	_wctomb_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_wctomb_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_wctomb_sloc0_1_0 + 2),a
	mov	ar0,r2
	mov	a,r3
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r5,a
	mov	a,r4
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	a,r4
	swap	a
	anl	a,#0x0f
	mov	a,#0x0f
	anl	a,r0
	orl	a,#0xe0
	mov	dpl,_wctomb_sloc0_1_0
	mov	dph,(_wctomb_sloc0_1_0 + 1)
	mov	b,(_wctomb_sloc0_1_0 + 2)
	lcall	__gptrput
;	wctomb.c:52: s[1] = (wc >> 6) & 0x3f  | 0x80;
	mov	a,#0x01
	add	a,_wctomb_sloc0_1_0
	mov	_wctomb_sloc1_1_0,a
	clr	a
	addc	a,(_wctomb_sloc0_1_0 + 1)
	mov	(_wctomb_sloc1_1_0 + 1),a
	mov	(_wctomb_sloc1_1_0 + 2),(_wctomb_sloc0_1_0 + 2)
	mov	ar0,r1
	mov	ar7,r2
	mov	a,r7
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x03
	mov	a,#0x3f
	anl	a,r0
	orl	a,#0x80
	mov	dpl,_wctomb_sloc1_1_0
	mov	dph,(_wctomb_sloc1_1_0 + 1)
	mov	b,(_wctomb_sloc1_1_0 + 2)
	lcall	__gptrput
;	wctomb.c:53: s[2] = (wc >> 0) & 0x3f  | 0x80;
	mov	a,#0x02
	add	a,_wctomb_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_wctomb_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_wctomb_sloc0_1_0 + 2)
	mov	ar0,r1
	mov	a,#0x3f
	anl	a,r0
	orl	a,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	wctomb.c:54: return(3);
	mov	dptr,#0x0003
	ret
00107$:
;	wctomb.c:56: else if(wc < 0x110000)
	clr	c
	mov	a,r3
	subb	a,#0x11
	mov	a,r4
	subb	a,#0x00
	jc	00155$
	ljmp	00104$
00155$:
;	wctomb.c:58: s[0] = (wc >> 18) & 0x07 | 0xf0;
	mov	dptr,#_wctomb_s_65536_39
	movx	a,@dptr
	mov	_wctomb_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_wctomb_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_wctomb_sloc1_1_0 + 2),a
	mov	ar0,r3
	mov	a,r4
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	clr	a
	mov	a,#0x07
	anl	a,r0
	orl	a,#0xf0
	mov	dpl,_wctomb_sloc1_1_0
	mov	dph,(_wctomb_sloc1_1_0 + 1)
	mov	b,(_wctomb_sloc1_1_0 + 2)
	lcall	__gptrput
;	wctomb.c:59: s[1] = (wc >> 12) & 0x3f | 0x80;
	mov	a,#0x01
	add	a,_wctomb_sloc1_1_0
	mov	_wctomb_sloc0_1_0,a
	clr	a
	addc	a,(_wctomb_sloc1_1_0 + 1)
	mov	(_wctomb_sloc0_1_0 + 1),a
	mov	(_wctomb_sloc0_1_0 + 2),(_wctomb_sloc1_1_0 + 2)
	mov	ar0,r2
	mov	a,r3
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r5,a
	mov	a,r4
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	a,r4
	swap	a
	anl	a,#0x0f
	mov	a,#0x3f
	anl	a,r0
	orl	a,#0x80
	mov	dpl,_wctomb_sloc0_1_0
	mov	dph,(_wctomb_sloc0_1_0 + 1)
	mov	b,(_wctomb_sloc0_1_0 + 2)
	lcall	__gptrput
;	wctomb.c:60: s[2] = (wc >> 6) & 0x3f  | 0x80;
	mov	a,#0x02
	add	a,_wctomb_sloc1_1_0
	mov	_wctomb_sloc0_1_0,a
	clr	a
	addc	a,(_wctomb_sloc1_1_0 + 1)
	mov	(_wctomb_sloc0_1_0 + 1),a
	mov	(_wctomb_sloc0_1_0 + 2),(_wctomb_sloc1_1_0 + 2)
	mov	ar0,r1
	mov	ar7,r2
	mov	a,r7
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x03
	mov	a,#0x3f
	anl	a,r0
	orl	a,#0x80
	mov	dpl,_wctomb_sloc0_1_0
	mov	dph,(_wctomb_sloc0_1_0 + 1)
	mov	b,(_wctomb_sloc0_1_0 + 2)
	lcall	__gptrput
;	wctomb.c:61: s[3] = (wc >> 0) & 0x3f  | 0x80;
	mov	a,#0x03
	add	a,_wctomb_sloc1_1_0
	mov	r5,a
	clr	a
	addc	a,(_wctomb_sloc1_1_0 + 1)
	mov	r6,a
	mov	r7,(_wctomb_sloc1_1_0 + 2)
	mov	a,#0x3f
	anl	a,r1
	orl	a,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	wctomb.c:62: return(4);
	mov	dptr,#0x0004
	ret
00104$:
;	wctomb.c:65: return(-1);
	mov	dptr,#0xffff
;	wctomb.c:66: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
