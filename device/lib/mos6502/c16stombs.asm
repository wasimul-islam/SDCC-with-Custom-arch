;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16stombs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _wctomb
	.globl ___c16stombs_PARM_3
	.globl ___c16stombs_PARM_2
	.globl ___c16stombs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___c16stombs_sloc0_1_0:
	.ds 2
___c16stombs_sloc1_1_0:
	.ds 2
___c16stombs_sloc2_1_0:
	.ds 2
___c16stombs_sloc3_1_0:
	.ds 4
___c16stombs_sloc4_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___c16stombs_sloc0_1_0'
;sloc1                     Allocated with name '___c16stombs_sloc1_1_0'
;sloc2                     Allocated with name '___c16stombs_sloc2_1_0'
;sloc3                     Allocated with name '___c16stombs_sloc3_1_0'
;sloc4                     Allocated with name '___c16stombs_sloc4_1_0'
;c16s                      Allocated with name '___c16stombs_PARM_2'
;n                         Allocated with name '___c16stombs_PARM_3'
;s                         Allocated with name '___c16stombs_s_65536_75'
;m                         Allocated with name '___c16stombs_m_65536_76'
;b                         Allocated with name '___c16stombs_b_65536_76'
;l                         Allocated with name '___c16stombs_l_196608_78'
;codepoint                 Allocated with name '___c16stombs_codepoint_196608_78'
;------------------------------------------------------------
;	../c16stombs.c: 44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___c16stombs:
	sta	___c16stombs_s_65536_75
	stx	(___c16stombs_s_65536_75 + 1)
;	../c16stombs.c: 46: size_t m = 0;
	ldx	#0x00
	stx	___c16stombs_m_65536_76
	stx	(___c16stombs_m_65536_76 + 1)
;	../c16stombs.c: 87: return(m);
00119$:
;	../c16stombs.c: 54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	lda	___c16stombs_PARM_2
	sta	*___c16stombs_sloc0_1_0
	lda	(___c16stombs_PARM_2 + 1)
	sta	*(___c16stombs_sloc0_1_0 + 1)
	ldy	#0x00
	lda	[*___c16stombs_sloc0_1_0],y
	sta	*___c16stombs_sloc1_1_0
	iny
	lda	[*___c16stombs_sloc0_1_0],y
	sta	*(___c16stombs_sloc1_1_0 + 1)
	sec
	sbc	#0xd8
	bcc	00106$
	lda	*(___c16stombs_sloc1_1_0 + 1)
	sec
	sbc	#0xe0
	bcc	00107$
00106$:
;	../c16stombs.c: 56: codepoint = c16s[0];
	lda	___c16stombs_PARM_2
	sta	*___c16stombs_sloc2_1_0
	lda	(___c16stombs_PARM_2 + 1)
	sta	*(___c16stombs_sloc2_1_0 + 1)
	ldy	#0x01
	lda	[*___c16stombs_sloc2_1_0],y
	tax
	dey
	lda	[*___c16stombs_sloc2_1_0],y
	sta	___c16stombs_codepoint_196608_78
	stx	(___c16stombs_codepoint_196608_78 + 1)
	sty	(___c16stombs_codepoint_196608_78 + 2)
	sty	(___c16stombs_codepoint_196608_78 + 3)
;	../c16stombs.c: 57: c16s++;
	lda	*___c16stombs_sloc2_1_0
	clc
	adc	#0x02
	sta	___c16stombs_PARM_2
	lda	*(___c16stombs_sloc2_1_0 + 1)
	adc	#0x00
	sta	(___c16stombs_PARM_2 + 1)
	jmp	00108$
00107$:
;	../c16stombs.c: 59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
	lda	#0xff
	sec
	sbc	*___c16stombs_sloc1_1_0
	lda	#0xdb
	sbc	*(___c16stombs_sloc1_1_0 + 1)
	bcc	00101$
	lda	*___c16stombs_sloc0_1_0
	ldx	*(___c16stombs_sloc0_1_0 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	sta	*___c16stombs_sloc2_1_0
	iny
	lda	[__DPTR],y
	sta	*(___c16stombs_sloc2_1_0 + 1)
	sec
	sbc	#0xdc
	bcc	00101$
	lda	#0xff
	sec
	sbc	*___c16stombs_sloc2_1_0
	lda	#0xdf
	sbc	*(___c16stombs_sloc2_1_0 + 1)
	bcs	00102$
00101$:
;	../c16stombs.c: 60: return(-1);
	lda	#0xff
	tax
	rts
00102$:
;	../c16stombs.c: 63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
	lda	*___c16stombs_sloc1_1_0
	sta	*___c16stombs_sloc3_1_0
	lda	*(___c16stombs_sloc1_1_0 + 1)
	sta	*(___c16stombs_sloc3_1_0 + 1)
	ldx	#0x00
	stx	*(___c16stombs_sloc3_1_0 + 2)
	stx	*(___c16stombs_sloc3_1_0 + 3)
	lda	*(___c16stombs_sloc3_1_0 + 1)
	ldx	*(___c16stombs_sloc3_1_0 + 2)
	asl	a
	pha
	txa
	rol	a
	tax
	pla
	asl	a
	pha
	txa
	rol	a
	tax
	pla
	sta	*(___c16stombs_sloc3_1_0 + 2)
	stx	*(___c16stombs_sloc3_1_0 + 3)
	lda	*___c16stombs_sloc3_1_0
	asl	a
	asl	a
	sta	*(___c16stombs_sloc3_1_0 + 1)
	lda	*___c16stombs_sloc3_1_0
	rol	a
	rol	a
	rol	a
	and	#0x03
	ora	*(___c16stombs_sloc3_1_0 + 2)
	sta	*(___c16stombs_sloc3_1_0 + 2)
	ldx	#0x00
	stx	*___c16stombs_sloc3_1_0
	lda	*___c16stombs_sloc2_1_0
	sta	*___c16stombs_sloc4_1_0
	lda	*(___c16stombs_sloc2_1_0 + 1)
	sta	*(___c16stombs_sloc4_1_0 + 1)
	stx	*(___c16stombs_sloc4_1_0 + 2)
	stx	*(___c16stombs_sloc4_1_0 + 3)
	lda	*___c16stombs_sloc3_1_0
	clc
	adc	*___c16stombs_sloc4_1_0
	sta	*___c16stombs_sloc4_1_0
	lda	*(___c16stombs_sloc3_1_0 + 1)
	adc	*(___c16stombs_sloc4_1_0 + 1)
	sta	*(___c16stombs_sloc4_1_0 + 1)
	lda	*(___c16stombs_sloc3_1_0 + 2)
	adc	*(___c16stombs_sloc4_1_0 + 2)
	sta	*(___c16stombs_sloc4_1_0 + 2)
	lda	*(___c16stombs_sloc3_1_0 + 3)
	adc	*(___c16stombs_sloc4_1_0 + 3)
	sta	*(___c16stombs_sloc4_1_0 + 3)
	lda	*___c16stombs_sloc4_1_0
	clc
	sta	___c16stombs_codepoint_196608_78
	lda	*(___c16stombs_sloc4_1_0 + 1)
	clc
	adc	#0x24
	sta	(___c16stombs_codepoint_196608_78 + 1)
	lda	*(___c16stombs_sloc4_1_0 + 2)
	adc	#0xa0
	sta	(___c16stombs_codepoint_196608_78 + 2)
	lda	*(___c16stombs_sloc4_1_0 + 3)
	adc	#0xfc
	sta	(___c16stombs_codepoint_196608_78 + 3)
;	../c16stombs.c: 64: c16s += 2;
	lda	*___c16stombs_sloc0_1_0
	clc
	adc	#0x04
	sta	___c16stombs_PARM_2
	lda	*(___c16stombs_sloc0_1_0 + 1)
	adc	#0x00
	sta	(___c16stombs_PARM_2 + 1)
00108$:
;	../c16stombs.c: 67: if(!codepoint)
	lda	(___c16stombs_codepoint_196608_78 + 3)
	ora	(___c16stombs_codepoint_196608_78 + 2)
	ora	(___c16stombs_codepoint_196608_78 + 1)
	ora	___c16stombs_codepoint_196608_78
	bne	00113$
;	../c16stombs.c: 69: if(m < n)
	lda	___c16stombs_m_65536_76
	sec
	sbc	___c16stombs_PARM_3
	lda	(___c16stombs_m_65536_76 + 1)
	sbc	(___c16stombs_PARM_3 + 1)
	bcc	00161$
	jmp	00118$
00161$:
;	../c16stombs.c: 70: *s = 0;
	lda	___c16stombs_s_65536_75
	sta	*(__DPTR+0)
	lda	(___c16stombs_s_65536_75 + 1)
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../c16stombs.c: 71: break;
	jmp	00118$
00113$:
;	../c16stombs.c: 74: l = wctomb(b, codepoint);
	lda	___c16stombs_codepoint_196608_78
	sta	_wctomb_PARM_2
	lda	(___c16stombs_codepoint_196608_78 + 1)
	sta	(_wctomb_PARM_2 + 1)
	lda	(___c16stombs_codepoint_196608_78 + 2)
	sta	(_wctomb_PARM_2 + 2)
	lda	(___c16stombs_codepoint_196608_78 + 3)
	sta	(_wctomb_PARM_2 + 3)
	ldx	#>___c16stombs_b_65536_76
	lda	#___c16stombs_b_65536_76
	jsr	_wctomb
	sta	___c16stombs_l_196608_78
	stx	(___c16stombs_l_196608_78 + 1)
;	../c16stombs.c: 76: if(l < 0)
	lda	(___c16stombs_l_196608_78 + 1)
	sec
	sbc	#0x00
	bvc	00163$
	bpl	00162$
	bmi	00115$
00163$:
	bpl	00115$
00162$:
;	../c16stombs.c: 77: return(-1);
	lda	#0xff
	tax
	rts
00115$:
;	../c16stombs.c: 79: if(m + l > n)
	lda	___c16stombs_l_196608_78
	sta	*___c16stombs_sloc4_1_0
	lda	(___c16stombs_l_196608_78 + 1)
	sta	*(___c16stombs_sloc4_1_0 + 1)
	lda	___c16stombs_m_65536_76
	clc
	adc	*___c16stombs_sloc4_1_0
	sta	*___c16stombs_sloc3_1_0
	lda	(___c16stombs_m_65536_76 + 1)
	adc	*(___c16stombs_sloc4_1_0 + 1)
	sta	*(___c16stombs_sloc3_1_0 + 1)
	lda	___c16stombs_PARM_3
	sec
	sbc	*___c16stombs_sloc3_1_0
	lda	(___c16stombs_PARM_3 + 1)
	sbc	*(___c16stombs_sloc3_1_0 + 1)
	bcc	00118$
;	../c16stombs.c: 82: memcpy(s, b, l);
	lda	___c16stombs_s_65536_75
	ldx	(___c16stombs_s_65536_75 + 1)
	ldy	#___c16stombs_b_65536_76
	sty	___memcpy_PARM_2
	ldy	#>___c16stombs_b_65536_76
	sty	(___memcpy_PARM_2 + 1)
	ldy	___c16stombs_l_196608_78
	sty	___memcpy_PARM_3
	ldy	(___c16stombs_l_196608_78 + 1)
	sty	(___memcpy_PARM_3 + 1)
	jsr	___memcpy
;	../c16stombs.c: 83: s += l;
	lda	___c16stombs_s_65536_75
	clc
	adc	___c16stombs_l_196608_78
	sta	___c16stombs_s_65536_75
	lda	(___c16stombs_s_65536_75 + 1)
	adc	(___c16stombs_l_196608_78 + 1)
	sta	(___c16stombs_s_65536_75 + 1)
;	../c16stombs.c: 84: m += l;
	lda	___c16stombs_m_65536_76
	clc
	adc	*___c16stombs_sloc4_1_0
	sta	___c16stombs_m_65536_76
	lda	(___c16stombs_m_65536_76 + 1)
	adc	*(___c16stombs_sloc4_1_0 + 1)
	sta	(___c16stombs_m_65536_76 + 1)
	jmp	00119$
00118$:
;	../c16stombs.c: 87: return(m);
	ldx	(___c16stombs_m_65536_76 + 1)
	lda	___c16stombs_m_65536_76
;	../c16stombs.c: 88: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
