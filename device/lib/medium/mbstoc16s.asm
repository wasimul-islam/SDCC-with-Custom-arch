;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	.optsdcc -mmcs51 --model-medium
	
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
___mbstoc16s_sloc0_1_0:
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
___mbstoc16s_PARM_2:
	.ds 3
___mbstoc16s_PARM_3:
	.ds 2
___mbstoc16s_m_65536_54:
	.ds 2
___mbstoc16s_l_196608_56:
	.ds 2
___mbstoc16s_codepoint_196608_56:
	.ds 4
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
;sloc0                     Allocated with name '___mbstoc16s_sloc0_1_0'
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
	mov	___mbstoc16s_sloc0_1_0,dpl
	mov	(___mbstoc16s_sloc0_1_0 + 1),dph
	mov	(___mbstoc16s_sloc0_1_0 + 2),b
;	mbstoc16s.c:46: size_t m = 0;
	mov	r0,#___mbstoc16s_m_65536_54
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	mbstoc16s.c:85: return(m);
00116$:
;	mbstoc16s.c:53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	mov	r0,#___mbstoc16s_PARM_2
	mov	r1,#_mbtowc_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#_mbtowc_PARM_3
	mov	a,#0x04
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	dptr,#___mbstoc16s_codepoint_196608_56
	mov	b,#0x60
	lcall	_mbtowc
	mov	r0,#___mbstoc16s_l_196608_56
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
;	mbstoc16s.c:55: if(l < 0)
	mov	r0,#(___mbstoc16s_l_196608_56 + 1)
	movx	a,@r0
	jnb	acc.7,00106$
;	mbstoc16s.c:56: return(-1);
	mov	dptr,#0xffff
	ret
00106$:
;	mbstoc16s.c:57: else if(!l)
	mov	r0,#___mbstoc16s_l_196608_56
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00107$
;	mbstoc16s.c:59: if(m < n)
	mov	r0,#___mbstoc16s_m_65536_54
	mov	r1,#___mbstoc16s_PARM_3
	clr	c
	movx	a,@r1
	mov	b,a
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	jc	00157$
	ljmp	00115$
00157$:
;	mbstoc16s.c:60: *c16s = 0;
	mov	dpl,___mbstoc16s_sloc0_1_0
	mov	dph,(___mbstoc16s_sloc0_1_0 + 1)
	mov	b,(___mbstoc16s_sloc0_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	mbstoc16s.c:61: break;
	ljmp	00115$
00107$:
;	mbstoc16s.c:64: if (codepoint <= 0xffff) // Basic multilingual plane
	mov	r0,#___mbstoc16s_codepoint_196608_56
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0xff
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,#0xff
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	clr	a
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	clr	a
	subb	a,b
	jc	00113$
;	mbstoc16s.c:66: if (m >= n)
	mov	r0,#___mbstoc16s_m_65536_54
	mov	r1,#___mbstoc16s_PARM_3
	clr	c
	movx	a,@r1
	mov	b,a
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	jc	00159$
	ljmp	00115$
00159$:
;	mbstoc16s.c:69: *c16s++ = codepoint;
	mov	r0,#___mbstoc16s_codepoint_196608_56
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,___mbstoc16s_sloc0_1_0
	mov	dph,(___mbstoc16s_sloc0_1_0 + 1)
	mov	b,(___mbstoc16s_sloc0_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	___mbstoc16s_sloc0_1_0,dpl
	mov	(___mbstoc16s_sloc0_1_0 + 1),dph
;	mbstoc16s.c:70: m++;
	mov	r0,#___mbstoc16s_m_65536_54
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	ljmp	00114$
00113$:
;	mbstoc16s.c:74: if (m + 1 >= n)
	mov	r0,#___mbstoc16s_m_65536_54
	movx	a,@r0
	add	a,#0x01
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r4,a
	mov	r0,#___mbstoc16s_PARM_3
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r3
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r4
	subb	a,b
	jc	00160$
	ljmp	00115$
00160$:
;	mbstoc16s.c:77: codepoint -= 0x100000;
	mov	r0,#(___mbstoc16s_codepoint_196608_56 + 2)
	movx	a,@r0
	add	a,#0xf0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0xff
	movx	@r0,a
;	mbstoc16s.c:78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	r0,#(___mbstoc16s_codepoint_196608_56 + 1)
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
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
	movx	a,@r0
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r3
	mov	r3,a
	movx	a,@r0
	rr	a
	rr	a
	anl	a,#0x3f
	anl	ar3,#0x03
	mov	a,#0xd8
	add	a,r3
	mov	r3,a
	mov	dpl,___mbstoc16s_sloc0_1_0
	mov	dph,(___mbstoc16s_sloc0_1_0 + 1)
	mov	b,(___mbstoc16s_sloc0_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	mov	a,#0x02
	add	a,___mbstoc16s_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(___mbstoc16s_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(___mbstoc16s_sloc0_1_0 + 2)
;	mbstoc16s.c:79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	mov	r0,#___mbstoc16s_codepoint_196608_56
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
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
	mov	a,#0x02
	add	a,r5
	mov	___mbstoc16s_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(___mbstoc16s_sloc0_1_0 + 1),a
	mov	(___mbstoc16s_sloc0_1_0 + 2),r7
;	mbstoc16s.c:80: m += 2;
	mov	r0,#___mbstoc16s_m_65536_54
	movx	a,@r0
	add	a,#0x02
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
00114$:
;	mbstoc16s.c:82: s += l;
	mov	r0,#___mbstoc16s_PARM_2
	mov	r1,#___mbstoc16s_l_196608_56
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	xch	a,b
	inc	r0
	movx	a,@r0
	addc	a,b
	movx	@r0,a
	ljmp	00116$
00115$:
;	mbstoc16s.c:85: return(m);
	mov	r0,#___mbstoc16s_m_65536_54
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
;	mbstoc16s.c:86: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
