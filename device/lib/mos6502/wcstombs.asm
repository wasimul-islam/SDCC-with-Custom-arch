;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcstombs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _wcstombs_PARM_3
	.globl _wcstombs_PARM_2
	.globl _wcstombs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_wcstombs_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wcstombs_PARM_2:
	.ds 2
_wcstombs_PARM_3:
	.ds 2
_wcstombs_s_65536_36:
	.ds 2
_wcstombs_m_65536_37:
	.ds 2
_wcstombs_buffer_65536_37:
	.ds 4
_wcstombs_b_131072_38:
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
;Allocation info for local variables in function 'wcstombs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_wcstombs_sloc0_1_0'
;pwcs                      Allocated with name '_wcstombs_PARM_2'
;n                         Allocated with name '_wcstombs_PARM_3'
;s                         Allocated with name '_wcstombs_s_65536_36'
;m                         Allocated with name '_wcstombs_m_65536_37'
;buffer                    Allocated with name '_wcstombs_buffer_65536_37'
;b                         Allocated with name '_wcstombs_b_131072_38'
;------------------------------------------------------------
;	../wcstombs.c: 33: size_t wcstombs(char *restrict s, const wchar_t *restrict pwcs, size_t n)
;	-----------------------------------------
;	 function wcstombs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcstombs:
	sta	_wcstombs_s_65536_36
	stx	(_wcstombs_s_65536_36 + 1)
;	../wcstombs.c: 35: size_t m = 0;
	ldx	#0x00
	stx	_wcstombs_m_65536_37
	stx	(_wcstombs_m_65536_37 + 1)
;	../wcstombs.c: 38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
	lda	_wcstombs_PARM_2
	sta	*_wcstombs_sloc0_1_0
	lda	(_wcstombs_PARM_2 + 1)
	sta	*(_wcstombs_sloc0_1_0 + 1)
00107$:
	lda	#0x04
	sec
	sbc	_wcstombs_PARM_3
	lda	#0x00
	sbc	(_wcstombs_PARM_3 + 1)
	bcc	00108$
	ldy	#0x00
	lda	[*_wcstombs_sloc0_1_0],y
	sta	_wctomb_PARM_2
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 1)
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 2)
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 3)
	ldx	#>_wcstombs_buffer_65536_37
	lda	#_wcstombs_buffer_65536_37
	jsr	_wctomb
	sta	*(__TEMP+0)
	lda	_wcstombs_PARM_3
	sec
	sbc	*(__TEMP+0)
	lda	(_wcstombs_PARM_3 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	bcs	00129$
	jmp	00109$
00129$:
00108$:
;	../wcstombs.c: 40: int b = wctomb(s, *pwcs);
	ldy	#0x00
	lda	[*_wcstombs_sloc0_1_0],y
	sta	_wctomb_PARM_2
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 1)
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 2)
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 3)
	ldx	(_wcstombs_s_65536_36 + 1)
	lda	_wcstombs_s_65536_36
	jsr	_wctomb
	sta	_wcstombs_b_131072_38
	stx	(_wcstombs_b_131072_38 + 1)
;	../wcstombs.c: 42: if(b == 1 && !*s)
	lda	_wcstombs_b_131072_38
	cmp	#0x01
	bne	00102$
	lda	(_wcstombs_b_131072_38 + 1)
	bne	00102$
	lda	_wcstombs_s_65536_36
	sta	*(__DPTR+0)
	lda	(_wcstombs_s_65536_36 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00109$
;	../wcstombs.c: 43: break;
00102$:
;	../wcstombs.c: 44: if(b < 0)
	lda	(_wcstombs_b_131072_38 + 1)
	sec
	sbc	#0x00
	bvc	00135$
	bpl	00134$
	bmi	00105$
00135$:
	bpl	00105$
00134$:
;	../wcstombs.c: 45: return(-1);
	lda	#0xff
	tax
	rts
00105$:
;	../wcstombs.c: 47: n -= b;
	lda	_wcstombs_b_131072_38
	ldx	(_wcstombs_b_131072_38 + 1)
	pha
	sta	*(__TEMP+0)
	lda	_wcstombs_PARM_3
	sec
	sbc	*(__TEMP+0)
	sta	_wcstombs_PARM_3
	lda	(_wcstombs_PARM_3 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	sta	(_wcstombs_PARM_3 + 1)
	pla
;	../wcstombs.c: 48: m += b;
	clc
	adc	_wcstombs_m_65536_37
	sta	_wcstombs_m_65536_37
	txa
	adc	(_wcstombs_m_65536_37 + 1)
	sta	(_wcstombs_m_65536_37 + 1)
;	../wcstombs.c: 49: s += b;
	lda	_wcstombs_s_65536_36
	clc
	adc	_wcstombs_b_131072_38
	sta	_wcstombs_s_65536_36
	lda	(_wcstombs_s_65536_36 + 1)
	adc	(_wcstombs_b_131072_38 + 1)
	sta	(_wcstombs_s_65536_36 + 1)
;	../wcstombs.c: 50: pwcs++;
	lda	*_wcstombs_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcstombs_sloc0_1_0
	bcc	00137$
	inc	*(_wcstombs_sloc0_1_0 + 1)
00137$:
	jmp	00107$
00109$:
;	../wcstombs.c: 53: return(m);
	ldx	(_wcstombs_m_65536_37 + 1)
	lda	_wcstombs_m_65536_37
;	../wcstombs.c: 54: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
