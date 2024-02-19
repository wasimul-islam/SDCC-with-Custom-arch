;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module frexpf
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
	.globl _frexpf_PARM_2
	.globl _frexpf_PARM_1
	.globl _frexpf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_frexpf_sloc0_1_0:
	.ds 4
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
_frexpf_PARM_1:
	.ds 4
_frexpf_PARM_2:
	.ds 2
_frexpf_fl_65536_26:
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
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;x                         Allocated with name '_frexpf_PARM_1'
;pw2                       Allocated with name '_frexpf_PARM_2'
;fl                        Allocated with name '_frexpf_fl_65536_26'
;i                         Allocated with name '_frexpf_i_65536_26'
;sloc0                     Allocated with name '_frexpf_sloc0_1_0'
;------------------------------------------------------------
;../frexpf.c:34: float frexpf(float x, int *pw2)
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_frexpf:
;../frexpf.c:39: fl.f=x;
	lda	_frexpf_PARM_1
	sta	_frexpf_fl_65536_26
	lda	(_frexpf_PARM_1 + 1)
	sta	(_frexpf_fl_65536_26 + 1)
	lda	(_frexpf_PARM_1 + 2)
	sta	(_frexpf_fl_65536_26 + 2)
	lda	(_frexpf_PARM_1 + 3)
	sta	(_frexpf_fl_65536_26 + 3)
;../frexpf.c:41: i  = ( fl.l >> 23) & 0x000000ff;
	lda	_frexpf_fl_65536_26
	sta	*_frexpf_sloc0_1_0
	lda	(_frexpf_fl_65536_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	(_frexpf_fl_65536_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_65536_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	*(_frexpf_sloc0_1_0 + 1)
	ldx	*_frexpf_sloc0_1_0
	asrx
	rora
	asrx
	rora
	asrx
	rora
	asrx
	rora
	asrx
	rora
	asrx
	rora
	asrx
	rora
	sta	*(_frexpf_sloc0_1_0 + 3)
	stx	*(_frexpf_sloc0_1_0 + 2)
	txa
	rola
	clra
	sbc	#0
	sta	*(_frexpf_sloc0_1_0 + 1)
	sta	*_frexpf_sloc0_1_0
	ldx	*(_frexpf_sloc0_1_0 + 3)
	lda	*(_frexpf_sloc0_1_0 + 2)
	psha
	pulh
	clrh
;../frexpf.c:42: i -= 0x7e;
	aix	#-126
	sthx	*_frexpf_sloc0_1_0
;../frexpf.c:43: *pw2 = i;
	lda	_frexpf_PARM_2
	ldx	(_frexpf_PARM_2 + 1)
	psha
	pulh
	lda	*_frexpf_sloc0_1_0
	sta	,x
	lda	*(_frexpf_sloc0_1_0 + 1)
	sta	1,x
;../frexpf.c:44: fl.l &= 0x807fffff; /* strip all exponent bits */
	lda	_frexpf_fl_65536_26
	sta	*_frexpf_sloc0_1_0
	lda	(_frexpf_fl_65536_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	(_frexpf_fl_65536_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_65536_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	*(_frexpf_sloc0_1_0 + 1)
	and	#0x7f
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	*_frexpf_sloc0_1_0
	and	#0x80
	sta	*_frexpf_sloc0_1_0
	lda	*_frexpf_sloc0_1_0
	sta	_frexpf_fl_65536_26
	lda	*(_frexpf_sloc0_1_0 + 1)
	sta	(_frexpf_fl_65536_26 + 1)
	lda	*(_frexpf_sloc0_1_0 + 2)
	sta	(_frexpf_fl_65536_26 + 2)
	lda	*(_frexpf_sloc0_1_0 + 3)
	sta	(_frexpf_fl_65536_26 + 3)
;../frexpf.c:45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	lda	*_frexpf_sloc0_1_0
	ora	#0x3f
	sta	*_frexpf_sloc0_1_0
	lda	*_frexpf_sloc0_1_0
	sta	_frexpf_fl_65536_26
	lda	*(_frexpf_sloc0_1_0 + 1)
	sta	(_frexpf_fl_65536_26 + 1)
	lda	*(_frexpf_sloc0_1_0 + 2)
	sta	(_frexpf_fl_65536_26 + 2)
	lda	*(_frexpf_sloc0_1_0 + 3)
	sta	(_frexpf_fl_65536_26 + 3)
;../frexpf.c:46: return(fl.f);
	lda	_frexpf_fl_65536_26
	sta	*_frexpf_sloc0_1_0
	lda	(_frexpf_fl_65536_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	(_frexpf_fl_65536_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_65536_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	mov	*_frexpf_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(_frexpf_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_frexpf_sloc0_1_0 + 2)
	lda	*(_frexpf_sloc0_1_0 + 3)
;../frexpf.c:47: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
