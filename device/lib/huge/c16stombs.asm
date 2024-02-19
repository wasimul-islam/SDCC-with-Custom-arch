;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16stombs
	.optsdcc -mmcs51 --model-huge
	
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
___c16stombs_sloc0_1_0:
	.ds 3
___c16stombs_sloc1_1_0:
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
___c16stombs_codepoint_196608_81:
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
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___c16stombs_sloc0_1_0'
;sloc1                     Allocated with name '___c16stombs_sloc1_1_0'
;c16s                      Allocated with name '___c16stombs_PARM_2'
;n                         Allocated with name '___c16stombs_PARM_3'
;s                         Allocated with name '___c16stombs_s_65536_78'
;m                         Allocated with name '___c16stombs_m_65536_79'
;b                         Allocated with name '___c16stombs_b_65536_79'
;l                         Allocated with name '___c16stombs_l_196608_81'
;codepoint                 Allocated with name '___c16stombs_codepoint_196608_81'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___c16stombs_s_65536_78
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	c16stombs.c:46: size_t m = 0;
	mov	dptr,#___c16stombs_m_65536_79
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	c16stombs.c:87: return(m);
	mov	dptr,#___c16stombs_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00119$:
;	c16stombs.c:54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	mov	dptr,#___c16stombs_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	subb	a,#0xd8
	jc	00106$
	mov	a,#0x100 - 0xe0
	add	a,r2
	jnc	00107$
00106$:
;	c16stombs.c:56: codepoint = c16s[0];
	push	ar6
	push	ar7
	mov	dptr,#___c16stombs_PARM_2
	movx	a,@dptr
	mov	___c16stombs_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___c16stombs_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___c16stombs_sloc0_1_0 + 2),a
	mov	dpl,___c16stombs_sloc0_1_0
	mov	dph,(___c16stombs_sloc0_1_0 + 1)
	mov	b,(___c16stombs_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#___c16stombs_codepoint_196608_81
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	c16stombs.c:57: c16s++;
	mov	dptr,#___c16stombs_PARM_2
	mov	a,#0x02
	add	a,___c16stombs_sloc0_1_0
	movx	@dptr,a
	clr	a
	addc	a,(___c16stombs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___c16stombs_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	ljmp	00108$
00107$:
;	c16stombs.c:59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
	clr	c
	mov	a,#0xff
	subb	a,r1
	mov	a,#0xdb
	subb	a,r2
	jc	00101$
	push	ar6
	push	ar7
	mov	a,#0x02
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	___c16stombs_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(___c16stombs_sloc0_1_0 + 1),a
	clr	c
	subb	a,#0xdc
	pop	ar7
	pop	ar6
	jc	00101$
	mov	a,#0xff
	subb	a,___c16stombs_sloc0_1_0
	mov	a,#0xdf
	subb	a,(___c16stombs_sloc0_1_0 + 1)
	jnc	00102$
00101$:
;	c16stombs.c:60: return(-1);
	mov	dptr,#0xffff
	ljmp	__sdcc_banked_ret
00102$:
;	c16stombs.c:63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
	push	ar6
	push	ar7
	mov	ar0,r2
	mov	r2,#0x00
	mov	(___c16stombs_sloc1_1_0 + 2),r0
	mov	a,r2
	xch	a,(___c16stombs_sloc1_1_0 + 2)
	add	a,acc
	xch	a,(___c16stombs_sloc1_1_0 + 2)
	rlc	a
	xch	a,(___c16stombs_sloc1_1_0 + 2)
	add	a,acc
	xch	a,(___c16stombs_sloc1_1_0 + 2)
	rlc	a
	mov	(___c16stombs_sloc1_1_0 + 3),a
	mov	a,r1
	rl	a
	rl	a
	anl	a,#0x03
	orl	a,(___c16stombs_sloc1_1_0 + 2)
	mov	(___c16stombs_sloc1_1_0 + 2),a
	mov	a,r1
	add	a,r1
	add	a,acc
	mov	(___c16stombs_sloc1_1_0 + 1),a
	mov	___c16stombs_sloc1_1_0,#0x00
	mov	r1,___c16stombs_sloc0_1_0
	mov	r2,(___c16stombs_sloc0_1_0 + 1)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	add	a,___c16stombs_sloc1_1_0
	mov	r1,a
	mov	a,r2
	addc	a,(___c16stombs_sloc1_1_0 + 1)
	mov	r2,a
	mov	a,r6
	addc	a,(___c16stombs_sloc1_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(___c16stombs_sloc1_1_0 + 3)
	mov	r7,a
	mov	dptr,#___c16stombs_codepoint_196608_81
	mov	a,r1
	movx	@dptr,a
	mov	a,#0x24
	add	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,#0xa0
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,#0xfc
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	c16stombs.c:64: c16s += 2;
	mov	dptr,#___c16stombs_PARM_2
	mov	a,#0x04
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	c16stombs.c:87: return(m);
	pop	ar7
	pop	ar6
;	c16stombs.c:64: c16s += 2;
00108$:
;	c16stombs.c:67: if(!codepoint)
	mov	dptr,#___c16stombs_codepoint_196608_81
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
	mov	dptr,#___c16stombs_codepoint_196608_81
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
	jnz	00113$
;	c16stombs.c:69: if(m < n)
	mov	dptr,#___c16stombs_m_65536_79
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,r6
	mov	a,r1
	subb	a,r7
	jc	00161$
	ljmp	00118$
00161$:
;	c16stombs.c:70: *s = 0;
	mov	dptr,#___c16stombs_s_65536_78
	movx	a,@dptr
	mov	___c16stombs_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___c16stombs_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___c16stombs_sloc1_1_0 + 2),a
	mov	dpl,___c16stombs_sloc1_1_0
	mov	dph,(___c16stombs_sloc1_1_0 + 1)
	mov	b,(___c16stombs_sloc1_1_0 + 2)
	clr	a
	lcall	__gptrput
;	c16stombs.c:71: break;
	ljmp	00118$
00113$:
;	c16stombs.c:74: l = wctomb(b, codepoint);
	mov	dptr,#_wctomb_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___c16stombs_b_65536_79
	mov	b,#0x00
	push	ar7
	push	ar6
	mov	r0,#_wctomb
	mov	r1,#(_wctomb >> 8)
	mov	r2,#(_wctomb >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	c16stombs.c:76: if(l < 0)
	mov	a,r5
	jnb	acc.7,00115$
;	c16stombs.c:77: return(-1);
	mov	dptr,#0xffff
	ljmp	__sdcc_banked_ret
00115$:
;	c16stombs.c:79: if(m + l > n)
	mov	dptr,#___c16stombs_m_65536_79
	movx	a,@dptr
	mov	___c16stombs_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___c16stombs_sloc0_1_0 + 1),a
	mov	___c16stombs_sloc1_1_0,r4
	mov	(___c16stombs_sloc1_1_0 + 1),r5
	push	ar4
	push	ar5
	mov	a,___c16stombs_sloc1_1_0
	add	a,___c16stombs_sloc0_1_0
	mov	r4,a
	mov	a,(___c16stombs_sloc1_1_0 + 1)
	addc	a,(___c16stombs_sloc0_1_0 + 1)
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	pop	ar5
	pop	ar4
	jc	00118$
;	c16stombs.c:82: memcpy(s, b, l);
	push	ar6
	push	ar7
	mov	dptr,#___c16stombs_s_65536_78
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r1
	mov	ar2,r6
	mov	ar3,r7
	mov	dptr,#___memcpy_PARM_2
	mov	a,#___c16stombs_b_65536_79
	movx	@dptr,a
	mov	a,#(___c16stombs_b_65536_79 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	mov	r0,#___memcpy
	mov	r1,#(___memcpy >> 8)
	mov	r2,#(___memcpy >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	c16stombs.c:83: s += l;
	mov	dptr,#___c16stombs_s_65536_78
	mov	a,r4
	add	a,r1
	movx	@dptr,a
	mov	a,r5
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	c16stombs.c:84: m += l;
	mov	dptr,#___c16stombs_m_65536_79
	mov	a,___c16stombs_sloc1_1_0
	add	a,___c16stombs_sloc0_1_0
	movx	@dptr,a
	mov	a,(___c16stombs_sloc1_1_0 + 1)
	addc	a,(___c16stombs_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	ljmp	00119$
00118$:
;	c16stombs.c:87: return(m);
	mov	dptr,#___c16stombs_m_65536_79
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
;	c16stombs.c:88: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
