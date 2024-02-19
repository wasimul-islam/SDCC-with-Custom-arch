;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	.optsdcc -mmcs51 --model-small
	
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
;s                         Allocated with name '___mbstoc16s_PARM_2'
;n                         Allocated with name '___mbstoc16s_PARM_3'
;c16s                      Allocated to registers r2 r3 r4 
;m                         Allocated with name '___mbstoc16s_m_65536_54'
;l                         Allocated with name '___mbstoc16s_l_196608_56'
;codepoint                 Allocated with name '___mbstoc16s_codepoint_196608_56'
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	mbstoc16s.c:46: size_t m = 0;
	clr	a
	mov	___mbstoc16s_m_65536_54,a
	mov	(___mbstoc16s_m_65536_54 + 1),a
;	mbstoc16s.c:85: return(m);
00116$:
;	mbstoc16s.c:53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	mov	_mbtowc_PARM_2,___mbstoc16s_PARM_2
	mov	(_mbtowc_PARM_2 + 1),(___mbstoc16s_PARM_2 + 1)
	mov	(_mbtowc_PARM_2 + 2),(___mbstoc16s_PARM_2 + 2)
	mov	_mbtowc_PARM_3,#0x04
	mov	(_mbtowc_PARM_3 + 1),#0x00
	mov	dptr,#___mbstoc16s_codepoint_196608_56
	mov	b,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_mbtowc
	mov	___mbstoc16s_l_196608_56,dpl
	mov	(___mbstoc16s_l_196608_56 + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
;	mbstoc16s.c:55: if(l < 0)
	mov	a,(___mbstoc16s_l_196608_56 + 1)
	jnb	acc.7,00106$
;	mbstoc16s.c:56: return(-1);
	mov	dptr,#0xffff
	ret
00106$:
;	mbstoc16s.c:57: else if(!l)
	mov	a,___mbstoc16s_l_196608_56
	orl	a,(___mbstoc16s_l_196608_56 + 1)
	jnz	00107$
;	mbstoc16s.c:59: if(m < n)
	clr	c
	mov	a,___mbstoc16s_m_65536_54
	subb	a,___mbstoc16s_PARM_3
	mov	a,(___mbstoc16s_m_65536_54 + 1)
	subb	a,(___mbstoc16s_PARM_3 + 1)
	jc	00157$
	ljmp	00115$
00157$:
;	mbstoc16s.c:60: *c16s = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	mbstoc16s.c:61: break;
	ljmp	00115$
00107$:
;	mbstoc16s.c:64: if (codepoint <= 0xffff) // Basic multilingual plane
	clr	c
	mov	a,#0xff
	subb	a,___mbstoc16s_codepoint_196608_56
	mov	a,#0xff
	subb	a,(___mbstoc16s_codepoint_196608_56 + 1)
	clr	a
	subb	a,(___mbstoc16s_codepoint_196608_56 + 2)
	clr	a
	subb	a,(___mbstoc16s_codepoint_196608_56 + 3)
;	mbstoc16s.c:66: if (m >= n)
	jc	00113$
	mov	a,___mbstoc16s_m_65536_54
	subb	a,___mbstoc16s_PARM_3
	mov	a,(___mbstoc16s_m_65536_54 + 1)
	subb	a,(___mbstoc16s_PARM_3 + 1)
	jc	00159$
	ljmp	00115$
00159$:
;	mbstoc16s.c:69: *c16s++ = codepoint;
	mov	r0,___mbstoc16s_codepoint_196608_56
	mov	r2,(___mbstoc16s_codepoint_196608_56 + 1)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	mbstoc16s.c:70: m++;
	inc	___mbstoc16s_m_65536_54
	clr	a
	cjne	a,___mbstoc16s_m_65536_54,00160$
	inc	(___mbstoc16s_m_65536_54 + 1)
00160$:
	ljmp	00114$
00113$:
;	mbstoc16s.c:74: if (m + 1 >= n)
	mov	a,#0x01
	add	a,___mbstoc16s_m_65536_54
	mov	r1,a
	clr	a
	addc	a,(___mbstoc16s_m_65536_54 + 1)
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,___mbstoc16s_PARM_3
	mov	a,r2
	subb	a,(___mbstoc16s_PARM_3 + 1)
	jc	00161$
	ljmp	00115$
00161$:
;	mbstoc16s.c:77: codepoint -= 0x100000;
	mov	a,(___mbstoc16s_codepoint_196608_56 + 2)
	add	a,#0xf0
	mov	(___mbstoc16s_codepoint_196608_56 + 2),a
	mov	a,(___mbstoc16s_codepoint_196608_56 + 3)
	addc	a,#0xff
	mov	(___mbstoc16s_codepoint_196608_56 + 3),a
;	mbstoc16s.c:78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	r0,(___mbstoc16s_codepoint_196608_56 + 1)
	mov	a,(___mbstoc16s_codepoint_196608_56 + 2)
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	a,(___mbstoc16s_codepoint_196608_56 + 3)
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r1
	mov	r1,a
	mov	a,(___mbstoc16s_codepoint_196608_56 + 3)
	rr	a
	rr	a
	anl	a,#0x3f
	anl	ar1,#0x03
	mov	a,#0xd8
	add	a,r1
	mov	r1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
;	mbstoc16s.c:79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	mov	r0,___mbstoc16s_codepoint_196608_56
	mov	r1,(___mbstoc16s_codepoint_196608_56 + 1)
	anl	ar1,#0x03
	mov	a,#0xdc
	add	a,r1
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	mbstoc16s.c:80: m += 2;
	mov	a,#0x02
	add	a,___mbstoc16s_m_65536_54
	mov	___mbstoc16s_m_65536_54,a
	clr	a
	addc	a,(___mbstoc16s_m_65536_54 + 1)
	mov	(___mbstoc16s_m_65536_54 + 1),a
00114$:
;	mbstoc16s.c:82: s += l;
	mov	a,___mbstoc16s_l_196608_56
	add	a,___mbstoc16s_PARM_2
	mov	___mbstoc16s_PARM_2,a
	mov	a,(___mbstoc16s_l_196608_56 + 1)
	addc	a,(___mbstoc16s_PARM_2 + 1)
	mov	(___mbstoc16s_PARM_2 + 1),a
	ljmp	00116$
00115$:
;	mbstoc16s.c:85: return(m);
	mov	dpl,___mbstoc16s_m_65536_54
	mov	dph,(___mbstoc16s_m_65536_54 + 1)
;	mbstoc16s.c:86: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
