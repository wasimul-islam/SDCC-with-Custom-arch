;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16stombs
	.optsdcc -mhc08
	
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
	.globl ___memcpy
	.globl _wctomb
	.globl ___c16stombs_PARM_3
	.globl ___c16stombs_PARM_2
	.globl ___c16stombs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___c16stombs_sloc0_1_0:
	.ds 2
___c16stombs_sloc1_1_0:
	.ds 2
___c16stombs_sloc2_1_0:
	.ds 4
___c16stombs_sloc3_1_0:
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
___c16stombs_PARM_2:
	.ds 2
___c16stombs_PARM_3:
	.ds 2
___c16stombs_s_65536_75:
	.ds 2
___c16stombs_m_65536_76:
	.ds 2
___c16stombs_b_65536_76:
	.ds 4
___c16stombs_l_196608_78:
	.ds 2
___c16stombs_codepoint_196608_78:
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
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___c16stombs_sloc0_1_0'
;sloc1                     Allocated with name '___c16stombs_sloc1_1_0'
;sloc2                     Allocated with name '___c16stombs_sloc2_1_0'
;sloc3                     Allocated with name '___c16stombs_sloc3_1_0'
;c16s                      Allocated with name '___c16stombs_PARM_2'
;n                         Allocated with name '___c16stombs_PARM_3'
;s                         Allocated with name '___c16stombs_s_65536_75'
;m                         Allocated with name '___c16stombs_m_65536_76'
;b                         Allocated with name '___c16stombs_b_65536_76'
;l                         Allocated with name '___c16stombs_l_196608_78'
;codepoint                 Allocated with name '___c16stombs_codepoint_196608_78'
;------------------------------------------------------------
;../c16stombs.c:44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___c16stombs:
	sta	(___c16stombs_s_65536_75 + 1)
	stx	___c16stombs_s_65536_75
;../c16stombs.c:46: size_t m = 0;
	clra
	sta	___c16stombs_m_65536_76
	sta	(___c16stombs_m_65536_76 + 1)
;../c16stombs.c:87: return(m);
00119$:
;../c16stombs.c:54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	lda	___c16stombs_PARM_2
	sta	*___c16stombs_sloc0_1_0
	lda	(___c16stombs_PARM_2 + 1)
	sta	*(___c16stombs_sloc0_1_0 + 1)
	ldhx	*___c16stombs_sloc0_1_0
	lda	,x
	psha
	ldx	1,x
	pulh
;../c16stombs.c:57: c16s++;
	pshx
	pshh
	ldhx	*___c16stombs_sloc0_1_0
	aix	#2
	sthx	*___c16stombs_sloc1_1_0
	pulh
	pulx
;../c16stombs.c:56: codepoint = c16s[0];
	stx	*(___c16stombs_sloc2_1_0 + 3)
	pshh
	pula
	sta	*(___c16stombs_sloc2_1_0 + 2)
	mov	#0x00,*(___c16stombs_sloc2_1_0 + 1)
	mov	#0x00,*___c16stombs_sloc2_1_0
;../c16stombs.c:54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	cphx	#0xd800
	bcs	00106$
	cphx	#0xe000
	bcs	00107$
00106$:
;../c16stombs.c:56: codepoint = c16s[0];
	ldhx	#___c16stombs_codepoint_196608_78
	mov	*___c16stombs_sloc2_1_0,x+
	mov	*(___c16stombs_sloc2_1_0 + 1),x+
	mov	*(___c16stombs_sloc2_1_0 + 2),x+
	mov	*(___c16stombs_sloc2_1_0 + 3),x+
;../c16stombs.c:57: c16s++;
	lda	*___c16stombs_sloc1_1_0
	sta	___c16stombs_PARM_2
	lda	*(___c16stombs_sloc1_1_0 + 1)
	sta	(___c16stombs_PARM_2 + 1)
	jmp	00108$
00107$:
;../c16stombs.c:59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
	cphx	#0xdbff
	bhi	00101$
	ldhx	*___c16stombs_sloc1_1_0
	lda	,x
	psha
	ldx	1,x
	pulh
	cphx	#0xdc00
	bcs	00101$
	cphx	#0xdfff
	bls	00102$
00101$:
;../c16stombs.c:60: return(-1);
	lda	#0xff
	tax
	rts
00102$:
;../c16stombs.c:63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
	pshx
	lda	*(___c16stombs_sloc2_1_0 + 2)
	ldx	*(___c16stombs_sloc2_1_0 + 1)
	lsla
	rolx
	lsla
	rolx
	sta	*(___c16stombs_sloc2_1_0 + 1)
	stx	*___c16stombs_sloc2_1_0
	pulx
	lda	*(___c16stombs_sloc2_1_0 + 3)
	lsla	
	lsla	
	sta	*(___c16stombs_sloc2_1_0 + 2)
	lda	*(___c16stombs_sloc2_1_0 + 3)
	rola	
	rola	
	rola	
	and	#0x03
	ora	*(___c16stombs_sloc2_1_0 + 1)
	sta	*(___c16stombs_sloc2_1_0 + 1)
	mov	#0x00,*(___c16stombs_sloc2_1_0 + 3)
	stx	*(___c16stombs_sloc3_1_0 + 3)
	pshh
	pula
	sta	*(___c16stombs_sloc3_1_0 + 2)
	mov	#0x00,*(___c16stombs_sloc3_1_0 + 1)
	mov	#0x00,*___c16stombs_sloc3_1_0
	lda	*(___c16stombs_sloc2_1_0 + 3)
	add	*(___c16stombs_sloc3_1_0 + 3)
	sta	*(___c16stombs_sloc3_1_0 + 3)
	lda	*(___c16stombs_sloc2_1_0 + 2)
	adc	*(___c16stombs_sloc3_1_0 + 2)
	sta	*(___c16stombs_sloc3_1_0 + 2)
	lda	*(___c16stombs_sloc2_1_0 + 1)
	adc	*(___c16stombs_sloc3_1_0 + 1)
	sta	*(___c16stombs_sloc3_1_0 + 1)
	lda	*___c16stombs_sloc2_1_0
	adc	*___c16stombs_sloc3_1_0
	sta	*___c16stombs_sloc3_1_0
	ldhx	#___c16stombs_codepoint_196608_78
	lda	*(___c16stombs_sloc3_1_0 + 3)
	sta	3,x
	lda	*(___c16stombs_sloc3_1_0 + 2)
	add	#0x24
	sta	2,x
	lda	*(___c16stombs_sloc3_1_0 + 1)
	adc	#0xa0
	sta	1,x
	lda	*___c16stombs_sloc3_1_0
	adc	#0xfc
	sta	,x
;../c16stombs.c:64: c16s += 2;
	ldhx	#___c16stombs_PARM_2
	lda	*(___c16stombs_sloc0_1_0 + 1)
	add	#0x04
	sta	1,x
	lda	*___c16stombs_sloc0_1_0
	adc	#0
	sta	,x
00108$:
;../c16stombs.c:67: if(!codepoint)
	lda	___c16stombs_codepoint_196608_78
	ora	(___c16stombs_codepoint_196608_78 + 1)
	ora	(___c16stombs_codepoint_196608_78 + 2)
	ora	(___c16stombs_codepoint_196608_78 + 3)
	bne	00113$
;../c16stombs.c:69: if(m < n)
	lda	(___c16stombs_m_65536_76 + 1)
	sub	(___c16stombs_PARM_3 + 1)
	lda	___c16stombs_m_65536_76
	sbc	___c16stombs_PARM_3
	bcs	00169$
	jmp	00118$
00169$:
;../c16stombs.c:70: *s = 0;
	lda	___c16stombs_s_65536_75
	psha
	pulh
	ldx	(___c16stombs_s_65536_75 + 1)
	clra
	sta	,x
;../c16stombs.c:71: break;
	jmp	00118$
00113$:
;../c16stombs.c:74: l = wctomb(b, codepoint);
	ldhx	#_wctomb_PARM_2
	lda	___c16stombs_codepoint_196608_78
	sta	,x
	lda	(___c16stombs_codepoint_196608_78 + 1)
	sta	1,x
	lda	(___c16stombs_codepoint_196608_78 + 2)
	sta	2,x
	lda	(___c16stombs_codepoint_196608_78 + 3)
	sta	3,x
	lda	#___c16stombs_b_65536_76
	ldx	#>___c16stombs_b_65536_76
	jsr	_wctomb
	sta	(___c16stombs_l_196608_78 + 1)
	stx	___c16stombs_l_196608_78
;../c16stombs.c:76: if(l < 0)
	lda	___c16stombs_l_196608_78
	sub	#0x00
	bge	00115$
;../c16stombs.c:77: return(-1);
	lda	#0xff
	tax
	rts
00115$:
;../c16stombs.c:79: if(m + l > n)
	lda	(___c16stombs_l_196608_78 + 1)
	ldx	___c16stombs_l_196608_78
	add	(___c16stombs_m_65536_76 + 1)
	sta	*(___c16stombs_sloc3_1_0 + 1)
	txa
	adc	___c16stombs_m_65536_76
	sta	*___c16stombs_sloc3_1_0
	lda	(___c16stombs_PARM_3 + 1)
	sub	*(___c16stombs_sloc3_1_0 + 1)
	lda	___c16stombs_PARM_3
	sbc	*___c16stombs_sloc3_1_0
	bcs	00118$
;../c16stombs.c:82: memcpy(s, b, l);
	lda	___c16stombs_s_65536_75
	psha
	pulh
	ldx	(___c16stombs_s_65536_75 + 1)
	lda	#___c16stombs_b_65536_76
	sta	(___memcpy_PARM_2 + 1)
	lda	#>___c16stombs_b_65536_76
	sta	___memcpy_PARM_2
	lda	___c16stombs_l_196608_78
	sta	___memcpy_PARM_3
	lda	(___c16stombs_l_196608_78 + 1)
	sta	(___memcpy_PARM_3 + 1)
	txa
	pshh
	pulx
	jsr	___memcpy
;../c16stombs.c:83: s += l;
	ldhx	#___c16stombs_s_65536_75
	lda	(___c16stombs_l_196608_78 + 1)
	add	1,x
	sta	1,x
	lda	___c16stombs_l_196608_78
	adc	,x
	sta	,x
;../c16stombs.c:84: m += l;
	lda	*___c16stombs_sloc3_1_0
	sta	___c16stombs_m_65536_76
	lda	*(___c16stombs_sloc3_1_0 + 1)
	sta	(___c16stombs_m_65536_76 + 1)
	jmp	00119$
00118$:
;../c16stombs.c:87: return(m);
	ldx	___c16stombs_m_65536_76
	lda	(___c16stombs_m_65536_76 + 1)
;../c16stombs.c:88: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
