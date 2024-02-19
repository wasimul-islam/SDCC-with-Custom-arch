;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module c16rtomb
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
	.globl _wctomb
	.globl _c16rtomb_PARM_3
	.globl _c16rtomb_PARM_2
	.globl _c16rtomb
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_c16rtomb_sloc0_1_0:
	.ds 2
_c16rtomb_sloc1_1_0:
	.ds 2
_c16rtomb_sloc2_1_0:
	.ds 2
_c16rtomb_sloc3_1_0:
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
_c16rtomb_PARM_2:
	.ds 2
_c16rtomb_PARM_3:
	.ds 2
_c16rtomb_s_65536_42:
	.ds 2
_c16rtomb_codepoint_65536_43:
	.ds 4
_c16rtomb_buf_65536_43:
	.ds 4
_c16rtomb_sps_65536_43:
	.ds 3
_c16rtomb_high_surrogate_131072_45:
	.ds 2
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
;sloc0                     Allocated with name '_c16rtomb_sloc0_1_0'
;sloc1                     Allocated with name '_c16rtomb_sloc1_1_0'
;sloc2                     Allocated with name '_c16rtomb_sloc2_1_0'
;sloc3                     Allocated with name '_c16rtomb_sloc3_1_0'
;c16                       Allocated with name '_c16rtomb_PARM_2'
;ps                        Allocated with name '_c16rtomb_PARM_3'
;s                         Allocated with name '_c16rtomb_s_65536_42'
;codepoint                 Allocated with name '_c16rtomb_codepoint_65536_43'
;buf                       Allocated with name '_c16rtomb_buf_65536_43'
;sps                       Allocated with name '_c16rtomb_sps_65536_43'
;high_surrogate            Allocated with name '_c16rtomb_high_surrogate_131072_45'
;------------------------------------------------------------
;../c16rtomb.c:35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_c16rtomb:
	sta	(_c16rtomb_s_65536_42 + 1)
	stx	_c16rtomb_s_65536_42
;../c16rtomb.c:41: if(!s)
	lda	_c16rtomb_s_65536_42
	ora	(_c16rtomb_s_65536_42 + 1)
	bne	00102$
;../c16rtomb.c:42: s = buf;
	ldhx	#_c16rtomb_buf_65536_43
	sthx	_c16rtomb_s_65536_42
00102$:
;../c16rtomb.c:44: if(!ps)
	lda	_c16rtomb_PARM_3
	ora	(_c16rtomb_PARM_3 + 1)
	bne	00104$
;../c16rtomb.c:45: ps = &sps;
	ldhx	#_c16rtomb_sps_65536_43
	sthx	_c16rtomb_PARM_3
00104$:
;../c16rtomb.c:49: ps->c[1] = ps->c[2] = 0;
	ldhx	_c16rtomb_PARM_3
	sthx	*_c16rtomb_sloc0_1_0
	sthx	*_c16rtomb_sloc1_1_0
;../c16rtomb.c:47: if (!c16) // 0 always resets conversion state.
	lda	_c16rtomb_PARM_2
	ora	(_c16rtomb_PARM_2 + 1)
	bne	00119$
;../c16rtomb.c:49: ps->c[1] = ps->c[2] = 0;
	ldhx	*_c16rtomb_sloc1_1_0
	clra
	sta	2,x
	ldhx	*_c16rtomb_sloc0_1_0
	sta	1,x
;../c16rtomb.c:50: codepoint = 0;
	clrh
	tax
	sthx	_c16rtomb_codepoint_65536_43
	sthx	(_c16rtomb_codepoint_65536_43 + 2)
	jmp	00120$
00119$:
;../c16rtomb.c:52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
	ldhx	*_c16rtomb_sloc0_1_0
	ldx	1,x
	tstx
	bne	00114$
	pshx
	ldhx	*_c16rtomb_sloc1_1_0
	lda	2,x
	pulx
	beq	00115$
00114$:
;../c16rtomb.c:56: if(c16 < 0xdc00 || c16 > 0xdfff)
	lda	_c16rtomb_PARM_2
	sub	#0xdc
	bcc	00169$
	jmp	00121$
00169$:
	lda	#0xff
	sub	(_c16rtomb_PARM_2 + 1)
	lda	#0xdf
	sbc	_c16rtomb_PARM_2
	bcc	00170$
	jmp	00121$
00170$:
;../c16rtomb.c:59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
	stx	*(_c16rtomb_sloc2_1_0 + 1)
	mov	#0x00,*_c16rtomb_sloc2_1_0
	ldhx	*_c16rtomb_sloc1_1_0
	lda	2,x
	clrx
	tax
	clra
	add	*(_c16rtomb_sloc2_1_0 + 1)
	sta	(_c16rtomb_high_surrogate_131072_45 + 1)
	txa
	adc	*_c16rtomb_sloc2_1_0
	sta	_c16rtomb_high_surrogate_131072_45
;../c16rtomb.c:60: ps->c[1] = ps->c[2] = 0;
	ldhx	*_c16rtomb_sloc1_1_0
	clra
	sta	2,x
	ldhx	*_c16rtomb_sloc0_1_0
	sta	1,x
;../c16rtomb.c:61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
	lda	(_c16rtomb_high_surrogate_131072_45 + 1)
	lsla	
	lsla	
	tax
	clra
	add	(_c16rtomb_PARM_2 + 1)
	psha
	txa
	adc	_c16rtomb_PARM_2
	tax
	pula
	sta	*(_c16rtomb_sloc3_1_0 + 3)
	stx	*(_c16rtomb_sloc3_1_0 + 2)
	mov	#0x00,*(_c16rtomb_sloc3_1_0 + 1)
	mov	#0x00,*_c16rtomb_sloc3_1_0
	ldhx	#_c16rtomb_codepoint_65536_43
	lda	*(_c16rtomb_sloc3_1_0 + 3)
	sta	3,x
	lda	*(_c16rtomb_sloc3_1_0 + 2)
	add	#0x24
	sta	2,x
	lda	*(_c16rtomb_sloc3_1_0 + 1)
	adc	#0x00
	sta	1,x
	lda	*_c16rtomb_sloc3_1_0
	adc	#0x00
	sta	,x
	bra	00120$
00115$:
;../c16rtomb.c:63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
	lda	(_c16rtomb_PARM_2 + 1)
	sub	#0xff
	lda	_c16rtomb_PARM_2
	sbc	#0xd7
	bcs	00110$
	lda	_c16rtomb_PARM_2
	sub	#0xe0
	bcs	00111$
00110$:
;../c16rtomb.c:64: codepoint = c16;
	ldhx	_c16rtomb_PARM_2
	sthx	(_c16rtomb_codepoint_65536_43 + 2)
	clra
	sta	(_c16rtomb_codepoint_65536_43 + 1)
	sta	_c16rtomb_codepoint_65536_43
	bra	00120$
00111$:
;../c16rtomb.c:67: if(c16 > 0xdbff)
	lda	#0xff
	sub	(_c16rtomb_PARM_2 + 1)
	lda	#0xdb
	sbc	_c16rtomb_PARM_2
	bcs	00121$
;../c16rtomb.c:70: ps->c[1] = c16 & 0xff;
	lda	(_c16rtomb_PARM_2 + 1)
	ldhx	*_c16rtomb_sloc0_1_0
	sta	1,x
;../c16rtomb.c:71: ps->c[2] = c16 >> 8;
	lda	_c16rtomb_PARM_2
	ldhx	*_c16rtomb_sloc1_1_0
	sta	2,x
;../c16rtomb.c:72: return(0);
	clra
	tax
	rts
00120$:
;../c16rtomb.c:75: return(wctomb(s, codepoint));
	ldhx	_c16rtomb_codepoint_65536_43
	sthx	_wctomb_PARM_2
	ldhx	(_c16rtomb_codepoint_65536_43 + 2)
	sthx	(_wctomb_PARM_2 + 2)
	lda	(_c16rtomb_s_65536_42 + 1)
	ldx	_c16rtomb_s_65536_42
	jmp	_wctomb
;../c16rtomb.c:77: eilseq:
00121$:
;../c16rtomb.c:78: errno = EILSEQ;
	ldhx	#0x0054
	sthx	_errno
;../c16rtomb.c:79: return(-1);
	lda	#0xff
	tax
;../c16rtomb.c:80: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
