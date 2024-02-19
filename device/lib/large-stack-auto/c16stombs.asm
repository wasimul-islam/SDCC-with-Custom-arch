;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16stombs
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _wctomb
	.globl ___c16stombs
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
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;c16s                      Allocated to stack - _bp -5
;n                         Allocated to stack - _bp -7
;s                         Allocated to stack - _bp +1
;m                         Allocated to stack - _bp +14
;b                         Allocated to stack - _bp +16
;l                         Allocated to stack - _bp +20
;codepoint                 Allocated to stack - _bp +22
;sloc0                     Allocated to stack - _bp +16
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +10
;------------------------------------------------------------
;	c16stombs.c:44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
___c16stombs:
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
	add	a,#0x16
	mov	sp,a
;	c16stombs.c:46: size_t m = 0;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	c16stombs.c:87: return(m);
00119$:
;	c16stombs.c:54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	subb	a,#0xd8
	jc	00106$
	mov	a,#0x100 - 0xe0
	add	a,r3
	jnc	00107$
00106$:
;	c16stombs.c:56: codepoint = c16s[0];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	c16stombs.c:57: c16s++;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar3
	ljmp	00108$
00107$:
;	c16stombs.c:59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0xdb
	subb	a,r3
	jc	00101$
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xdc
	jc	00101$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,#0xff
	subb	a,@r0
	mov	a,#0xdf
	inc	r0
	subb	a,@r0
	jnc	00102$
00101$:
;	c16stombs.c:60: return(-1);
	mov	dptr,#0xffff
	ljmp	00121$
00102$:
;	c16stombs.c:63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
	mov	ar5,r3
	clr	a
	mov	r6,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	inc	r0
	inc	r0
	mov	@r0,ar5
	mov	a,r6
	xch	a,@r0
	add	a,acc
	xch	a,@r0
	rlc	a
	xch	a,@r0
	add	a,acc
	xch	a,@r0
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,r4
	rl	a
	rl	a
	anl	a,#0x03
	dec	r0
	orl	a,@r0
	mov	@r0,a
	mov	a,r4
	add	a,r4
	add	a,acc
	dec	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar2
	mov	a,#0x24
	add	a,r3
	inc	r0
	mov	@r0,a
	mov	a,#0xa0
	addc	a,r6
	inc	r0
	mov	@r0,a
	mov	a,#0xfc
	addc	a,r7
	inc	r0
	mov	@r0,a
;	c16stombs.c:64: c16s += 2;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x04
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
;	c16stombs.c:87: return(m);
;	c16stombs.c:64: c16s += 2;
00108$:
;	c16stombs.c:67: if(!codepoint)
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00113$
;	c16stombs.c:69: if(m < n)
	mov	a,_bp
	add	a,#0x0e
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
	jc	00161$
	ljmp	00118$
00161$:
;	c16stombs.c:70: *s = 0;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	c16stombs.c:71: break;
	ljmp	00118$
00113$:
;	c16stombs.c:74: l = wctomb(b, codepoint);
	mov	a,_bp
	add	a,#0x10
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar4
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_wctomb
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	c16stombs.c:76: if(l < 0)
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	inc	r0
	mov	a,@r0
	jnb	acc.7,00115$
;	c16stombs.c:77: return(-1);
	mov	dptr,#0xffff
	ljmp	00121$
00115$:
;	c16stombs.c:79: if(m + l > n)
	push	ar4
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r4,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r7
	pop	ar4
	jc	00118$
;	c16stombs.c:82: memcpy(s, b, l);
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
;	c16stombs.c:83: s += l;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	c16stombs.c:84: m += l;
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00119$
00118$:
;	c16stombs.c:87: return(m);
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
00121$:
;	c16stombs.c:88: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
