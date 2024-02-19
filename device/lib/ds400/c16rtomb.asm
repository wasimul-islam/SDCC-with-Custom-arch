;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16rtomb
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
	.globl _wctomb
	.globl _c16rtomb_PARM_3
	.globl _c16rtomb_PARM_2
	.globl _c16rtomb
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
_c16rtomb_PARM_2:
	.ds 2
_c16rtomb_PARM_3:
	.ds 4
_c16rtomb_s_65536_42:
	.ds 4
_c16rtomb_buf_65536_43:
	.ds 4
_c16rtomb_sps_65536_43:
	.ds 3
_c16rtomb_sloc0_1_0:
	.ds 4
_c16rtomb_sloc2_1_0:
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
;Allocation info for local variables in function 'c16rtomb'
;------------------------------------------------------------
;c16                       Allocated with name '_c16rtomb_PARM_2'
;ps                        Allocated with name '_c16rtomb_PARM_3'
;s                         Allocated with name '_c16rtomb_s_65536_42'
;codepoint                 Allocated to registers r2 r3 r4 r5 
;buf                       Allocated with name '_c16rtomb_buf_65536_43'
;sps                       Allocated with name '_c16rtomb_sps_65536_43'
;high_surrogate            Allocated to registers r6 r7 
;sloc0                     Allocated with name '_c16rtomb_sloc0_1_0'
;sloc1                     Allocated with name '_c16rtomb_sloc1_1_0'
;sloc2                     Allocated with name '_c16rtomb_sloc2_1_0'
;sloc3                     Allocated with name '_c16rtomb_sloc3_1_0'
;------------------------------------------------------------
;	c16rtomb.c:35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
_c16rtomb:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_c16rtomb_s_65536_42
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
;	c16rtomb.c:41: if(!s)
	mov	dptr,#_c16rtomb_s_65536_42
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00102$
00156$:
;	c16rtomb.c:42: s = buf;
	mov	dptr,#_c16rtomb_s_65536_42
	mov	a,#_c16rtomb_buf_65536_43
	movx	@dptr,a
	inc	dptr
	mov	a,#(_c16rtomb_buf_65536_43 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(_c16rtomb_buf_65536_43 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00102$:
;	c16rtomb.c:44: if(!ps)
	mov	dptr,#_c16rtomb_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00104$
00157$:
;	c16rtomb.c:45: ps = &sps;
	mov	dptr,#_c16rtomb_PARM_3
	mov	a,#_c16rtomb_sps_65536_43
	movx	@dptr,a
	inc	dptr
	mov	a,#(_c16rtomb_sps_65536_43 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(_c16rtomb_sps_65536_43 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00104$:
;	c16rtomb.c:47: if (!c16) // 0 always resets conversion state.
	mov	dptr,#_c16rtomb_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00119$
00158$:
;	c16rtomb.c:49: ps->c[1] = ps->c[2] = 0;
	mov	dptr,#_c16rtomb_PARM_3
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
	mov	a,#0x01
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	clr	a
	addc	a,r0
	mov	r4,a
	mov	ar5,r1
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	clr	a
	addc	a,r0
	mov	r0,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	clr	a
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	c16rtomb.c:50: codepoint = 0;
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	ljmp	00120$
00119$:
;	c16rtomb.c:52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
	mov	dptr,#_c16rtomb_PARM_3
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
	mov	dptr,#_c16rtomb_sloc0_1_0
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r0
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#_c16rtomb_sloc0_1_0
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
	mov  r2,a
	jnz  00114$
00159$:
	mov	a,#0x02
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	clr	a
	addc	a,r0
	mov	r4,a
	mov	ar5,r1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r6,a
	jnz	00160$
	ljmp	00115$
00160$:
00114$:
;	c16rtomb.c:56: if(c16 < 0xdc00 || c16 > 0xdfff)
	mov	dptr,#_c16rtomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0xdc
	jnc	00161$
	ljmp	00121$
00161$:
	mov	dptr,#_c16rtomb_PARM_2
	clr	c
	mov	a,#0xff
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,#0xdf
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc	00162$
	ljmp	00121$
00162$:
;	c16rtomb.c:59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
	mov	dptr,#_c16rtomb_PARM_3
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
	mov	dptr,#_c16rtomb_sloc2_1_0
	mov	a,#0x01
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
	mov	dptr,#_c16rtomb_sloc2_1_0
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
	mov	ar0,r6
	mov	r1,#0x00
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	ar7,r6
	mov	r6,#0x00
	mov	a,r6
	add	a,r0
	mov	r6,a
	mov	a,r7
	addc	a,r1
	mov	r7,a
;	c16rtomb.c:60: ps->c[1] = ps->c[2] = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	mov	dptr,#_c16rtomb_sloc2_1_0
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
;	c16rtomb.c:61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
	mov	a,r6
	add	a,acc
	add	a,acc
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_c16rtomb_PARM_2
	movx	a,@dptr
	add	a,r6
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,r7
	mov	r7,a
	clr  a
	mov  r0,a
	mov  r1,a
	add	a,r6
	mov	r2,a
	mov	a,#0x24
	addc	a,r7
	mov	r3,a
	clr	a
	addc	a,r0
	mov	r4,a
	clr	a
	addc	a,r1
	mov	r5,a
	ljmp	00120$
00115$:
;	c16rtomb.c:63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
	mov	dptr,#_c16rtomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0xff
	inc	dptr
	movx	a,@dptr
	subb	a,#0xd7
	jc   00110$
00163$:
	mov	dptr,#_c16rtomb_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,#0x00
	inc	dptr
	movx	a,@dptr
	subb	a,#0xe0
	jc   00111$
00164$:
00110$:
;	c16rtomb.c:64: codepoint = c16;
	mov	dptr,#_c16rtomb_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#0x00
	mov	r1,#0x00
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
	sjmp 00120$
00111$:
;	c16rtomb.c:67: if(c16 > 0xdbff)
	mov	dptr,#_c16rtomb_PARM_2
	clr	c
	mov	a,#0xff
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,#0xdb
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00121$
00165$:
;	c16rtomb.c:70: ps->c[1] = c16 & 0xff;
	mov	dptr,#_c16rtomb_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_c16rtomb_sloc0_1_0
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
;	c16rtomb.c:71: ps->c[2] = c16 >> 8;
	mov	dptr,#_c16rtomb_PARM_2
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	c16rtomb.c:72: return(0);
	mov  dptr,#0x0000
	sjmp 00122$
00120$:
;	c16rtomb.c:75: return(wctomb(s, codepoint));
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_wctomb_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dps
	mov	dptr,#_c16rtomb_s_65536_42
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_wctomb
;	c16rtomb.c:77: eilseq:
	sjmp 00122$
00121$:
;	c16rtomb.c:78: errno = EILSEQ;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_errno
	mov	a,#0x54
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	c16rtomb.c:79: return(-1);
	mov  dptr,#0xffff
00122$:
;	c16rtomb.c:80: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
