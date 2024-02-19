;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16stombs
	.optsdcc -mmcs51 --model-small
	
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
___c16stombs_PARM_2:
	.ds 3
___c16stombs_PARM_3:
	.ds 2
___c16stombs_s_65536_78:
	.ds 3
___c16stombs_m_65536_79:
	.ds 2
___c16stombs_b_65536_79:
	.ds 4
___c16stombs_sloc0_1_0:
	.ds 2
___c16stombs_sloc1_1_0:
	.ds 3
___c16stombs_sloc2_1_0:
	.ds 2
___c16stombs_sloc3_1_0:
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
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;c16s                      Allocated with name '___c16stombs_PARM_2'
;n                         Allocated with name '___c16stombs_PARM_3'
;s                         Allocated with name '___c16stombs_s_65536_78'
;m                         Allocated with name '___c16stombs_m_65536_79'
;b                         Allocated with name '___c16stombs_b_65536_79'
;l                         Allocated to registers r7 r6 
;codepoint                 Allocated to registers r3 r4 r6 r7 
;sloc0                     Allocated with name '___c16stombs_sloc0_1_0'
;sloc1                     Allocated with name '___c16stombs_sloc1_1_0'
;sloc2                     Allocated with name '___c16stombs_sloc2_1_0'
;sloc3                     Allocated with name '___c16stombs_sloc3_1_0'
;------------------------------------------------------------
;	c16stombs.c:44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
___c16stombs:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	___c16stombs_s_65536_78,dpl
	mov	(___c16stombs_s_65536_78 + 1),dph
	mov	(___c16stombs_s_65536_78 + 2),b
;	c16stombs.c:46: size_t m = 0;
	clr	a
	mov	___c16stombs_m_65536_79,a
	mov	(___c16stombs_m_65536_79 + 1),a
;	c16stombs.c:87: return(m);
00119$:
;	c16stombs.c:54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	mov	___c16stombs_sloc1_1_0,___c16stombs_PARM_2
	mov	(___c16stombs_sloc1_1_0 + 1),(___c16stombs_PARM_2 + 1)
	mov	(___c16stombs_sloc1_1_0 + 2),(___c16stombs_PARM_2 + 2)
	mov	dpl,___c16stombs_sloc1_1_0
	mov	dph,(___c16stombs_sloc1_1_0 + 1)
	mov	b,(___c16stombs_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	___c16stombs_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(___c16stombs_sloc0_1_0 + 1),a
	clr	c
	subb	a,#0xd8
	jc	00106$
	mov	a,#0x100 - 0xe0
	add	a,(___c16stombs_sloc0_1_0 + 1)
	jnc	00107$
00106$:
;	c16stombs.c:56: codepoint = c16s[0];
	mov	___c16stombs_sloc1_1_0,___c16stombs_PARM_2
	mov	(___c16stombs_sloc1_1_0 + 1),(___c16stombs_PARM_2 + 1)
	mov	(___c16stombs_sloc1_1_0 + 2),(___c16stombs_PARM_2 + 2)
	mov	dpl,___c16stombs_sloc1_1_0
	mov	dph,(___c16stombs_sloc1_1_0 + 1)
	mov	b,(___c16stombs_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	c16stombs.c:57: c16s++;
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,#0x02
	add	a,___c16stombs_sloc1_1_0
	mov	___c16stombs_PARM_2,a
	clr	a
	addc	a,(___c16stombs_sloc1_1_0 + 1)
	mov	(___c16stombs_PARM_2 + 1),a
	mov	(___c16stombs_PARM_2 + 2),(___c16stombs_sloc1_1_0 + 2)
	ljmp	00108$
00107$:
;	c16stombs.c:59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
	clr	c
	mov	a,#0xff
	subb	a,___c16stombs_sloc0_1_0
	mov	a,#0xdb
	subb	a,(___c16stombs_sloc0_1_0 + 1)
	jc	00101$
	mov	a,#0x02
	add	a,___c16stombs_sloc1_1_0
	mov	r2,a
	clr	a
	addc	a,(___c16stombs_sloc1_1_0 + 1)
	mov	r1,a
	mov	r5,(___c16stombs_sloc1_1_0 + 2)
	mov	dpl,r2
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	___c16stombs_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(___c16stombs_sloc2_1_0 + 1),a
	clr	c
	subb	a,#0xdc
	jc	00101$
	mov	a,#0xff
	subb	a,___c16stombs_sloc2_1_0
	mov	a,#0xdf
	subb	a,(___c16stombs_sloc2_1_0 + 1)
	jnc	00102$
00101$:
;	c16stombs.c:60: return(-1);
	mov	dptr,#0xffff
	ret
00102$:
;	c16stombs.c:63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
	mov	r0,___c16stombs_sloc0_1_0
	mov	r1,(___c16stombs_sloc0_1_0 + 1)
	mov	r2,#0x00
	mov	(___c16stombs_sloc3_1_0 + 2),r1
	mov	a,r2
	xch	a,(___c16stombs_sloc3_1_0 + 2)
	add	a,acc
	xch	a,(___c16stombs_sloc3_1_0 + 2)
	rlc	a
	xch	a,(___c16stombs_sloc3_1_0 + 2)
	add	a,acc
	xch	a,(___c16stombs_sloc3_1_0 + 2)
	rlc	a
	mov	(___c16stombs_sloc3_1_0 + 3),a
	mov	a,r0
	rl	a
	rl	a
	anl	a,#0x03
	orl	a,(___c16stombs_sloc3_1_0 + 2)
	mov	(___c16stombs_sloc3_1_0 + 2),a
	mov	a,r0
	add	a,r0
	add	a,acc
	mov	(___c16stombs_sloc3_1_0 + 1),a
	mov	___c16stombs_sloc3_1_0,#0x00
	mov	r0,___c16stombs_sloc2_1_0
	mov	r1,(___c16stombs_sloc2_1_0 + 1)
	clr	a
	mov	r2,a
	mov	r5,a
	mov	a,r0
	add	a,___c16stombs_sloc3_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(___c16stombs_sloc3_1_0 + 1)
	mov	r1,a
	mov	a,r2
	addc	a,(___c16stombs_sloc3_1_0 + 2)
	mov	r2,a
	mov	a,r5
	addc	a,(___c16stombs_sloc3_1_0 + 3)
	mov	r5,a
	mov	ar3,r0
	mov	a,#0x24
	add	a,r1
	mov	r4,a
	mov	a,#0xa0
	addc	a,r2
	mov	r6,a
	mov	a,#0xfc
	addc	a,r5
	mov	r7,a
;	c16stombs.c:64: c16s += 2;
	mov	a,#0x04
	add	a,___c16stombs_sloc1_1_0
	mov	___c16stombs_PARM_2,a
	clr	a
	addc	a,(___c16stombs_sloc1_1_0 + 1)
	mov	(___c16stombs_PARM_2 + 1),a
	mov	(___c16stombs_PARM_2 + 2),(___c16stombs_sloc1_1_0 + 2)
00108$:
;	c16stombs.c:67: if(!codepoint)
	mov	a,r3
	orl	a,r4
	orl	a,r6
	orl	a,r7
	jnz	00113$
;	c16stombs.c:69: if(m < n)
	clr	c
	mov	a,___c16stombs_m_65536_79
	subb	a,___c16stombs_PARM_3
	mov	a,(___c16stombs_m_65536_79 + 1)
	subb	a,(___c16stombs_PARM_3 + 1)
	jc	00161$
	ljmp	00118$
00161$:
;	c16stombs.c:70: *s = 0;
	mov	dpl,___c16stombs_s_65536_78
	mov	dph,(___c16stombs_s_65536_78 + 1)
	mov	b,(___c16stombs_s_65536_78 + 2)
	clr	a
	lcall	__gptrput
;	c16stombs.c:71: break;
	sjmp	00118$
00113$:
;	c16stombs.c:74: l = wctomb(b, codepoint);
	mov	_wctomb_PARM_2,r3
	mov	(_wctomb_PARM_2 + 1),r4
	mov	(_wctomb_PARM_2 + 2),r6
	mov	(_wctomb_PARM_2 + 3),r7
	mov	dptr,#___c16stombs_b_65536_79
	mov	b,#0x40
	lcall	_wctomb
	mov	r7,dpl
;	c16stombs.c:76: if(l < 0)
	mov	a,dph
	mov	r6,a
	jnb	acc.7,00115$
;	c16stombs.c:77: return(-1);
	mov	dptr,#0xffff
	ret
00115$:
;	c16stombs.c:79: if(m + l > n)
	mov	ar5,r7
	mov	ar4,r6
	mov	a,r5
	add	a,___c16stombs_m_65536_79
	mov	r2,a
	mov	a,r4
	addc	a,(___c16stombs_m_65536_79 + 1)
	mov	r3,a
	clr	c
	mov	a,___c16stombs_PARM_3
	subb	a,r2
	mov	a,(___c16stombs_PARM_3 + 1)
	subb	a,r3
	jc	00118$
;	c16stombs.c:82: memcpy(s, b, l);
	mov	r1,___c16stombs_s_65536_78
	mov	r2,(___c16stombs_s_65536_78 + 1)
	mov	r3,(___c16stombs_s_65536_78 + 2)
	mov	___memcpy_PARM_2,#___c16stombs_b_65536_79
	mov	(___memcpy_PARM_2 + 1),#0x00
	mov	(___memcpy_PARM_2 + 2),#0x40
	mov	___memcpy_PARM_3,r7
	mov	(___memcpy_PARM_3 + 1),r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___memcpy
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	c16stombs.c:83: s += l;
	mov	a,r7
	add	a,___c16stombs_s_65536_78
	mov	___c16stombs_s_65536_78,a
	mov	a,r6
	addc	a,(___c16stombs_s_65536_78 + 1)
	mov	(___c16stombs_s_65536_78 + 1),a
;	c16stombs.c:84: m += l;
	mov	a,r5
	add	a,___c16stombs_m_65536_79
	mov	___c16stombs_m_65536_79,a
	mov	a,r4
	addc	a,(___c16stombs_m_65536_79 + 1)
	mov	(___c16stombs_m_65536_79 + 1),a
	ljmp	00119$
00118$:
;	c16stombs.c:87: return(m);
	mov	dpl,___c16stombs_m_65536_79
	mov	dph,(___c16stombs_m_65536_79 + 1)
;	c16stombs.c:88: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
