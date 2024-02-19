;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mds390 --model-flat24
	
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
	.globl _mbtowc_PARM_3
	.globl _mbtowc_PARM_2
	.globl _mbtowc
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
_mbtowc_PARM_2:
	.ds 4
_mbtowc_PARM_3:
	.ds 2
_mbtowc_pwc_65536_36:
	.ds 4
_mbtowc_codepoint_65536_37:
	.ds 4
_mbtowc_seqlen_65536_37:
	.ds 1
_mbtowc_sloc0_1_0:
	.ds 4
_mbtowc_sloc1_1_0:
	.ds 1
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
;s                         Allocated with name '_mbtowc_PARM_2'
;n                         Allocated with name '_mbtowc_PARM_3'
;pwc                       Allocated with name '_mbtowc_pwc_65536_36'
;codepoint                 Allocated with name '_mbtowc_codepoint_65536_37'
;seqlen                    Allocated with name '_mbtowc_seqlen_65536_37'
;i                         Allocated to registers 
;first_byte                Allocated to registers r3 
;sloc0                     Allocated with name '_mbtowc_sloc0_1_0'
;sloc1                     Allocated with name '_mbtowc_sloc1_1_0'
;------------------------------------------------------------
;	mbtowc.c:31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
_mbtowc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_mbtowc_pwc_65536_36
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
;	mbtowc.c:37: if(!s)
	mov	dptr,#_mbtowc_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbtowc_sloc0_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#_mbtowc_sloc0_1_0
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00102$
00201$:
;	mbtowc.c:38: return(0);
	mov  dptr,#0x0000
	ljmp	00126$
00102$:
;	mbtowc.c:40: seqlen = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbtowc_seqlen_65536_37
	mov	a,#0x01
	movx	@dptr,a
;	mbtowc.c:41: first_byte = *s;
	mov	dptr,#_mbtowc_sloc0_1_0
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
	lcall	__gptrget
;	genAssign: resultIsFar = TRUE
;	mbtowc.c:43: if(first_byte & 0x80)
	mov  r3,a
	jnb  acc[7],00107$
00202$:
;	mbtowc.c:45: while (first_byte & (0x80 >> seqlen))
;	genAssign: resultIsFar = FALSE
	mov	r4,#0x01
00103$:
	mov	b,r4
	inc	b
	mov	r5,#0x80
	clr  a
	mov  r6,a
	rlc	a
	mov	ov,c
	sjmp	00204$
00203$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
00204$:
	djnz	b,00203$
	mov	ar7,r3
	mov	r0,#0x00
	mov	a,r7
	anl	ar5,a
	mov	a,r0
	anl	ar6,a
	mov	a,r5
	orl	a,r6
	jz  00143$
00205$:
;	mbtowc.c:46: seqlen++;
	inc	r4
	sjmp 00103$
00143$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbtowc_seqlen_65536_37
	mov	a,r4
	movx	@dptr,a
;	mbtowc.c:47: first_byte &= (0xff >> (seqlen + 1));
	inc	r4
	mov	b,r4
	inc	b
	mov	r4,#0xff
	clr  a
	mov  r5,a
	rlc	a
	mov	ov,c
	sjmp	00207$
00206$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00207$:
	djnz	b,00206$
	mov	a,r4
	anl	ar3,a
00107$:
;	mbtowc.c:50: if(seqlen > 4 || n < seqlen)
	mov	dptr,#_mbtowc_seqlen_65536_37
	clr	c
	mov	a,#0x04
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00108$
00208$:
	mov	dptr,#_mbtowc_seqlen_65536_37
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#_mbtowc_PARM_3
	clr	c
	movx	a,@dptr
	subb	a,r4
	inc	dptr
	movx	a,@dptr
	subb	a,r5
	jnc  00136$
00209$:
00108$:
;	mbtowc.c:51: return(-1);
	mov  dptr,#0xffff
	ljmp	00126$
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
00136$:
;	genAssign: resultIsFar = FALSE
	mov	r4,#0x01
00121$:
	mov	dptr,#_mbtowc_seqlen_65536_37
	clr	c
	mov	a,r4
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00113$
00210$:
;	mbtowc.c:54: if((s[i] & 0xc0) != 0x80)
	push	ar3
	mov	dptr,#_mbtowc_sloc0_1_0
	movx	a,@dptr
	add	a,r4
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r5
	mov	dph,r3
	mov	dpx,r2
	mov	b,r6
	lcall	__gptrget
	mov	r5,a
	mov	r2,#0x00
	anl	ar5,#0xc0
	mov	r2,#0x00
	cjne	r5,#0x80,00211$
	cjne	r2,#0x00,00211$
	pop	ar3
	sjmp 00122$
00211$:
	pop	ar3
;	mbtowc.c:55: return(-1);
	mov  dptr,#0xffff
	ljmp	00126$
00122$:
;	mbtowc.c:53: for(i = 1; i < seqlen; i++)
	inc	r4
	sjmp 00121$
00113$:
;	mbtowc.c:57: codepoint = first_byte;
	mov	ar2,r3
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	mov	dptr,#_mbtowc_sloc0_1_0
	mov	dps, #1
	mov	dptr, #_mbtowc_PARM_2
	dec	dps
	movx	a,@dptr
	add	a,#0x01
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#_mbtowc_seqlen_65536_37
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_mbtowc_sloc1_1_0
	mov	a,r6
	dec	a
	movx	@dptr,a
	mov	dptr,#_mbtowc_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbtowc_sloc0_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
00124$:
	mov	dptr,#_mbtowc_sloc1_1_0
	movx	a,@dptr
	jnz	00212$
	ljmp	00114$
00212$:
;	mbtowc.c:61: codepoint <<= 6;
	mov	ar1,r4
	mov	a,r5
	anl	a,#0x03
	mov	c,acc[0]
	xch	a,r1
	rrc	a
	xch	a,r1
	rrc	a
	mov	c,acc[0]
	xch	a,r1
	rrc	a
	xch	a,r1
	rrc	a
	xch	a,r1
	mov	r6,a
	mov	a,r3
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r1
	mov	r1,a
	mov	ar7,r2
	mov	a,r3
	anl	a,#0x03
	mov	c,acc[0]
	xch	a,r7
	rrc	a
	xch	a,r7
	rrc	a
	mov	c,acc[0]
	xch	a,r7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbtowc_codepoint_65536_37
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	mbtowc.c:62: codepoint |= (*s & 0x3f);
	mov	dptr,#_mbtowc_sloc0_1_0
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
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
	anl	ar6,#0x3f
	mov	r7,#0x00
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	dptr,#_mbtowc_codepoint_65536_37
	movx	a,@dptr
	orl	a,r6
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	orl	a,r7
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	orl	a,r0
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	orl	a,r1
	mov	r5,a
;	mbtowc.c:63: s++;
	mov	dptr,#_mbtowc_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
;	mbtowc.c:59: for(s++, i = seqlen - 1; i; i--)
	mov	dptr,#_mbtowc_sloc1_1_0
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	ljmp	00124$
00114$:
;	mbtowc.c:66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	clr	c
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0xd8
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	jc   00116$
00213$:
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0xdf
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	jc   00116$
00214$:
;	mbtowc.c:67: return(-1);
	mov  dptr,#0xffff
	sjmp 00126$
00116$:
;	mbtowc.c:69: if(pwc)
	mov	dptr,#_mbtowc_pwc_65536_36
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00119$
00215$:
;	mbtowc.c:70: *pwc = codepoint;
	mov	dptr,#_mbtowc_pwc_65536_36
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
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r4
	mov	a,r5
	lcall	__gptrputWord
00119$:
;	mbtowc.c:71: return(codepoint ? seqlen : 0);
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jz  00128$
00216$:
	mov	dptr,#_mbtowc_seqlen_65536_37
	movx	a,@dptr
	mov	dpl1,a
	mov	dph1,#0x00
	sjmp 00129$
00128$:
;	genAssign: resultIsFar = FALSE
	clr	a
	mov	dpl1,a
	mov	dph1,a
00129$:
	mov	dpl,dpl1
	mov	dph,dph1
00126$:
;	mbtowc.c:72: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
