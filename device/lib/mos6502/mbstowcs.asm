;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstowcs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl _mbstowcs_PARM_3
	.globl _mbstowcs_PARM_2
	.globl _mbstowcs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_mbstowcs_sloc0_1_0:
	.ds 2
_mbstowcs_sloc1_1_0:
	.ds 2
_mbstowcs_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbstowcs_PARM_2:
	.ds 2
_mbstowcs_PARM_3:
	.ds 2
_mbstowcs_m_65536_37:
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
;Allocation info for local variables in function 'mbstowcs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mbstowcs_sloc0_1_0'
;sloc1                     Allocated with name '_mbstowcs_sloc1_1_0'
;sloc2                     Allocated with name '_mbstowcs_sloc2_1_0'
;s                         Allocated with name '_mbstowcs_PARM_2'
;n                         Allocated with name '_mbstowcs_PARM_3'
;pwcs                      Allocated to registers 
;m                         Allocated with name '_mbstowcs_m_65536_37'
;b                         Allocated to registers a x 
;------------------------------------------------------------
;	../mbstowcs.c: 33: size_t mbstowcs(wchar_t *restrict pwcs, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbstowcs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbstowcs:
	sta	*_mbstowcs_sloc0_1_0
	stx	*(_mbstowcs_sloc0_1_0 + 1)
;	../mbstowcs.c: 35: size_t m = 0;
	ldx	#0x00
	stx	_mbstowcs_m_65536_37
	stx	(_mbstowcs_m_65536_37 + 1)
;	../mbstowcs.c: 36: while(n--)
	stx	*_mbstowcs_sloc1_1_0
	stx	*(_mbstowcs_sloc1_1_0 + 1)
	lda	_mbstowcs_PARM_3
	sta	*_mbstowcs_sloc2_1_0
	lda	(_mbstowcs_PARM_3 + 1)
	sta	*(_mbstowcs_sloc2_1_0 + 1)
00105$:
	lda	*_mbstowcs_sloc2_1_0
	ldx	*(_mbstowcs_sloc2_1_0 + 1)
	pha
	sec
	lda	*_mbstowcs_sloc2_1_0
	sbc	#0x01
	sta	*_mbstowcs_sloc2_1_0
	bcs	00126$
	dec	*(_mbstowcs_sloc2_1_0 + 1)
00126$:
	pla
	bne	00127$
	cpx	#0x00
00127$:
	beq	00107$
;	../mbstowcs.c: 38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
	lda	*_mbstowcs_sloc0_1_0
	ldx	*(_mbstowcs_sloc0_1_0 + 1)
	pha
	lda	*_mbstowcs_sloc0_1_0
	clc
	adc	#0x04
	sta	*_mbstowcs_sloc0_1_0
	bcc	00129$
	inc	*(_mbstowcs_sloc0_1_0 + 1)
00129$:
	pla
	ldy	_mbstowcs_PARM_2
	sty	_mbtowc_PARM_2
	ldy	(_mbstowcs_PARM_2 + 1)
	sty	(_mbtowc_PARM_2 + 1)
	ldy	#0x04
	sty	_mbtowc_PARM_3
	ldy	#0x00
	sty	(_mbtowc_PARM_3 + 1)
	jsr	_mbtowc
;	../mbstowcs.c: 39: if(!b)
	cmp	#0x00
	bne	00130$
	cpx	#0x00
00130$:
	beq	00107$
;	../mbstowcs.c: 41: if(b < 0)
	sta	*(__TEMP+0)
	txa
	sec
	sbc	#0x00
	php
	lda	*(__TEMP+0)
	plp
	bvc	00133$
	bpl	00132$
	bmi	00104$
00133$:
	bpl	00104$
00132$:
;	../mbstowcs.c: 42: return(-1);
	lda	#0xff
	tax
	rts
00104$:
;	../mbstowcs.c: 43: s += b;
	clc
	adc	_mbstowcs_PARM_2
	sta	_mbstowcs_PARM_2
	txa
	adc	(_mbstowcs_PARM_2 + 1)
	sta	(_mbstowcs_PARM_2 + 1)
;	../mbstowcs.c: 44: m++;
	inc	*_mbstowcs_sloc1_1_0
	bne	00135$
	inc	*(_mbstowcs_sloc1_1_0 + 1)
00135$:
	lda	*_mbstowcs_sloc1_1_0
	sta	_mbstowcs_m_65536_37
	lda	*(_mbstowcs_sloc1_1_0 + 1)
	sta	(_mbstowcs_m_65536_37 + 1)
	jmp	00105$
00107$:
;	../mbstowcs.c: 47: return(m);
	ldx	(_mbstowcs_m_65536_37 + 1)
	lda	_mbstowcs_m_65536_37
;	../mbstowcs.c: 48: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
