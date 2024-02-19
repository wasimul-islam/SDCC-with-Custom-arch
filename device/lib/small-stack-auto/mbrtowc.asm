;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtowc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
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
_mbrtowc_sps_65536_10:
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
;Allocation info for local variables in function 'mbrtowc'
;------------------------------------------------------------
;s                         Allocated to stack - _bp -5
;n                         Allocated to stack - _bp -7
;ps                        Allocated to stack - _bp -10
;pwc                       Allocated to stack - _bp +1
;first_byte                Allocated to stack - _bp +20
;seqlen                    Allocated to stack - _bp +21
;mbseq                     Allocated to stack - _bp +22
;codepoint                 Allocated to stack - _bp +26
;i                         Allocated to registers r3 
;j                         Allocated to stack - _bp +30
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +8
;sloc3                     Allocated to stack - _bp +23
;sloc4                     Allocated to stack - _bp +11
;sloc5                     Allocated to stack - _bp +13
;sloc6                     Allocated to stack - _bp +16
;sps                       Allocated with name '_mbrtowc_sps_65536_10'
;------------------------------------------------------------
;	mbrtowc.c:32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
_mbrtowc:
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
	add	a,#0x1b
	mov	sp,a
;	mbrtowc.c:41: if(!s)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	mbrtowc.c:42: return(mbrtowc(0, "", 1, ps));
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_mbrtowc
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	ljmp	00145$
00102$:
;	mbrtowc.c:43: if(!n)
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00280$
	ljmp	00128$
00280$:
;	mbrtowc.c:45: if(!ps)
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
;	mbrtowc.c:47: ps = &sps;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,#_mbrtowc_sps_65536_10
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
00106$:
;	mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	mov	a,_bp
	add	a,#0x16
	mov	r4,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
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
	mov	r3,#0x00
00131$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
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
	mov	r7,a
	jz	00174$
	cjne	r3,#0x03,00283$
00283$:
	jnc	00174$
;	mbrtowc.c:51: mbseq[i] = ps->c[i];
	mov	a,r3
	add	a,r4
	mov	r0,a
	mov	@r0,ar7
;	mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	inc	r3
	sjmp	00131$
00174$:
;	mbrtowc.c:53: seqlen = 1;
	mov	r2,#0x01
;	mbrtowc.c:54: first_byte = ps->c[0] ? ps->c[0] : *s;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00147$
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	@r0,ar7
	sjmp	00148$
00147$:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
00148$:
	mov	a,_bp
	add	a,#0x14
;	mbrtowc.c:56: if(first_byte & 0x80)
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	jnb	acc.7,00112$
;	mbrtowc.c:58: while (first_byte & (0x80 >> seqlen))
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,#0x01
00108$:
	push	ar4
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	r4,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00288$
00287$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00288$:
	djnz	b,00287$
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	mov	a,r6
	anl	ar4,a
	mov	a,r7
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	pop	ar4
	jz	00175$
;	mbrtowc.c:59: seqlen++;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	inc	@r0
	sjmp	00108$
00175$:
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	ar2,@r0
;	mbrtowc.c:60: first_byte &= (0xff >> (seqlen + 1));
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r7,#0xff
	clr	a
	mov	r6,a
	rlc	a
	mov	ov,c
	sjmp	00291$
00290$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r7
	rrc	a
	mov	r7,a
00291$:
	djnz	b,00290$
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,r7
	anl	a,@r0
	mov	@r0,a
00112$:
;	mbrtowc.c:63: if(seqlen > 4)
	mov	a,r2
	add	a,#0xff - 0x04
	jnc	00292$
	ljmp	00128$
00292$:
;	mbrtowc.c:66: if(i + n < seqlen) // Incomplete multibyte character
	push	ar4
	mov	ar6,r3
	mov	r7,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	add	a,r4
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	inc	r1
	mov	@r1,a
	mov	ar4,r2
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
	pop	ar4
	jc	00293$
	ljmp	00164$
00293$:
;	mbrtowc.c:70: return(-2);
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
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
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
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
	mov	@r0,ar3
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
00134$:
;	mbrtowc.c:68: for(;n-- ; i++)
	mov	ar7,r4
	mov	ar6,r3
	dec	r4
	cjne	r4,#0xff,00294$
	dec	r3
00294$:
	mov	a,r7
	orl	a,r6
	jz	00115$
;	mbrtowc.c:69: ps->c[i] = *s++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	mov	a,r5
	lcall	__gptrput
;	mbrtowc.c:68: for(;n-- ; i++)
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	inc	@r0
	sjmp	00134$
00115$:
;	mbrtowc.c:70: return(-2);
	mov	dptr,#0xfffe
	ljmp	00145$
;	mbrtowc.c:73: for(j = 0; j < i; j++)
00164$:
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
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
	add	a,#0x1e
	mov	r0,a
	mov	@r0,#0x00
00137$:
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	jnc	00118$
;	mbrtowc.c:74: ps->c[j] = 0;
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	a,@r1
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
	clr	a
	lcall	__gptrput
;	mbrtowc.c:73: for(j = 0; j < i; j++)
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	inc	@r0
	pop	ar7
	pop	ar6
	sjmp	00137$
00118$:
;	mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
	mov	a,r3
	jz	00149$
	sjmp	00150$
00149$:
	mov	r6,#0x01
	mov	r7,#0x00
00150$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
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
	mov	r3,#0x01
	mov	r5,#0x00
00140$:
	clr	c
	mov	a,r6
	subb	a,r2
	jnc	00121$
;	mbrtowc.c:78: mbseq[i] = *s++;
	push	ar4
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r1,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	@r1,ar4
;	mbrtowc.c:79: if((mbseq[i] & 0xc0) != 0x80)
	anl	ar4,#0xc0
	mov	r7,#0x00
	cjne	r4,#0x80,00299$
	cjne	r7,#0x00,00299$
	sjmp	00300$
00299$:
	pop	ar4
	ljmp	00128$
00300$:
	pop	ar4
;	mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	inc	r6
	inc	r3
	cjne	r3,#0x00,00301$
	inc	r5
00301$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
	sjmp	00140$
00121$:
;	mbrtowc.c:83: codepoint = first_byte;
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r3,#0x00
	mov	r7,#0x00
;	mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	inc	r4
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r2
	dec	a
	mov	@r0,a
00143$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	jnz	00302$
	ljmp	00122$
00302$:
;	mbrtowc.c:87: codepoint <<= 6;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	inc	r0
	inc	r0
	mov	@r0,ar3
	mov	a,r7
	anl	a,#0x03
	mov	c,acc.0
	xch	a,@r0
	rrc	a
	xch	a,@r0
	rrc	a
	mov	c,acc.0
	xch	a,@r0
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	dec	r0
	orl	a,@r0
	mov	@r0,a
	dec	r0
	dec	r0
	mov	@r0,ar5
	mov	a,r6
	anl	a,#0x03
	mov	c,acc.0
	xch	a,@r0
	rrc	a
	xch	a,@r0
	rrc	a
	mov	c,acc.0
	xch	a,@r0
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	mbrtowc.c:88: codepoint |= (*s & 0x3f);
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	anl	ar2,#0x3f
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	mov	a,r4
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,@r1
	orl	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r7,a
;	mbrtowc.c:89: s++;
;	mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	dec	@r0
	ljmp	00143$
00122$:
;	mbrtowc.c:92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	clr	c
	mov	a,r6
	subb	a,#0xd8
	mov	a,r3
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00124$
	mov	a,#0xff
	subb	a,r5
	mov	a,#0xdf
	subb	a,r6
	clr	a
	subb	a,r3
	clr	a
	subb	a,r7
	jc	00124$
;	mbrtowc.c:93: return(-1);
	mov	dptr,#0xffff
	sjmp	00145$
00124$:
;	mbrtowc.c:95: if(pwc)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00127$
;	mbrtowc.c:96: *pwc = codepoint;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00127$:
;	mbrtowc.c:97: return(n);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	mbrtowc.c:99: eilseq:
	sjmp	00145$
00128$:
;	mbrtowc.c:100: errno = EILSEQ;
	mov	_errno,#0x54
	mov	(_errno + 1),#0x00
;	mbrtowc.c:101: return(-1);
	mov	dptr,#0xffff
00145$:
;	mbrtowc.c:102: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
