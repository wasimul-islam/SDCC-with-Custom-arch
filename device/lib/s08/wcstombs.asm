;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module wcstombs
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
	.globl _wcstombs_PARM_3
	.globl _wcstombs_PARM_2
	.globl _wcstombs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_wcstombs_sloc0_1_0:
	.ds 2
_wcstombs_sloc1_1_0:
	.ds 1
_wcstombs_sloc2_1_0:
	.ds 2
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
;Allocation info for local variables in function 'wcstombs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_wcstombs_sloc0_1_0'
;sloc1                     Allocated with name '_wcstombs_sloc1_1_0'
;sloc2                     Allocated with name '_wcstombs_sloc2_1_0'
;pwcs                      Allocated with name '_wcstombs_PARM_2'
;n                         Allocated with name '_wcstombs_PARM_3'
;s                         Allocated with name '_wcstombs_s_65536_36'
;m                         Allocated with name '_wcstombs_m_65536_37'
;buffer                    Allocated with name '_wcstombs_buffer_65536_37'
;b                         Allocated to registers a x 
;------------------------------------------------------------
;../wcstombs.c:33: size_t wcstombs(char *restrict s, const wchar_t *restrict pwcs, size_t n)
;	-----------------------------------------
;	 function wcstombs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcstombs:
	sta	(_wcstombs_s_65536_36 + 1)
	stx	_wcstombs_s_65536_36
;../wcstombs.c:35: size_t m = 0;
	clrh
	clrx
	sthx	_wcstombs_m_65536_37
;../wcstombs.c:38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
	ldhx	_wcstombs_PARM_2
	sthx	*_wcstombs_sloc0_1_0
00107$:
	lda	#0x04
	sub	(_wcstombs_PARM_3 + 1)
	clra
	sbc	_wcstombs_PARM_3
	bcs	00108$
	ldhx	*_wcstombs_sloc0_1_0
	lda	,x
	sta	_wctomb_PARM_2
	lda	1,x
	sta	(_wctomb_PARM_2 + 1)
	lda	2,x
	sta	(_wctomb_PARM_2 + 2)
	lda	3,x
	sta	(_wctomb_PARM_2 + 3)
	lda	#_wcstombs_buffer_65536_37
	ldx	#>_wcstombs_buffer_65536_37
	jsr	_wctomb
	psha
	pshx
	pulh
	pulx
	cphx	_wcstombs_PARM_3
	bls	00133$
	bra	00109$
00133$:
00108$:
;../wcstombs.c:40: int b = wctomb(s, *pwcs);
	ldhx	*_wcstombs_sloc0_1_0
	lda	,x
	sta	_wctomb_PARM_2
	lda	1,x
	sta	(_wctomb_PARM_2 + 1)
	lda	2,x
	sta	(_wctomb_PARM_2 + 2)
	lda	3,x
	sta	(_wctomb_PARM_2 + 3)
	lda	(_wcstombs_s_65536_36 + 1)
	ldx	_wcstombs_s_65536_36
	jsr	_wctomb
;../wcstombs.c:42: if(b == 1 && !*s)
	cmp	#0x01
	bne	00134$
	cpx	#0x00
	beq	00135$
00134$:
	bra	00102$
00135$:
	pshx
	ldhx	_wcstombs_s_65536_36
	psha
	lda	,x
	pula
	pulx
	beq	00109$
;../wcstombs.c:43: break;
00102$:
;../wcstombs.c:44: if(b < 0)
	psha
	txa
	sub	#0x00
	pula
	bge	00105$
;../wcstombs.c:45: return(-1);
	lda	#0xff
	tax
	rts
00105$:
;../wcstombs.c:47: n -= b;
	sta	*(_wcstombs_sloc2_1_0 + 1)
	stx	*_wcstombs_sloc2_1_0
	psha
	lda	(_wcstombs_PARM_3 + 1)
	sub	*(_wcstombs_sloc2_1_0 + 1)
	sta	(_wcstombs_PARM_3 + 1)
	lda	_wcstombs_PARM_3
	sbc	*_wcstombs_sloc2_1_0
	sta	_wcstombs_PARM_3
;../wcstombs.c:48: m += b;
	lda	*(_wcstombs_sloc2_1_0 + 1)
	add	(_wcstombs_m_65536_37 + 1)
	sta	(_wcstombs_m_65536_37 + 1)
	lda	*_wcstombs_sloc2_1_0
	adc	_wcstombs_m_65536_37
	sta	_wcstombs_m_65536_37
	pula
;../wcstombs.c:49: s += b;
	add	(_wcstombs_s_65536_36 + 1)
	sta	(_wcstombs_s_65536_36 + 1)
	txa
	adc	_wcstombs_s_65536_36
	sta	_wcstombs_s_65536_36
;../wcstombs.c:50: pwcs++;
	ldhx	*_wcstombs_sloc0_1_0
	aix	#4
	sthx	*_wcstombs_sloc0_1_0
	jmp	00107$
00109$:
;../wcstombs.c:53: return(m);
	ldx	_wcstombs_m_65536_37
	lda	(_wcstombs_m_65536_37 + 1)
;../wcstombs.c:54: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
