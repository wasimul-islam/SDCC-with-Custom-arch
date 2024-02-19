;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl ___mbstoc16s
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
;Allocation info for local variables in function '__mbstoc16s'
;------------------------------------------------------------
;s                         Allocated to stack - _bp -5
;n                         Allocated to stack - _bp -7
;c16s                      Allocated to registers r5 r6 r7 
;m                         Allocated to stack - _bp +4
;l                         Allocated to stack - _bp +6
;codepoint                 Allocated to stack - _bp +8
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	mbstoc16s.c:44: size_t __mbstoc16s(char16_t *restrict c16s, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function __mbstoc16s
;	-----------------------------------------
___mbstoc16s:
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
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	mbstoc16s.c:46: size_t m = 0;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	mbstoc16s.c:85: return(m);
00116$:
;	mbstoc16s.c:53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	mov	a,_bp
	add	a,#0x08
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_mbtowc
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	mbstoc16s.c:55: if(l < 0)
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	inc	r0
	mov	a,@r0
	jnb	acc.7,00106$
;	mbstoc16s.c:56: return(-1);
	mov	dptr,#0xffff
	ljmp	00118$
00106$:
;	mbstoc16s.c:57: else if(!l)
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00107$
;	mbstoc16s.c:59: if(m < n)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jc	00157$
	ljmp	00115$
00157$:
;	mbstoc16s.c:60: *c16s = 0;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	mbstoc16s.c:61: break;
	ljmp	00115$
00107$:
;	mbstoc16s.c:64: if (codepoint <= 0xffff) // Basic multilingual plane
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	c
	mov	a,#0xff
	subb	a,@r0
	mov	a,#0xff
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jc	00113$
;	mbstoc16s.c:66: if (m >= n)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jc	00159$
	ljmp	00115$
00159$:
;	mbstoc16s.c:69: *c16s++ = codepoint;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	mbstoc16s.c:70: m++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00160$
	inc	r0
	inc	@r0
00160$:
	ljmp	00114$
00113$:
;	mbstoc16s.c:74: if (m + 1 >= n)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jc	00161$
	ljmp	00115$
00161$:
;	mbstoc16s.c:77: codepoint -= 0x100000;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,#0xf0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	@r0,a
;	mbstoc16s.c:78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
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
	inc	r0
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r3
	mov	r3,a
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x3f
	anl	ar3,#0x03
	mov	a,#0xd8
	add	a,r3
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
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
;	mbstoc16s.c:79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	anl	ar4,#0x03
	mov	a,#0xdc
	add	a,r4
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	mbstoc16s.c:80: m += 2;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
00114$:
;	mbstoc16s.c:82: s += l;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00116$
00115$:
;	mbstoc16s.c:85: return(m);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
00118$:
;	mbstoc16s.c:86: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
