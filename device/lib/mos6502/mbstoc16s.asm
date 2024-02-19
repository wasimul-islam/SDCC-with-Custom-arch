;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl ___mbstoc16s_PARM_3
	.globl ___mbstoc16s_PARM_2
	.globl ___mbstoc16s
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___mbstoc16s_sloc0_1_0:
	.ds 2
___mbstoc16s_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
;Allocation info for local variables in function '__mbstoc16s'
;------------------------------------------------------------
;sloc0                     Allocated with name '___mbstoc16s_sloc0_1_0'
;sloc1                     Allocated with name '___mbstoc16s_sloc1_1_0'
;s                         Allocated with name '___mbstoc16s_PARM_2'
;n                         Allocated with name '___mbstoc16s_PARM_3'
;c16s                      Allocated with name '___mbstoc16s_c16s_65536_50'
;m                         Allocated with name '___mbstoc16s_m_65536_51'
;l                         Allocated with name '___mbstoc16s_l_196608_53'
;codepoint                 Allocated with name '___mbstoc16s_codepoint_196608_53'
;------------------------------------------------------------
;	../mbstoc16s.c: 44: size_t __mbstoc16s(char16_t *restrict c16s, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function __mbstoc16s
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___mbstoc16s:
	sta	*___mbstoc16s_sloc0_1_0
	stx	*(___mbstoc16s_sloc0_1_0 + 1)
;	../mbstoc16s.c: 46: size_t m = 0;
	ldx	#0x00
	stx	___mbstoc16s_m_65536_51
	stx	(___mbstoc16s_m_65536_51 + 1)
;	../mbstoc16s.c: 85: return(m);
00116$:
;	../mbstoc16s.c: 53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	lda	___mbstoc16s_PARM_2
	sta	_mbtowc_PARM_2
	lda	(___mbstoc16s_PARM_2 + 1)
	sta	(_mbtowc_PARM_2 + 1)
	ldx	#0x04
	stx	_mbtowc_PARM_3
	ldx	#0x00
	stx	(_mbtowc_PARM_3 + 1)
	ldx	#>___mbstoc16s_codepoint_196608_53
	lda	#___mbstoc16s_codepoint_196608_53
	jsr	_mbtowc
	sta	___mbstoc16s_l_196608_53
	stx	(___mbstoc16s_l_196608_53 + 1)
;	../mbstoc16s.c: 55: if(l < 0)
	lda	(___mbstoc16s_l_196608_53 + 1)
	sec
	sbc	#0x00
	bvc	00156$
	bpl	00155$
	bmi	00106$
00156$:
	bpl	00106$
00155$:
;	../mbstoc16s.c: 56: return(-1);
	lda	#0xff
	tax
	rts
00106$:
;	../mbstoc16s.c: 57: else if(!l)
	lda	(___mbstoc16s_l_196608_53 + 1)
	ora	___mbstoc16s_l_196608_53
	bne	00107$
;	../mbstoc16s.c: 59: if(m < n)
	lda	___mbstoc16s_m_65536_51
	sec
	sbc	___mbstoc16s_PARM_3
	lda	(___mbstoc16s_m_65536_51 + 1)
	sbc	(___mbstoc16s_PARM_3 + 1)
	bcc	00159$
	jmp	00115$
00159$:
;	../mbstoc16s.c: 60: *c16s = 0;
	lda	#0x00
	tay
	sta	[*___mbstoc16s_sloc0_1_0],y
	iny
	sta	[*___mbstoc16s_sloc0_1_0],y
;	../mbstoc16s.c: 61: break;
	jmp	00115$
00107$:
;	../mbstoc16s.c: 64: if (codepoint <= 0xffff) // Basic multilingual plane
	lda	#0xff
	sec
	sbc	___mbstoc16s_codepoint_196608_53
	lda	#0xff
	sbc	(___mbstoc16s_codepoint_196608_53 + 1)
	lda	#0x00
	sbc	(___mbstoc16s_codepoint_196608_53 + 2)
	lda	#0x00
	sbc	(___mbstoc16s_codepoint_196608_53 + 3)
	bcc	00113$
;	../mbstoc16s.c: 66: if (m >= n)
	lda	___mbstoc16s_m_65536_51
	sec
	sbc	___mbstoc16s_PARM_3
	lda	(___mbstoc16s_m_65536_51 + 1)
	sbc	(___mbstoc16s_PARM_3 + 1)
	bcc	00161$
	jmp	00115$
00161$:
;	../mbstoc16s.c: 69: *c16s++ = codepoint;
	lda	___mbstoc16s_codepoint_196608_53
	ldx	(___mbstoc16s_codepoint_196608_53 + 1)
	ldy	#0x00
	sta	[*___mbstoc16s_sloc0_1_0],y
	txa
	iny
	sta	[*___mbstoc16s_sloc0_1_0],y
	lda	*___mbstoc16s_sloc0_1_0
	clc
	adc	#0x02
	sta	*___mbstoc16s_sloc0_1_0
	bcc	00162$
	inc	*(___mbstoc16s_sloc0_1_0 + 1)
00162$:
;	../mbstoc16s.c: 70: m++;
	inc	___mbstoc16s_m_65536_51
	bne	00163$
	inc	(___mbstoc16s_m_65536_51 + 1)
00163$:
	jmp	00114$
00113$:
;	../mbstoc16s.c: 74: if (m + 1 >= n)
	lda	___mbstoc16s_m_65536_51
	ldx	(___mbstoc16s_m_65536_51 + 1)
	clc
	adc	#0x01
	bcc	00164$
	inx
00164$:
	sec
	sbc	___mbstoc16s_PARM_3
	txa
	sbc	(___mbstoc16s_PARM_3 + 1)
	bcc	00165$
	jmp	00115$
00165$:
;	../mbstoc16s.c: 77: codepoint -= 0x100000;
	lda	___mbstoc16s_codepoint_196608_53
	sec
	sbc	#0x00
	sta	___mbstoc16s_codepoint_196608_53
	lda	(___mbstoc16s_codepoint_196608_53 + 1)
	sbc	#0x00
	sta	(___mbstoc16s_codepoint_196608_53 + 1)
	lda	(___mbstoc16s_codepoint_196608_53 + 2)
	sbc	#0x10
	sta	(___mbstoc16s_codepoint_196608_53 + 2)
	lda	(___mbstoc16s_codepoint_196608_53 + 3)
	sbc	#0x00
	sta	(___mbstoc16s_codepoint_196608_53 + 3)
;	../mbstoc16s.c: 78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	lda	(___mbstoc16s_codepoint_196608_53 + 1)
	ldx	(___mbstoc16s_codepoint_196608_53 + 2)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*___mbstoc16s_sloc1_1_0
	stx	*(___mbstoc16s_sloc1_1_0 + 1)
	ldx	(___mbstoc16s_codepoint_196608_53 + 3)
	lda	#0x00
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	ora	*(___mbstoc16s_sloc1_1_0 + 1)
	sta	*(___mbstoc16s_sloc1_1_0 + 1)
	stx	*(___mbstoc16s_sloc1_1_0 + 2)
	ldy	#0x00
	sty	*(___mbstoc16s_sloc1_1_0 + 3)
	lda	*___mbstoc16s_sloc1_1_0
	ldx	*(___mbstoc16s_sloc1_1_0 + 1)
	sta	*(__TEMP+0)
	txa
	and	#0x03
	tax
	lda	*(__TEMP+0)
	clc
	pha
	txa
	clc
	adc	#0xd8
	tax
	pla
	sta	[*___mbstoc16s_sloc0_1_0],y
	txa
	iny
	sta	[*___mbstoc16s_sloc0_1_0],y
	lda	*___mbstoc16s_sloc0_1_0
	clc
	adc	#0x02
	sta	___mbstoc16s_c16s_65536_50
	lda	*(___mbstoc16s_sloc0_1_0 + 1)
	adc	#0x00
	sta	(___mbstoc16s_c16s_65536_50 + 1)
;	../mbstoc16s.c: 79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	lda	___mbstoc16s_codepoint_196608_53
	ldx	(___mbstoc16s_codepoint_196608_53 + 1)
	sta	*(__TEMP+0)
	txa
	and	#0x03
	tax
	lda	*(__TEMP+0)
	clc
	pha
	txa
	clc
	adc	#0xdc
	tax
	pla
	sta	*(__TEMP+0)
	lda	___mbstoc16s_c16s_65536_50
	sta	*(__DPTR+0)
	lda	(___mbstoc16s_c16s_65536_50 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	dey
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	lda	___mbstoc16s_c16s_65536_50
	clc
	adc	#0x02
	sta	*___mbstoc16s_sloc0_1_0
	lda	(___mbstoc16s_c16s_65536_50 + 1)
	adc	#0x00
	sta	*(___mbstoc16s_sloc0_1_0 + 1)
;	../mbstoc16s.c: 80: m += 2;
	lda	___mbstoc16s_m_65536_51
	clc
	adc	#0x02
	sta	___mbstoc16s_m_65536_51
	bcc	00166$
	inc	(___mbstoc16s_m_65536_51 + 1)
00166$:
00114$:
;	../mbstoc16s.c: 82: s += l;
	lda	___mbstoc16s_PARM_2
	clc
	adc	___mbstoc16s_l_196608_53
	sta	___mbstoc16s_PARM_2
	lda	(___mbstoc16s_PARM_2 + 1)
	adc	(___mbstoc16s_l_196608_53 + 1)
	sta	(___mbstoc16s_PARM_2 + 1)
	jmp	00116$
00115$:
;	../mbstoc16s.c: 85: return(m);
	ldx	(___mbstoc16s_m_65536_51 + 1)
	lda	___mbstoc16s_m_65536_51
;	../mbstoc16s.c: 86: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
