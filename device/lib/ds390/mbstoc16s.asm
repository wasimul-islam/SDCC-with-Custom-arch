;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
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
	.globl _mbtowc
	.globl ___mbstoc16s_PARM_3
	.globl ___mbstoc16s_PARM_2
	.globl ___mbstoc16s
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
___mbstoc16s_PARM_2:
	.ds 4
___mbstoc16s_PARM_3:
	.ds 2
___mbstoc16s_c16s_65536_50:
	.ds 4
___mbstoc16s_m_65536_51:
	.ds 2
___mbstoc16s_l_196608_53:
	.ds 2
___mbstoc16s_codepoint_196608_53:
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
;Allocation info for local variables in function '__mbstoc16s'
;------------------------------------------------------------
;s                         Allocated with name '___mbstoc16s_PARM_2'
;n                         Allocated with name '___mbstoc16s_PARM_3'
;c16s                      Allocated with name '___mbstoc16s_c16s_65536_50'
;m                         Allocated with name '___mbstoc16s_m_65536_51'
;l                         Allocated with name '___mbstoc16s_l_196608_53'
;codepoint                 Allocated with name '___mbstoc16s_codepoint_196608_53'
;------------------------------------------------------------
;	mbstoc16s.c:44: size_t __mbstoc16s(char16_t *restrict c16s, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function __mbstoc16s
;	-----------------------------------------
___mbstoc16s:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	mbstoc16s.c:46: size_t m = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___mbstoc16s_m_65536_51
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	mbstoc16s.c:85: return(m);
00116$:
;	mbstoc16s.c:53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#___mbstoc16s_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbtowc_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbtowc_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar4
	push	ar5
	mov dptr,#___mbstoc16s_codepoint_196608_53
	mov	b,#0x00
	lcall	_mbtowc
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___mbstoc16s_l_196608_53
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	mbstoc16s.c:55: if(l < 0)
	mov	dptr,#___mbstoc16s_l_196608_53
	inc	dptr
	movx	a,@dptr
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	jnb  acc[7],00106$
00155$:
;	mbstoc16s.c:56: return(-1);
	mov  dptr,#0xffff
	ljmp	00118$
00106$:
;	mbstoc16s.c:57: else if(!l)
	mov	dptr,#___mbstoc16s_l_196608_53
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00107$
00156$:
;	mbstoc16s.c:59: if(m < n)
	mov	dptr,#___mbstoc16s_PARM_3
	mov	dps, #1
	mov	dptr, #___mbstoc16s_m_65536_51
	dec	dps
	clr	c
	mov	dps,#1
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00157$
	ljmp	00115$
00157$:
;	mbstoc16s.c:60: *c16s = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	clr  a
	mov  acc1,a
	lcall	__gptrputWord
;	mbstoc16s.c:61: break;
	ljmp	00115$
00107$:
;	mbstoc16s.c:64: if (codepoint <= 0xffff) // Basic multilingual plane
	mov	dptr,#___mbstoc16s_codepoint_196608_53
	clr	c
	mov	a,#0xff
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,#0xff
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	clr	a
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	clr	a
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00113$
00158$:
;	mbstoc16s.c:66: if (m >= n)
	mov	dptr,#___mbstoc16s_PARM_3
	mov	dps, #1
	mov	dptr, #___mbstoc16s_m_65536_51
	dec	dps
	clr	c
	mov	dps,#1
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00159$
	ljmp	00115$
00159$:
;	mbstoc16s.c:69: *c16s++ = codepoint;
	mov	dptr,#___mbstoc16s_codepoint_196608_53
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	acc1, r0
	mov	a,r1
	lcall	__gptrputWord
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	mbstoc16s.c:70: m++;
	mov	dptr,#___mbstoc16s_m_65536_51
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00114$
00113$:
;	mbstoc16s.c:74: if (m + 1 >= n)
	mov	dptr,#___mbstoc16s_m_65536_51
	movx	a,@dptr
	add	a,#0x01
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r1,a
	mov	dptr,#___mbstoc16s_PARM_3
	clr	c
	mov	a,r0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00160$
	ljmp	00115$
00160$:
;	mbstoc16s.c:77: codepoint -= 0x100000;
	mov	dptr,#___mbstoc16s_codepoint_196608_53
	movx	a,@dptr
	add	a,#0x00
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xf0
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___mbstoc16s_codepoint_196608_53
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	mbstoc16s.c:78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	dptr,#___mbstoc16s_codepoint_196608_53
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r7
	mov	r7,a
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r0,a
	mov	r1,#0x00
	anl	ar7,#0x03
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,#0xd8
	addc	a,r7
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	acc1, r6
	mov	a,r7
	lcall	__gptrputWord
	mov	dptr,#___mbstoc16s_c16s_65536_50
	mov	a,#0x02
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	mbstoc16s.c:79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	mov	dptr,#___mbstoc16s_codepoint_196608_53
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x03
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,#0xdc
	addc	a,r7
	mov	r7,a
	mov	dptr,#___mbstoc16s_c16s_65536_50
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
	mov	acc1, r6
	mov	a,r7
	lcall	__gptrputWord
	mov	dptr,#___mbstoc16s_c16s_65536_50
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
;	mbstoc16s.c:80: m += 2;
	mov	dptr,#___mbstoc16s_m_65536_51
	movx	a,@dptr
	add	a,#0x02
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00114$:
;	mbstoc16s.c:82: s += l;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#___mbstoc16s_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#___mbstoc16s_l_196608_53
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	movx	a,@dptr
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	dptr,#___mbstoc16s_PARM_2
	mov	a,r2
	add	a,r6
	movx	@dptr,a
	mov	a,r3
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,r0
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00116$
00115$:
;	mbstoc16s.c:85: return(m);
	mov     dps, #1
	mov     dptr, #___mbstoc16s_m_65536_51
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
00118$:
;	mbstoc16s.c:86: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
