;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
;s                         Allocated to stack - _bp -5
;n                         Allocated to stack - _bp -7
;pwc                       Allocated to registers r5 r6 r7 
;codepoint                 Allocated to stack - _bp +8
;seqlen                    Allocated to registers r4 
;i                         Allocated to registers 
;first_byte                Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	mbtowc.c:31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
_mbtowc:
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
	add	a,#0x0c
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	mbtowc.c:37: if(!s)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	mbtowc.c:38: return(0);
	mov	dptr,#0x0000
	ljmp	00126$
00102$:
;	mbtowc.c:40: seqlen = 1;
	mov	r4,#0x01
;	mbtowc.c:41: first_byte = *s;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
;	mbtowc.c:43: if(first_byte & 0x80)
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	jnb	acc.7,00107$
;	mbtowc.c:45: while (first_byte & (0x80 >> seqlen))
	mov	r2,#0x01
00103$:
	push	ar5
	push	ar6
	push	ar7
	mov	b,r2
	inc	b
	mov	r6,#0x80
	clr	a
	mov	r7,a
	rlc	a
	mov	ov,c
	sjmp	00204$
00203$:
	mov	c,ov
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
00204$:
	djnz	b,00203$
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar3,@r0
	mov	r5,#0x00
	mov	a,r3
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00143$
;	mbtowc.c:46: seqlen++;
	inc	r2
	sjmp	00103$
00143$:
	mov	ar4,r2
;	mbtowc.c:47: first_byte &= (0xff >> (seqlen + 1));
	inc	r2
	mov	b,r2
	inc	b
	mov	r2,#0xff
	clr	a
	mov	r3,a
	rlc	a
	mov	ov,c
	sjmp	00207$
00206$:
	mov	c,ov
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00207$:
	djnz	b,00206$
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,r2
	anl	a,@r0
	mov	@r0,a
00107$:
;	mbtowc.c:50: if(seqlen > 4 || n < seqlen)
	mov	a,r4
	add	a,#0xff - 0x04
	jc	00108$
	mov	ar2,r4
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	jnc	00136$
00108$:
;	mbtowc.c:51: return(-1);
	mov	dptr,#0xffff
	ljmp	00126$
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
00136$:
	mov	r3,#0x01
00121$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00113$
;	mbtowc.c:54: if((s[i] & 0xc0) != 0x80)
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0xc0
	mov	r7,#0x00
	cjne	r2,#0x80,00211$
	cjne	r7,#0x00,00211$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00122$
00211$:
	pop	ar7
	pop	ar6
	pop	ar5
;	mbtowc.c:55: return(-1);
	mov	dptr,#0xffff
	ljmp	00126$
00122$:
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
	inc	r3
	sjmp	00121$
00113$:
;	mbtowc.c:57: codepoint = first_byte;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0xfb
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
	mov	ar3,r4
	dec	r3
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
00124$:
	mov	a,r3
	jnz	00212$
	ljmp	00114$
00212$:
;	mbtowc.c:61: codepoint <<= 6;
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	inc	r0
	inc	r0
	mov	a,@r0
	inc	r1
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	anl	a,#0x03
	mov	c,acc.0
	xch	a,@r1
	rrc	a
	xch	a,@r1
	rrc	a
	mov	c,acc.0
	xch	a,@r1
	rrc	a
	xch	a,@r1
	rrc	a
	xch	a,@r1
	inc	r1
	mov	@r1,a
	dec	r0
	dec	r0
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x3f
	dec	r1
	orl	a,@r1
	mov	@r1,a
	dec	r0
	mov	a,@r0
	dec	r1
	dec	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	anl	a,#0x03
	mov	c,acc.0
	xch	a,@r1
	rrc	a
	xch	a,@r1
	rrc	a
	mov	c,acc.0
	xch	a,@r1
	rrc	a
	xch	a,@r1
	rrc	a
	xch	a,@r1
	inc	r1
	mov	@r1,a
;	mbtowc.c:62: codepoint |= (*s & 0x3f);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	anl	ar7,#0x3f
	clr	a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r2,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,r7
	orl	a,@r0
	mov	@r1,a
	mov	a,r6
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r5
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r2
	inc	r0
	orl	a,@r0
	inc	r1
	mov	@r1,a
;	mbtowc.c:63: s++;
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	dec	r3
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00124$
00114$:
;	mbtowc.c:66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	mov	a,_bp
	add	a,#0x04
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
	jc	00116$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,#0xff
	subb	a,@r0
	mov	a,#0xdf
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jc	00116$
;	mbtowc.c:67: return(-1);
	mov	dptr,#0xffff
	sjmp	00126$
00116$:
;	mbtowc.c:69: if(pwc)
	mov	a,r5
	orl	a,r6
	jz	00119$
;	mbtowc.c:70: *pwc = codepoint;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00119$:
;	mbtowc.c:71: return(codepoint ? seqlen : 0);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00128$
	mov	r7,#0x00
	sjmp	00129$
00128$:
	mov	r4,#0x00
	mov	r7,#0x00
00129$:
	mov	dpl,r4
	mov	dph,r7
00126$:
;	mbtowc.c:72: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
