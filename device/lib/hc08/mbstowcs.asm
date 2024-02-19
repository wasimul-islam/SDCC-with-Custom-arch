;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbstowcs
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
	.globl _mbtowc
	.globl _mbstowcs_PARM_3
	.globl _mbstowcs_PARM_2
	.globl _mbstowcs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
_mbstowcs_PARM_2:
	.ds 2
_mbstowcs_PARM_3:
	.ds 2
_mbstowcs_m_65536_37:
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
;../mbstowcs.c:33: size_t mbstowcs(wchar_t *restrict pwcs, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbstowcs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbstowcs:
	sta	*(_mbstowcs_sloc0_1_0 + 1)
	stx	*_mbstowcs_sloc0_1_0
;../mbstowcs.c:35: size_t m = 0;
	clra
	sta	_mbstowcs_m_65536_37
	sta	(_mbstowcs_m_65536_37 + 1)
;../mbstowcs.c:36: while(n--)
	clrh
	tax
	sthx	*_mbstowcs_sloc1_1_0
	lda	_mbstowcs_PARM_3
	sta	*_mbstowcs_sloc2_1_0
	lda	(_mbstowcs_PARM_3 + 1)
	sta	*(_mbstowcs_sloc2_1_0 + 1)
00105$:
	ldhx	*_mbstowcs_sloc2_1_0
	pshx
	pshh
	ldhx	*_mbstowcs_sloc2_1_0
	aix	#-1
	sthx	*_mbstowcs_sloc2_1_0
	pulh
	pulx
	cphx	#0x00
	beq	00107$
;../mbstowcs.c:38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
	ldhx	*_mbstowcs_sloc0_1_0
	pshx
	pshh
	ldhx	*_mbstowcs_sloc0_1_0
	aix	#4
	sthx	*_mbstowcs_sloc0_1_0
	pulh
	pulx
	lda	_mbstowcs_PARM_2
	sta	_mbtowc_PARM_2
	lda	(_mbstowcs_PARM_2 + 1)
	sta	(_mbtowc_PARM_2 + 1)
	clra
	sta	_mbtowc_PARM_3
	lda	#0x04
	sta	(_mbtowc_PARM_3 + 1)
	txa
	pshh
	pulx
	jsr	_mbtowc
;../mbstowcs.c:39: if(!b)
	tsta
	bne	00131$
	tstx
00131$:
	beq	00107$
;../mbstowcs.c:41: if(b < 0)
	psha
	txa
	sub	#0x00
	pula
	bge	00104$
;../mbstowcs.c:42: return(-1);
	lda	#0xff
	tax
	rts
00104$:
;../mbstowcs.c:43: s += b;
	add	(_mbstowcs_PARM_2 + 1)
	sta	(_mbstowcs_PARM_2 + 1)
	txa
	adc	_mbstowcs_PARM_2
	sta	_mbstowcs_PARM_2
;../mbstowcs.c:44: m++;
	ldhx	*_mbstowcs_sloc1_1_0
	aix	#1
	sthx	*_mbstowcs_sloc1_1_0
	lda	*_mbstowcs_sloc1_1_0
	sta	_mbstowcs_m_65536_37
	lda	*(_mbstowcs_sloc1_1_0 + 1)
	sta	(_mbstowcs_m_65536_37 + 1)
	bra	00105$
00107$:
;../mbstowcs.c:47: return(m);
	ldx	_mbstowcs_m_65536_37
	lda	(_mbstowcs_m_65536_37 + 1)
;../mbstowcs.c:48: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
