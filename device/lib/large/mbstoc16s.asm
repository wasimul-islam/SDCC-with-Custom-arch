;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	.optsdcc -mmcs51 --model-large
	
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
___mbstoc16s_sloc1_1_0:
	.ds 4
___mbstoc16s_sloc2_1_0:
	.ds 2
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
	.ds 3
___mbstoc16s_PARM_3:
	.ds 2
___mbstoc16s_c16s_65536_53:
	.ds 3
___mbstoc16s_m_65536_54:
	.ds 2
___mbstoc16s_codepoint_196608_56:
	.ds 4
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
;sloc1                     Allocated with name '___mbstoc16s_sloc1_1_0'
;sloc2                     Allocated with name '___mbstoc16s_sloc2_1_0'
;s                         Allocated with name '___mbstoc16s_PARM_2'
;n                         Allocated with name '___mbstoc16s_PARM_3'
;c16s                      Allocated with name '___mbstoc16s_c16s_65536_53'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___mbstoc16s_c16s_65536_53
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	mbstoc16s.c:46: size_t m = 0;
	mov	dptr,#___mbstoc16s_m_65536_54
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	mbstoc16s.c:85: return(m);
	mov	dptr,#___mbstoc16s_PARM_3
	movx	a,@dptr
	mov	___mbstoc16s_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc0_1_0 + 1),a
	mov	r4,___mbstoc16s_sloc0_1_0
	mov	r5,(___mbstoc16s_sloc0_1_0 + 1)
00116$:
;	mbstoc16s.c:53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	mov	dptr,#___mbstoc16s_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_mbtowc_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbtowc_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___mbstoc16s_codepoint_196608_56
	mov	b,a
	push	ar5
	push	ar4
	lcall	_mbtowc
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
;	mbstoc16s.c:55: if(l < 0)
	mov	a,r3
	jnb	acc.7,00106$
;	mbstoc16s.c:56: return(-1);
	mov	dptr,#0xffff
	ret
00106$:
;	mbstoc16s.c:57: else if(!l)
	mov	a,r2
	orl	a,r3
	jnz	00107$
;	mbstoc16s.c:59: if(m < n)
	mov	dptr,#___mbstoc16s_m_65536_54
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,___mbstoc16s_sloc0_1_0
	mov	a,r1
	subb	a,(___mbstoc16s_sloc0_1_0 + 1)
	jc	00150$
	ljmp	00115$
00150$:
;	mbstoc16s.c:60: *c16s = 0;
	mov	dptr,#___mbstoc16s_c16s_65536_53
	movx	a,@dptr
	mov	___mbstoc16s_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc0_1_0 + 2),a
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
	mov	dptr,#___mbstoc16s_codepoint_196608_56
	movx	a,@dptr
	mov	___mbstoc16s_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc1_1_0 + 3),a
	clr	c
	mov	a,#0xff
	subb	a,___mbstoc16s_sloc1_1_0
	mov	a,#0xff
	subb	a,(___mbstoc16s_sloc1_1_0 + 1)
	clr	a
	subb	a,(___mbstoc16s_sloc1_1_0 + 2)
	clr	a
	subb	a,(___mbstoc16s_sloc1_1_0 + 3)
	jc	00113$
;	mbstoc16s.c:66: if (m >= n)
	mov	dptr,#___mbstoc16s_m_65536_54
	movx	a,@dptr
	mov	___mbstoc16s_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc2_1_0 + 1),a
	clr	c
	mov	a,___mbstoc16s_sloc2_1_0
	subb	a,___mbstoc16s_sloc0_1_0
	mov	a,(___mbstoc16s_sloc2_1_0 + 1)
	subb	a,(___mbstoc16s_sloc0_1_0 + 1)
	jc	00152$
	ljmp	00115$
00152$:
;	mbstoc16s.c:69: *c16s++ = codepoint;
	push	ar4
	push	ar5
	mov	dptr,#___mbstoc16s_c16s_65536_53
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r1,___mbstoc16s_sloc1_1_0
	mov	r6,(___mbstoc16s_sloc1_1_0 + 1)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	mov	dptr,#___mbstoc16s_c16s_65536_53
	mov	a,#0x02
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	mbstoc16s.c:70: m++;
	mov	dptr,#___mbstoc16s_m_65536_54
	mov	a,#0x01
	add	a,___mbstoc16s_sloc2_1_0
	movx	@dptr,a
	clr	a
	addc	a,(___mbstoc16s_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	pop	ar5
	pop	ar4
	ljmp	00114$
00113$:
;	mbstoc16s.c:74: if (m + 1 >= n)
	mov	dptr,#___mbstoc16s_m_65536_54
	movx	a,@dptr
	mov	___mbstoc16s_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc2_1_0 + 1),a
	mov	a,#0x01
	add	a,___mbstoc16s_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(___mbstoc16s_sloc2_1_0 + 1)
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	jc	00153$
	ljmp	00115$
00153$:
;	mbstoc16s.c:77: codepoint -= 0x100000;
	push	ar4
	push	ar5
	mov	r0,___mbstoc16s_sloc1_1_0
	mov	r1,(___mbstoc16s_sloc1_1_0 + 1)
	mov	a,(___mbstoc16s_sloc1_1_0 + 2)
	add	a,#0xf0
	mov	r4,a
	mov	a,(___mbstoc16s_sloc1_1_0 + 3)
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#___mbstoc16s_codepoint_196608_56
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	mbstoc16s.c:78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	dptr,#___mbstoc16s_c16s_65536_53
	movx	a,@dptr
	mov	___mbstoc16s_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc1_1_0 + 2),a
	mov	dptr,#___mbstoc16s_codepoint_196608_56
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r5
	mov	a,r6
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
	mov	r5,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	anl	ar5,#0x03
	mov	a,#0xd8
	add	a,r5
	mov	r5,a
	mov	dpl,___mbstoc16s_sloc1_1_0
	mov	dph,(___mbstoc16s_sloc1_1_0 + 1)
	mov	b,(___mbstoc16s_sloc1_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	dptr,#___mbstoc16s_c16s_65536_53
	mov	a,#0x02
	add	a,___mbstoc16s_sloc1_1_0
	movx	@dptr,a
	clr	a
	addc	a,(___mbstoc16s_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___mbstoc16s_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	mbstoc16s.c:79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	mov	dptr,#___mbstoc16s_c16s_65536_53
	movx	a,@dptr
	mov	___mbstoc16s_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___mbstoc16s_sloc1_1_0 + 2),a
	mov	dptr,#___mbstoc16s_codepoint_196608_56
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	anl	ar1,#0x03
	mov	a,#0xdc
	add	a,r1
	mov	r1,a
	mov	dpl,___mbstoc16s_sloc1_1_0
	mov	dph,(___mbstoc16s_sloc1_1_0 + 1)
	mov	b,(___mbstoc16s_sloc1_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	mov	dptr,#___mbstoc16s_c16s_65536_53
	mov	a,#0x02
	add	a,___mbstoc16s_sloc1_1_0
	movx	@dptr,a
	clr	a
	addc	a,(___mbstoc16s_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___mbstoc16s_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	mbstoc16s.c:80: m += 2;
	mov	dptr,#___mbstoc16s_m_65536_54
	mov	a,#0x02
	add	a,___mbstoc16s_sloc2_1_0
	movx	@dptr,a
	clr	a
	addc	a,(___mbstoc16s_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	mbstoc16s.c:85: return(m);
	pop	ar5
	pop	ar4
;	mbstoc16s.c:80: m += 2;
00114$:
;	mbstoc16s.c:82: s += l;
	mov	dptr,#___mbstoc16s_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#___mbstoc16s_PARM_2
	mov	a,r2
	add	a,r1
	movx	@dptr,a
	mov	a,r3
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00115$:
;	mbstoc16s.c:85: return(m);
	mov	dptr,#___mbstoc16s_m_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	mbstoc16s.c:86: }
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
