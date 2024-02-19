;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module mbstoc16s
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl ___mbstoc16s_PARM_3
	.globl ___mbstoc16s_PARM_2
	.globl ___mbstoc16s
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___mbstoc16s_sloc0_1_0:
	.ds 2
___mbstoc16s_sloc1_1_0:
	.ds 2
___mbstoc16s_sloc2_1_0:
	.ds 2
___mbstoc16s_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
___mbstoc16s_PARM_2:
	.ds 2
___mbstoc16s_PARM_3:
	.ds 2
___mbstoc16s_c16s_65536_50:
	.ds 2
___mbstoc16s_m_65536_51:
	.ds 2
___mbstoc16s_l_196608_53:
	.ds 2
___mbstoc16s_codepoint_196608_53:
	.ds 4
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
;sloc3                     Allocated with name '___mbstoc16s_sloc3_1_0'
;s                         Allocated with name '___mbstoc16s_PARM_2'
;n                         Allocated with name '___mbstoc16s_PARM_3'
;c16s                      Allocated with name '___mbstoc16s_c16s_65536_50'
;m                         Allocated with name '___mbstoc16s_m_65536_51'
;l                         Allocated with name '___mbstoc16s_l_196608_53'
;codepoint                 Allocated with name '___mbstoc16s_codepoint_196608_53'
;------------------------------------------------------------
;../mbstoc16s.c:44: size_t __mbstoc16s(char16_t *restrict c16s, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function __mbstoc16s
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___mbstoc16s:
	sta	*(___mbstoc16s_sloc0_1_0 + 1)
	stx	*___mbstoc16s_sloc0_1_0
;../mbstoc16s.c:46: size_t m = 0;
	clrh
	clrx
	sthx	___mbstoc16s_m_65536_51
;../mbstoc16s.c:85: return(m);
00116$:
;../mbstoc16s.c:53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	ldhx	___mbstoc16s_PARM_2
	sthx	_mbtowc_PARM_2
	ldhx	#0x0004
	sthx	_mbtowc_PARM_3
	lda	#___mbstoc16s_codepoint_196608_53
	ldx	#>___mbstoc16s_codepoint_196608_53
	jsr	_mbtowc
	sta	(___mbstoc16s_l_196608_53 + 1)
	stx	___mbstoc16s_l_196608_53
;../mbstoc16s.c:55: if(l < 0)
	lda	___mbstoc16s_l_196608_53
	sub	#0x00
	bge	00106$
;../mbstoc16s.c:56: return(-1);
	lda	#0xff
	tax
	rts
00106$:
;../mbstoc16s.c:59: if(m < n)
	lda	(___mbstoc16s_m_65536_51 + 1)
	sub	(___mbstoc16s_PARM_3 + 1)
	lda	___mbstoc16s_m_65536_51
	sbc	___mbstoc16s_PARM_3
	bcs	00156$
	clra
	bra	00157$
00156$:
	lda	#0x01
00157$:
;../mbstoc16s.c:57: else if(!l)
	psha
	lda	___mbstoc16s_l_196608_53
	ora	(___mbstoc16s_l_196608_53 + 1)
	pula
	bne	00107$
;../mbstoc16s.c:59: if(m < n)
	tsta
	bne	00159$
	jmp	00115$
00159$:
;../mbstoc16s.c:60: *c16s = 0;
	ldhx	*___mbstoc16s_sloc0_1_0
	clra
	sta	,x
	sta	1,x
;../mbstoc16s.c:61: break;
	jmp	00115$
00107$:
;../mbstoc16s.c:69: *c16s++ = codepoint;
	ldhx	*___mbstoc16s_sloc0_1_0
	aix	#2
	sthx	*___mbstoc16s_sloc1_1_0
;../mbstoc16s.c:70: m++;
	ldhx	___mbstoc16s_m_65536_51
	aix	#1
	sthx	*___mbstoc16s_sloc2_1_0
;../mbstoc16s.c:64: if (codepoint <= 0xffff) // Basic multilingual plane
	psha
	lda	#0xff
	sub	(___mbstoc16s_codepoint_196608_53 + 3)
	lda	#0xff
	sbc	(___mbstoc16s_codepoint_196608_53 + 2)
	clra
	sbc	(___mbstoc16s_codepoint_196608_53 + 1)
	clra
	sbc	___mbstoc16s_codepoint_196608_53
	pula
	bcs	00113$
;../mbstoc16s.c:66: if (m >= n)
	tsta
	bne	00161$
	jmp	00115$
00161$:
;../mbstoc16s.c:69: *c16s++ = codepoint;
	lda	(___mbstoc16s_codepoint_196608_53 + 3)
	ldx	(___mbstoc16s_codepoint_196608_53 + 2)
	pshx
	ldhx	*___mbstoc16s_sloc0_1_0
	sta	1,x
	pula
	sta	,x
	mov	*___mbstoc16s_sloc1_1_0,*___mbstoc16s_sloc0_1_0
	mov	*(___mbstoc16s_sloc1_1_0 + 1),*(___mbstoc16s_sloc0_1_0 + 1)
;../mbstoc16s.c:70: m++;
	lda	*___mbstoc16s_sloc2_1_0
	sta	___mbstoc16s_m_65536_51
	lda	*(___mbstoc16s_sloc2_1_0 + 1)
	sta	(___mbstoc16s_m_65536_51 + 1)
	jmp	00114$
00113$:
;../mbstoc16s.c:74: if (m + 1 >= n)
	ldhx	*___mbstoc16s_sloc2_1_0
	cphx	___mbstoc16s_PARM_3
	bcs	00162$
	jmp	00115$
00162$:
;../mbstoc16s.c:77: codepoint -= 0x100000;
	ldhx	#___mbstoc16s_codepoint_196608_53
	lda	3,x
	sub	#0x00
	sta	3,x
	lda	2,x
	sbc	#0x00
	sta	2,x
	lda	1,x
	sbc	#0x10
	sta	1,x
	lda	,x
	sbc	#0x00
	sta	,x
;../mbstoc16s.c:78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	lda	(___mbstoc16s_codepoint_196608_53 + 2)
	ldx	(___mbstoc16s_codepoint_196608_53 + 1)
	lsrx
	rora
	lsrx
	rora
	sta	*(___mbstoc16s_sloc3_1_0 + 3)
	stx	*(___mbstoc16s_sloc3_1_0 + 2)
	ldx	___mbstoc16s_codepoint_196608_53
	clra
	lsrx
	rora
	lsrx
	rora
	ora	*(___mbstoc16s_sloc3_1_0 + 2)
	sta	*(___mbstoc16s_sloc3_1_0 + 2)
	stx	*(___mbstoc16s_sloc3_1_0 + 1)
	mov	#0x00,*___mbstoc16s_sloc3_1_0
	lda	*(___mbstoc16s_sloc3_1_0 + 3)
	ldx	*(___mbstoc16s_sloc3_1_0 + 2)
	psha
	txa
	and	#0x03
	tax
	pula
	psha
	txa
	add	#0xd8
	tax
	pula
	pshx
	ldhx	*___mbstoc16s_sloc0_1_0
	sta	1,x
	pula
	sta	,x
	lda	*___mbstoc16s_sloc1_1_0
	sta	___mbstoc16s_c16s_65536_50
	lda	*(___mbstoc16s_sloc1_1_0 + 1)
	sta	(___mbstoc16s_c16s_65536_50 + 1)
;../mbstoc16s.c:79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	ldhx	(___mbstoc16s_codepoint_196608_53 + 2)
	sthx	*___mbstoc16s_sloc3_1_0
	ldx	*(___mbstoc16s_sloc3_1_0 + 1)
	lda	*___mbstoc16s_sloc3_1_0
	and	#0x03
	psha
	txa
	tax
	pula
	add	#0xdc
	pshx
	ldhx	___mbstoc16s_c16s_65536_50
	sta	,x
	pula
	sta	1,x
	ldhx	___mbstoc16s_c16s_65536_50
	aix	#2
	sthx	*___mbstoc16s_sloc0_1_0
;../mbstoc16s.c:80: m += 2;
	ldhx	___mbstoc16s_m_65536_51
	aix	#2
	sthx	___mbstoc16s_m_65536_51
00114$:
;../mbstoc16s.c:82: s += l;
	ldhx	#___mbstoc16s_PARM_2
	lda	(___mbstoc16s_l_196608_53 + 1)
	add	1,x
	sta	1,x
	lda	___mbstoc16s_l_196608_53
	adc	,x
	sta	,x
	jmp	00116$
00115$:
;../mbstoc16s.c:85: return(m);
	ldx	___mbstoc16s_m_65536_51
	lda	(___mbstoc16s_m_65536_51 + 1)
;../mbstoc16s.c:86: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
