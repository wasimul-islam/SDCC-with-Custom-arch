;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wctomb
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
mcon	=	0xC6
F1	=	0xD1	; user flag
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb_PARM_2
	.globl _wctomb
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
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
_wctomb_PARM_2:
	.ds 4
_wctomb_s_65536_36:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;s                         Allocated with name '_wctomb_s_65536_36'
;sloc0                     Allocated with name '_wctomb_sloc0_1_0'
;------------------------------------------------------------
;	wctomb.c:31: int wctomb(char *s, wchar_t wc)
;	-----------------------------------------
;	 function wctomb
;	-----------------------------------------
_wctomb:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_wctomb_s_65536_36
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	wctomb.c:33: if(!s)
	mov	dptr,#_wctomb_s_65536_36
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00102$
00149$:
;	wctomb.c:34: return(0);
	mov  dptr,#0x0000
	ljmp	00119$
00102$:
;	wctomb.c:36: if(wc < 0x80)
	mov	dptr,#_wctomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0x80
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	jnc  00117$
00150$:
;	wctomb.c:38: s[0] = wc;
	mov	dptr,#_wctomb_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_wctomb_s_65536_36
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
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r6
	lcall	__gptrput
;	wctomb.c:39: return(1);
	mov  dptr,#0x0001
	ljmp	00119$
00117$:
;	wctomb.c:41: else if(wc < 0x800)
	mov	dptr,#_wctomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x08
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	jnc  00114$
00151$:
;	wctomb.c:43: s[0] = (wc >> 6) & 0x1f | 0xc0;
	mov	dptr,#_wctomb_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov  r7,a
	mov	c,acc[7]
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	mov	c,acc[7]
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x03
	mov	r7,a
	anl	ar6,#0x1f
	orl	ar6,#0xc0
	mov	dptr,#_wctomb_s_65536_36
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
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r6
	lcall	__gptrput
;	wctomb.c:44: s[1] = (wc >> 0) & 0x3f | 0x80;
	mov	dptr,#_wctomb_s_65536_36
	movx	a,@dptr
	add	a,#0x01
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_wctomb_PARM_2
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x3f
	orl	ar6,#0x80
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	wctomb.c:45: return(2);
	mov  dptr,#0x0002
	ljmp	00119$
00114$:
;	wctomb.c:47: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
	mov	dptr,#_wctomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0xd8
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	jc   00110$
00152$:
	mov	dptr,#_wctomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0xe0
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	jnc  00110$
00153$:
;	wctomb.c:48: return(-1);
	mov  dptr,#0xffff
	ljmp	00119$
00110$:
;	wctomb.c:49: else if(wc < 0x10000)
	mov	dptr,#_wctomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x01
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	jc	00154$
	ljmp	00107$
00154$:
;	wctomb.c:51: s[0] = (wc >> 12) & 0x0f | 0xe0;
	mov	dptr,#_wctomb_PARM_2
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	orl	a,r7
	mov	r7,a
	movx	a,@dptr
	swap	a
	anl	a,#0x0f
	mov	r0,a
	mov	r1,#0x00
	anl	ar6,#0x0f
	orl	ar6,#0xe0
	mov	dptr,#_wctomb_s_65536_36
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
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r6
	lcall	__gptrput
;	wctomb.c:52: s[1] = (wc >> 6) & 0x3f  | 0x80;
	mov	dptr,#_wctomb_s_65536_36
	movx	a,@dptr
	add	a,#0x01
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_wctomb_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov  r3,a
	mov	c,acc[7]
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	mov	c,acc[7]
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x03
	mov	r3,a
	anl	ar2,#0x3f
	orl	ar2,#0x80
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	mov	a,r2
	lcall	__gptrput
;	wctomb.c:53: s[2] = (wc >> 0) & 0x3f  | 0x80;
	mov	dptr,#_wctomb_s_65536_36
	movx	a,@dptr
	add	a,#0x02
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_wctomb_PARM_2
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x3f
	orl	ar6,#0x80
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	wctomb.c:54: return(3);
	mov  dptr,#0x0003
	ljmp	00119$
00107$:
;	wctomb.c:56: else if(wc < 0x110000)
	mov	dptr,#_wctomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0x11
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	jc	00155$
	ljmp	00104$
00155$:
;	wctomb.c:58: s[0] = (wc >> 18) & 0x07 | 0xf0;
	mov	dptr,#_wctomb_PARM_2
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x00
	anl	ar2,#0x07
	orl	ar2,#0xf0
	mov	dptr,#_wctomb_s_65536_36
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
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r2
	lcall	__gptrput
;	wctomb.c:59: s[1] = (wc >> 12) & 0x3f | 0x80;
	mov	dptr,#_wctomb_s_65536_36
	movx	a,@dptr
	add	a,#0x01
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_wctomb_PARM_2
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	orl	a,r7
	mov	r7,a
	movx	a,@dptr
	swap	a
	anl	a,#0x0f
	mov	r0,a
	mov	r1,#0x00
	anl	ar6,#0x3f
	orl	ar6,#0x80
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	wctomb.c:60: s[2] = (wc >> 6) & 0x3f  | 0x80;
	mov	dptr,#_wctomb_s_65536_36
	movx	a,@dptr
	add	a,#0x02
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_wctomb_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov  r7,a
	mov	c,acc[7]
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	mov	c,acc[7]
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x03
	mov	r7,a
	anl	ar6,#0x3f
	orl	ar6,#0x80
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	wctomb.c:61: s[3] = (wc >> 0) & 0x3f  | 0x80;
	mov	dptr,#_wctomb_s_65536_36
	movx	a,@dptr
	add	a,#0x03
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_wctomb_PARM_2
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x3f
	orl	ar6,#0x80
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	wctomb.c:62: return(4);
	mov  dptr,#0x0004
;	wctomb.c:65: return(-1);
;	wctomb.c:66: }
	ret
00104$:
	mov     dptr,#0xffff
00119$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
