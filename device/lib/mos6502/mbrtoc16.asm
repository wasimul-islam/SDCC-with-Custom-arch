;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc16
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc16_PARM_4
	.globl _mbrtoc16_PARM_3
	.globl _mbrtoc16_PARM_2
	.globl _mbrtoc16
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_mbrtoc16_sloc0_1_0:
	.ds 2
_mbrtoc16_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbrtoc16_PARM_2:
	.ds 2
_mbrtoc16_PARM_3:
	.ds 2
_mbrtoc16_PARM_4:
	.ds 2
_mbrtoc16_pc16_65536_15:
	.ds 2
_mbrtoc16_codepoint_65536_16:
	.ds 4
_mbrtoc16_ret_65536_16:
	.ds 2
_mbrtoc16_sps_65536_16:
	.ds 3
_mbrtoc16_low_surrogate_65536_16:
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
;Allocation info for local variables in function 'mbrtoc16'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mbrtoc16_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtoc16_sloc1_1_0'
;s                         Allocated with name '_mbrtoc16_PARM_2'
;n                         Allocated with name '_mbrtoc16_PARM_3'
;ps                        Allocated with name '_mbrtoc16_PARM_4'
;pc16                      Allocated with name '_mbrtoc16_pc16_65536_15'
;codepoint                 Allocated with name '_mbrtoc16_codepoint_65536_16'
;ret                       Allocated with name '_mbrtoc16_ret_65536_16'
;sps                       Allocated with name '_mbrtoc16_sps_65536_16'
;low_surrogate             Allocated with name '_mbrtoc16_low_surrogate_65536_16'
;------------------------------------------------------------
;	../mbrtoc16.c: 34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrtoc16:
	sta	_mbrtoc16_pc16_65536_15
	stx	(_mbrtoc16_pc16_65536_15 + 1)
;	../mbrtoc16.c: 41: if(!s)
	lda	(_mbrtoc16_PARM_2 + 1)
	ora	_mbrtoc16_PARM_2
	bne	00102$
;	../mbrtoc16.c: 42: return(mbrtoc16(0, "", 1, ps));
	lda	#___str_0
	sta	_mbrtoc16_PARM_2
	lda	#>___str_0
	sta	(_mbrtoc16_PARM_2 + 1)
	ldx	#0x01
	stx	_mbrtoc16_PARM_3
	dex
	stx	(_mbrtoc16_PARM_3 + 1)
	txa
	jmp	_mbrtoc16
00102$:
;	../mbrtoc16.c: 44: if(!ps)
	lda	(_mbrtoc16_PARM_4 + 1)
	ora	_mbrtoc16_PARM_4
	bne	00104$
;	../mbrtoc16.c: 45: ps = &sps;
	lda	#_mbrtoc16_sps_65536_16
	sta	_mbrtoc16_PARM_4
	lda	#>_mbrtoc16_sps_65536_16
	sta	(_mbrtoc16_PARM_4 + 1)
00104$:
;	../mbrtoc16.c: 47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
	lda	_mbrtoc16_PARM_4
	sta	*_mbrtoc16_sloc0_1_0
	lda	(_mbrtoc16_PARM_4 + 1)
	sta	*(_mbrtoc16_sloc0_1_0 + 1)
	ldy	#0x00
	lda	[*_mbrtoc16_sloc0_1_0],y
	beq	00159$
	jmp	00108$
00159$:
	lda	*_mbrtoc16_sloc0_1_0
	ldx	*(_mbrtoc16_sloc0_1_0 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	bne	00107$
	lda	*_mbrtoc16_sloc0_1_0
	ldx	*(_mbrtoc16_sloc0_1_0 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	beq	00108$
00107$:
;	../mbrtoc16.c: 49: if(pc16)
	lda	(_mbrtoc16_pc16_65536_15 + 1)
	ora	_mbrtoc16_pc16_65536_15
	beq	00106$
;	../mbrtoc16.c: 50: *pc16 = ps->c[1] + (ps->c[2] << 8);
	lda	_mbrtoc16_PARM_4
	ldx	(_mbrtoc16_PARM_4 + 1)
	sta	*_mbrtoc16_sloc0_1_0
	stx	*(_mbrtoc16_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	ldy	#0x01
	lda	[*_mbrtoc16_sloc0_1_0],y
	tay
	lda	*(__TEMP+0)
	sty	*_mbrtoc16_sloc0_1_0
	pha
	lda	#0x00
	sta	*(_mbrtoc16_sloc0_1_0 + 1)
	pla
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	tax
	lda	#0x00
	clc
	adc	*_mbrtoc16_sloc0_1_0
	pha
	txa
	adc	*(_mbrtoc16_sloc0_1_0 + 1)
	tax
	pla
	sta	*(__TEMP+0)
	lda	_mbrtoc16_pc16_65536_15
	sta	*(__DPTR+0)
	lda	(_mbrtoc16_pc16_65536_15 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
00106$:
;	../mbrtoc16.c: 51: ps->c[1] = ps->c[2] = 0;
	lda	_mbrtoc16_PARM_4
	ldx	(_mbrtoc16_PARM_4 + 1)
	sta	*_mbrtoc16_sloc0_1_0
	stx	*(_mbrtoc16_sloc0_1_0 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	ldy	#0x02
	sta	[__DPTR],y
	dey
	sta	[*_mbrtoc16_sloc0_1_0],y
;	../mbrtoc16.c: 52: return(-3);
	lda	#0xfd
	ldx	#0xff
	rts
00108$:
;	../mbrtoc16.c: 55: ret = mbrtowc(&codepoint, s, n, ps);
	lda	_mbrtoc16_PARM_2
	sta	_mbrtowc_PARM_2
	lda	(_mbrtoc16_PARM_2 + 1)
	sta	(_mbrtowc_PARM_2 + 1)
	lda	_mbrtoc16_PARM_3
	sta	_mbrtowc_PARM_3
	lda	(_mbrtoc16_PARM_3 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtoc16_PARM_4
	sta	_mbrtowc_PARM_4
	lda	(_mbrtoc16_PARM_4 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	ldx	#>_mbrtoc16_codepoint_65536_16
	lda	#_mbrtoc16_codepoint_65536_16
	jsr	_mbrtowc
	sta	_mbrtoc16_ret_65536_16
	stx	(_mbrtoc16_ret_65536_16 + 1)
;	../mbrtoc16.c: 57: if(ret > MB_LEN_MAX)
	lda	#0x04
	sec
	sbc	_mbrtoc16_ret_65536_16
	lda	#0x00
	sbc	(_mbrtoc16_ret_65536_16 + 1)
	bcs	00112$
;	../mbrtoc16.c: 58: return(ret);
	ldx	(_mbrtoc16_ret_65536_16 + 1)
	lda	_mbrtoc16_ret_65536_16
	rts
00112$:
;	../mbrtoc16.c: 60: if (codepoint <= 0xffff) // Basic multilingual plane
	lda	#0xff
	sec
	sbc	_mbrtoc16_codepoint_65536_16
	lda	#0xff
	sbc	(_mbrtoc16_codepoint_65536_16 + 1)
	lda	#0x00
	sbc	(_mbrtoc16_codepoint_65536_16 + 2)
	lda	#0x00
	sbc	(_mbrtoc16_codepoint_65536_16 + 3)
	bcc	00116$
;	../mbrtoc16.c: 62: if(pc16)
	lda	(_mbrtoc16_pc16_65536_15 + 1)
	ora	_mbrtoc16_pc16_65536_15
	beq	00114$
;	../mbrtoc16.c: 63: *pc16 = codepoint;
	lda	_mbrtoc16_codepoint_65536_16
	ldx	(_mbrtoc16_codepoint_65536_16 + 1)
	sta	*(__TEMP+0)
	lda	_mbrtoc16_pc16_65536_15
	sta	*(__DPTR+0)
	lda	(_mbrtoc16_pc16_65536_15 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
00114$:
;	../mbrtoc16.c: 64: return(ret);
	ldx	(_mbrtoc16_ret_65536_16 + 1)
	lda	_mbrtoc16_ret_65536_16
	rts
00116$:
;	../mbrtoc16.c: 67: codepoint -= 0x100000;
	lda	_mbrtoc16_codepoint_65536_16
	sec
	sbc	#0x00
	sta	_mbrtoc16_codepoint_65536_16
	lda	(_mbrtoc16_codepoint_65536_16 + 1)
	sbc	#0x00
	sta	(_mbrtoc16_codepoint_65536_16 + 1)
	lda	(_mbrtoc16_codepoint_65536_16 + 2)
	sbc	#0x10
	sta	(_mbrtoc16_codepoint_65536_16 + 2)
	lda	(_mbrtoc16_codepoint_65536_16 + 3)
	sbc	#0x00
	sta	(_mbrtoc16_codepoint_65536_16 + 3)
;	../mbrtoc16.c: 68: if(pc16)
	lda	(_mbrtoc16_pc16_65536_15 + 1)
	ora	_mbrtoc16_pc16_65536_15
	beq	00118$
;	../mbrtoc16.c: 69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
	lda	(_mbrtoc16_codepoint_65536_16 + 1)
	ldx	(_mbrtoc16_codepoint_65536_16 + 2)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*_mbrtoc16_sloc1_1_0
	stx	*(_mbrtoc16_sloc1_1_0 + 1)
	ldx	(_mbrtoc16_codepoint_65536_16 + 3)
	lda	#0x00
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	ora	*(_mbrtoc16_sloc1_1_0 + 1)
	sta	*(_mbrtoc16_sloc1_1_0 + 1)
	stx	*(_mbrtoc16_sloc1_1_0 + 2)
	ldy	#0x00
	sty	*(_mbrtoc16_sloc1_1_0 + 3)
	lda	*_mbrtoc16_sloc1_1_0
	ldx	*(_mbrtoc16_sloc1_1_0 + 1)
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
	sta	*(__TEMP+0)
	lda	_mbrtoc16_pc16_65536_15
	sta	*(__DPTR+0)
	lda	(_mbrtoc16_pc16_65536_15 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
00118$:
;	../mbrtoc16.c: 70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
	lda	_mbrtoc16_codepoint_65536_16
	ldx	(_mbrtoc16_codepoint_65536_16 + 1)
	sta	*(__TEMP+0)
	txa
	and	#0x03
	tax
	lda	*(__TEMP+0)
	clc
	sta	_mbrtoc16_low_surrogate_65536_16
	txa
	clc
	adc	#0xdc
	sta	(_mbrtoc16_low_surrogate_65536_16 + 1)
;	../mbrtoc16.c: 71: ps->c[0] = 0;
	lda	_mbrtoc16_PARM_4
	sta	*_mbrtoc16_sloc1_1_0
	lda	(_mbrtoc16_PARM_4 + 1)
	sta	*(_mbrtoc16_sloc1_1_0 + 1)
	lda	#0x00
	tay
	sta	[*_mbrtoc16_sloc1_1_0],y
;	../mbrtoc16.c: 72: ps->c[1] = low_surrogate & 0xff;
	lda	*_mbrtoc16_sloc1_1_0
	sta	*_mbrtoc16_sloc0_1_0
	lda	*(_mbrtoc16_sloc1_1_0 + 1)
	sta	*(_mbrtoc16_sloc0_1_0 + 1)
	lda	_mbrtoc16_low_surrogate_65536_16
	iny
	sta	[*_mbrtoc16_sloc0_1_0],y
;	../mbrtoc16.c: 73: ps->c[2] = low_surrogate >> 8;
	lda	(_mbrtoc16_low_surrogate_65536_16 + 1)
	iny
	sta	[*_mbrtoc16_sloc1_1_0],y
;	../mbrtoc16.c: 75: return(ret);
	ldx	(_mbrtoc16_ret_65536_16 + 1)
	lda	_mbrtoc16_ret_65536_16
;	../mbrtoc16.c: 76: }
	rts
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
