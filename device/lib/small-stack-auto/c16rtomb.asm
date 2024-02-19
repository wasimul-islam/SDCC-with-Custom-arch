;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16rtomb
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _c16rtomb
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
_c16rtomb_sps_65536_46:
	.ds 3
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
;Allocation info for local variables in function 'c16rtomb'
;------------------------------------------------------------
;c16                       Allocated to stack - _bp -4
;ps                        Allocated to stack - _bp -7
;s                         Allocated to registers r5 r6 r7 
;codepoint                 Allocated to stack - _bp +1
;buf                       Allocated to stack - _bp +17
;high_surrogate            Allocated to registers r7 r6 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +5
;sloc2                     Allocated to stack - _bp +21
;sloc3                     Allocated to stack - _bp +8
;sloc4                     Allocated to stack - _bp +11
;sloc5                     Allocated to stack - _bp +13
;sps                       Allocated with name '_c16rtomb_sps_65536_46'
;------------------------------------------------------------
;	c16rtomb.c:35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
_c16rtomb:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x14
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	c16rtomb.c:41: if(!s)
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	c16rtomb.c:42: s = buf;
	mov	a,_bp
	add	a,#0x11
	mov	r4,a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
00102$:
;	c16rtomb.c:44: if(!ps)
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	c16rtomb.c:45: ps = &sps;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,#_c16rtomb_sps_65536_46
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
00104$:
;	c16rtomb.c:47: if (!c16) // 0 always resets conversion state.
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00119$
;	c16rtomb.c:49: ps->c[1] = ps->c[2] = 0;
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	c16rtomb.c:50: codepoint = 0;
	mov	r0,_bp
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00120$
00119$:
;	c16rtomb.c:52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00114$
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00160$
	ljmp	00115$
00160$:
00114$:
;	c16rtomb.c:56: if(c16 < 0xdc00 || c16 > 0xdfff)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xdc
	jnc	00161$
	ljmp	00121$
00161$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,#0xff
	subb	a,@r0
	mov	a,#0xdf
	inc	r0
	subb	a,@r0
	jnc	00162$
	ljmp	00121$
00162$:
;	c16rtomb.c:59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x01
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
;	c16rtomb.c:60: ps->c[1] = ps->c[2] = 0;
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	clr	a
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	c16rtomb.c:61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r6,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,#0x24
	inc	r0
	add	a,@r0
	inc	r1
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00120$
00115$:
;	c16rtomb.c:63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0xff
	inc	r0
	mov	a,@r0
	subb	a,#0xd7
	jc	00110$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xe0
	jc	00111$
00110$:
;	c16rtomb.c:64: codepoint = c16;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	sjmp	00120$
00111$:
;	c16rtomb.c:67: if(c16 > 0xdbff)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,#0xff
	subb	a,@r0
	mov	a,#0xdb
	inc	r0
	subb	a,@r0
	jc	00121$
;	c16rtomb.c:70: ps->c[1] = c16 & 0xff;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	c16rtomb.c:71: ps->c[2] = c16 >> 8;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	c16rtomb.c:72: return(0);
	mov	dptr,#0x0000
	sjmp	00122$
00120$:
;	c16rtomb.c:75: return(wctomb(s, codepoint));
	mov	r0,_bp
	inc	r0
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_wctomb
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	c16rtomb.c:77: eilseq:
	sjmp	00122$
00121$:
;	c16rtomb.c:78: errno = EILSEQ;
	mov	_errno,#0x54
	mov	(_errno + 1),#0x00
;	c16rtomb.c:79: return(-1);
	mov	dptr,#0xffff
00122$:
;	c16rtomb.c:80: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
