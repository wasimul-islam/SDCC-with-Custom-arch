;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module c16rtomb
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _c16rtomb_PARM_3
	.globl _c16rtomb_PARM_2
	.globl _c16rtomb
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_c16rtomb_sloc0_1_0:
	.ds 2
_c16rtomb_sloc1_1_0:
	.ds 2
_c16rtomb_sloc2_1_0:
	.ds 2
_c16rtomb_sloc3_1_0:
	.ds 2
_c16rtomb_sloc4_1_0:
	.ds 2
_c16rtomb_sloc5_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
;Allocation info for local variables in function 'c16rtomb'
;------------------------------------------------------------
;sloc0                     Allocated with name '_c16rtomb_sloc0_1_0'
;sloc1                     Allocated with name '_c16rtomb_sloc1_1_0'
;sloc2                     Allocated with name '_c16rtomb_sloc2_1_0'
;sloc3                     Allocated with name '_c16rtomb_sloc3_1_0'
;sloc4                     Allocated with name '_c16rtomb_sloc4_1_0'
;sloc5                     Allocated with name '_c16rtomb_sloc5_1_0'
;c16                       Allocated with name '_c16rtomb_PARM_2'
;ps                        Allocated with name '_c16rtomb_PARM_3'
;s                         Allocated with name '_c16rtomb_s_65536_42'
;codepoint                 Allocated with name '_c16rtomb_codepoint_65536_43'
;buf                       Allocated with name '_c16rtomb_buf_65536_43'
;sps                       Allocated with name '_c16rtomb_sps_65536_43'
;high_surrogate            Allocated with name '_c16rtomb_high_surrogate_131072_45'
;------------------------------------------------------------
;	../c16rtomb.c: 35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_c16rtomb:
	sta	_c16rtomb_s_65536_42
	stx	(_c16rtomb_s_65536_42 + 1)
;	../c16rtomb.c: 41: if(!s)
	lda	(_c16rtomb_s_65536_42 + 1)
	ora	_c16rtomb_s_65536_42
	bne	00102$
;	../c16rtomb.c: 42: s = buf;
	lda	#_c16rtomb_buf_65536_43
	sta	_c16rtomb_s_65536_42
	lda	#>_c16rtomb_buf_65536_43
	sta	(_c16rtomb_s_65536_42 + 1)
00102$:
;	../c16rtomb.c: 44: if(!ps)
	lda	(_c16rtomb_PARM_3 + 1)
	ora	_c16rtomb_PARM_3
	bne	00104$
;	../c16rtomb.c: 45: ps = &sps;
	lda	#_c16rtomb_sps_65536_43
	sta	_c16rtomb_PARM_3
	lda	#>_c16rtomb_sps_65536_43
	sta	(_c16rtomb_PARM_3 + 1)
00104$:
;	../c16rtomb.c: 47: if (!c16) // 0 always resets conversion state.
	lda	(_c16rtomb_PARM_2 + 1)
	ora	_c16rtomb_PARM_2
	bne	00119$
;	../c16rtomb.c: 49: ps->c[1] = ps->c[2] = 0;
	lda	_c16rtomb_PARM_3
	ldx	(_c16rtomb_PARM_3 + 1)
	sta	*_c16rtomb_sloc0_1_0
	stx	*(_c16rtomb_sloc0_1_0 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	ldy	#0x02
	sta	[__DPTR],y
	dey
	sta	[*_c16rtomb_sloc0_1_0],y
;	../c16rtomb.c: 50: codepoint = 0;
	sta	_c16rtomb_codepoint_65536_43
	sta	(_c16rtomb_codepoint_65536_43 + 1)
	sta	(_c16rtomb_codepoint_65536_43 + 2)
	sta	(_c16rtomb_codepoint_65536_43 + 3)
	jmp	00120$
00119$:
;	../c16rtomb.c: 52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
	lda	_c16rtomb_PARM_3
	ldx	(_c16rtomb_PARM_3 + 1)
	sta	*_c16rtomb_sloc0_1_0
	stx	*(_c16rtomb_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	ldy	#0x01
	lda	[*_c16rtomb_sloc0_1_0],y
	tay
	lda	*(__TEMP+0)
	cpy	#0x00
	bne	00114$
	sta	*_c16rtomb_sloc1_1_0
	stx	*(_c16rtomb_sloc1_1_0 + 1)
	ldy	#0x02
	lda	[*_c16rtomb_sloc1_1_0],y
	bne	00160$
	jmp	00115$
00160$:
00114$:
;	../c16rtomb.c: 56: if(c16 < 0xdc00 || c16 > 0xdfff)
	lda	(_c16rtomb_PARM_2 + 1)
	sec
	sbc	#0xdc
	bcs	00161$
	jmp	00121$
00161$:
	lda	#0xff
	sec
	sbc	_c16rtomb_PARM_2
	lda	#0xdf
	sbc	(_c16rtomb_PARM_2 + 1)
	bcs	00162$
	jmp	00121$
00162$:
;	../c16rtomb.c: 59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
	lda	_c16rtomb_PARM_3
	ldx	(_c16rtomb_PARM_3 + 1)
	sta	*_c16rtomb_sloc2_1_0
	stx	*(_c16rtomb_sloc2_1_0 + 1)
	sta	*(__TEMP+0)
	ldy	#0x01
	lda	[*_c16rtomb_sloc2_1_0],y
	tay
	lda	*(__TEMP+0)
	sty	*_c16rtomb_sloc3_1_0
	pha
	lda	#0x00
	sta	*(_c16rtomb_sloc3_1_0 + 1)
	pla
	sta	*_c16rtomb_sloc4_1_0
	stx	*(_c16rtomb_sloc4_1_0 + 1)
	ldy	#0x02
	lda	[*_c16rtomb_sloc4_1_0],y
	tax
	lda	#0x00
	clc
	adc	*_c16rtomb_sloc3_1_0
	sta	_c16rtomb_high_surrogate_131072_45
	txa
	adc	*(_c16rtomb_sloc3_1_0 + 1)
	sta	(_c16rtomb_high_surrogate_131072_45 + 1)
;	../c16rtomb.c: 60: ps->c[1] = ps->c[2] = 0;
	lda	#0x00
	sta	[*_c16rtomb_sloc4_1_0],y
	dey
	sta	[*_c16rtomb_sloc2_1_0],y
;	../c16rtomb.c: 61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
	lda	_c16rtomb_high_surrogate_131072_45
	asl	a
	asl	a
	tax
	lda	#0x00
	clc
	adc	_c16rtomb_PARM_2
	pha
	txa
	adc	(_c16rtomb_PARM_2 + 1)
	tax
	pla
	sta	*_c16rtomb_sloc5_1_0
	stx	*(_c16rtomb_sloc5_1_0 + 1)
	dey
	sty	*(_c16rtomb_sloc5_1_0 + 2)
	sty	*(_c16rtomb_sloc5_1_0 + 3)
	lda	*_c16rtomb_sloc5_1_0
	clc
	sta	_c16rtomb_codepoint_65536_43
	lda	*(_c16rtomb_sloc5_1_0 + 1)
	clc
	adc	#0x24
	sta	(_c16rtomb_codepoint_65536_43 + 1)
	lda	*(_c16rtomb_sloc5_1_0 + 2)
	adc	#0x00
	sta	(_c16rtomb_codepoint_65536_43 + 2)
	lda	*(_c16rtomb_sloc5_1_0 + 3)
	adc	#0x00
	sta	(_c16rtomb_codepoint_65536_43 + 3)
	jmp	00120$
00115$:
;	../c16rtomb.c: 63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
	lda	_c16rtomb_PARM_2
	sec
	sbc	#0xff
	lda	(_c16rtomb_PARM_2 + 1)
	sbc	#0xd7
	bcc	00110$
	lda	(_c16rtomb_PARM_2 + 1)
	sec
	sbc	#0xe0
	bcc	00111$
00110$:
;	../c16rtomb.c: 64: codepoint = c16;
	lda	_c16rtomb_PARM_2
	sta	_c16rtomb_codepoint_65536_43
	lda	(_c16rtomb_PARM_2 + 1)
	sta	(_c16rtomb_codepoint_65536_43 + 1)
	ldx	#0x00
	stx	(_c16rtomb_codepoint_65536_43 + 2)
	stx	(_c16rtomb_codepoint_65536_43 + 3)
	jmp	00120$
00111$:
;	../c16rtomb.c: 67: if(c16 > 0xdbff)
	lda	#0xff
	sec
	sbc	_c16rtomb_PARM_2
	lda	#0xdb
	sbc	(_c16rtomb_PARM_2 + 1)
	bcc	00121$
;	../c16rtomb.c: 70: ps->c[1] = c16 & 0xff;
	lda	_c16rtomb_PARM_2
	ldy	#0x01
	sta	[*_c16rtomb_sloc0_1_0],y
;	../c16rtomb.c: 71: ps->c[2] = c16 >> 8;
	lda	(_c16rtomb_PARM_2 + 1)
	iny
	sta	[*_c16rtomb_sloc1_1_0],y
;	../c16rtomb.c: 72: return(0);
	lda	#0x00
	tax
	rts
00120$:
;	../c16rtomb.c: 75: return(wctomb(s, codepoint));
	lda	_c16rtomb_codepoint_65536_43
	sta	_wctomb_PARM_2
	lda	(_c16rtomb_codepoint_65536_43 + 1)
	sta	(_wctomb_PARM_2 + 1)
	lda	(_c16rtomb_codepoint_65536_43 + 2)
	sta	(_wctomb_PARM_2 + 2)
	lda	(_c16rtomb_codepoint_65536_43 + 3)
	sta	(_wctomb_PARM_2 + 3)
	ldx	(_c16rtomb_s_65536_42 + 1)
	lda	_c16rtomb_s_65536_42
	jmp	_wctomb
;	../c16rtomb.c: 77: eilseq:
00121$:
;	../c16rtomb.c: 78: errno = EILSEQ;
	ldx	#0x54
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../c16rtomb.c: 79: return(-1);
	lda	#0xff
	tax
;	../c16rtomb.c: 80: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
