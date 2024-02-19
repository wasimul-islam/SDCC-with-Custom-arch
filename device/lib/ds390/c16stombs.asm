;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16stombs
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
	.globl ___memcpy
	.globl _wctomb
	.globl ___c16stombs_PARM_3
	.globl ___c16stombs_PARM_2
	.globl ___c16stombs
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
___c16stombs_PARM_2:
	.ds 4
___c16stombs_PARM_3:
	.ds 2
___c16stombs_s_65536_76:
	.ds 4
___c16stombs_b_65536_77:
	.ds 4
___c16stombs_l_196608_79:
	.ds 2
___c16stombs_codepoint_196608_79:
	.ds 4
___c16stombs_sloc0_1_0:
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
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;c16s                      Allocated with name '___c16stombs_PARM_2'
;n                         Allocated with name '___c16stombs_PARM_3'
;s                         Allocated with name '___c16stombs_s_65536_76'
;m                         Allocated to registers r6 r7 
;b                         Allocated with name '___c16stombs_b_65536_77'
;l                         Allocated with name '___c16stombs_l_196608_79'
;codepoint                 Allocated with name '___c16stombs_codepoint_196608_79'
;sloc0                     Allocated with name '___c16stombs_sloc0_1_0'
;sloc1                     Allocated with name '___c16stombs_sloc1_1_0'
;------------------------------------------------------------
;	c16stombs.c:44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
___c16stombs:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #___c16stombs_s_65536_76
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
;	c16stombs.c:46: size_t m = 0;
;	genAssign: resultIsFar = TRUE
	mov	r6,#0x00
	mov	r7,#0x00
;	c16stombs.c:87: return(m);
00119$:
;	c16stombs.c:54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	mov	dptr,#___c16stombs_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___c16stombs_sloc0_1_0
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
	mov	dptr,#___c16stombs_sloc0_1_0
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
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	clr	c
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0xd8
	jc   00106$
00155$:
	clr	c
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0xe0
	jc   00107$
00156$:
00106$:
;	c16stombs.c:56: codepoint = c16s[0];
	push	ar6
	push	ar7
	mov	dptr,#___c16stombs_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	mov	dptr,#___c16stombs_codepoint_196608_79
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	c16stombs.c:57: c16s++;
	mov	dptr,#___c16stombs_PARM_2
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
	pop	ar7
	pop	ar6
	ljmp	00108$
00107$:
;	c16stombs.c:59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0xdb
	subb	a,r5
	jc   00101$
00157$:
	push	ar6
	push	ar7
	mov	dptr,#___c16stombs_sloc0_1_0
	movx	a,@dptr
	add	a,#0x02
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r2
	mov	b,r3
	lcall	__gptrgetWord
	mov	r0,a
	mov	r1,acc1
	clr	c
	mov	a,r0
	subb	a,#0x00
	mov	a,r1
	subb	a,#0xdc
	pop	ar7
	pop	ar6
	jc   00101$
00158$:
	clr	c
	mov	a,#0xff
	subb	a,r0
	mov	a,#0xdf
	subb	a,r1
	jnc  00102$
00159$:
00101$:
;	c16stombs.c:60: return(-1);
	mov  dptr,#0xffff
	ljmp	00121$
00102$:
;	c16stombs.c:63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
	push	ar6
	push	ar7
	clr  a
	mov  r2,a
	mov  r3,a
	mov  a,r5
	add	a,acc
	xch	a,r2
	rlc	a
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
	mov	a,r4
	rl	a
	rl	a
	anl	a,#0x03
	orl	a,r2
	mov	r2,a
	mov	a,r4
	add	a,acc
	add	a,acc
	mov	r5,a
	clr  a
	mov  r4,a
	mov  r6,a
	mov  r7,a
	mov  a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dptr,#___c16stombs_codepoint_196608_79
	clr	a
	add	a,r4
	movx	@dptr,a
	mov	a,#0x24
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,#0xa0
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,#0xfc
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	c16stombs.c:64: c16s += 2;
	mov	dptr,#___c16stombs_sloc0_1_0
	mov	dps, #1
	mov	dptr, #___c16stombs_PARM_2
	dec	dps
	movx	a,@dptr
	add	a,#0x04
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
;	c16stombs.c:87: return(m);
	pop	ar7
	pop	ar6
;	c16stombs.c:64: c16s += 2;
00108$:
;	c16stombs.c:67: if(!codepoint)
	mov	dptr,#___c16stombs_codepoint_196608_79
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00113$
00160$:
;	c16stombs.c:69: if(m < n)
	mov	dptr,#___c16stombs_PARM_3
	clr	c
	mov	a,r6
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r7
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00161$
	ljmp	00118$
00161$:
;	c16stombs.c:70: *s = 0;
	mov	dptr,#___c16stombs_s_65536_76
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
	clr	a
	lcall	__gptrput
;	c16stombs.c:71: break;
	ljmp	00118$
00113$:
;	c16stombs.c:74: l = wctomb(b, codepoint);
	mov	dptr,#___c16stombs_codepoint_196608_79
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_wctomb_PARM_2
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
	push	ar6
	push	ar7
	mov dptr,#___c16stombs_b_65536_77
	mov	b,#0x00
	lcall	_wctomb
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___c16stombs_l_196608_79
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	c16stombs.c:76: if(l < 0)
	mov	dptr,#___c16stombs_l_196608_79
	inc	dptr
	movx	a,@dptr
	jnb  acc[7],00115$
00162$:
;	c16stombs.c:77: return(-1);
	mov  dptr,#0xffff
	ljmp	00121$
00115$:
;	c16stombs.c:79: if(m + l > n)
	mov	dptr,#___c16stombs_l_196608_79
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r0,a
	mov	a,r5
	addc	a,r7
	mov	r1,a
	mov	dptr,#___c16stombs_PARM_3
	clr	c
	movx	a,@dptr
	subb	a,r0
	inc	dptr
	movx	a,@dptr
	subb	a,r1
	jnc	00163$
	ljmp	00118$
00163$:
;	c16stombs.c:82: memcpy(s, b, l);
	mov	dptr,#___c16stombs_s_65536_76
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
	mov	dptr,#___memcpy_PARM_2
	mov	a,#___c16stombs_b_65536_77
	movx	@dptr,a
	inc	dptr
	mov	a,#(___c16stombs_b_65536_77 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___c16stombs_b_65536_77 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#___c16stombs_l_196608_79
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___memcpy_PARM_3
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r2
	mov	b,r3
	lcall	___memcpy
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	c16stombs.c:83: s += l;
	mov	dptr,#___c16stombs_l_196608_79
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	movx	a,@dptr
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	dptr,#___c16stombs_s_65536_76
	movx	a,@dptr
	add	a,r2
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r0
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
;	c16stombs.c:84: m += l;
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	ljmp	00119$
00118$:
;	c16stombs.c:87: return(m);
	mov	dpl,r6
	mov	dph,r7
00121$:
;	c16stombs.c:88: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
