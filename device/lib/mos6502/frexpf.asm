;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module frexpf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf_PARM_2
	.globl _frexpf_PARM_1
	.globl _frexpf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_frexpf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_frexpf_PARM_1:
	.ds 4
_frexpf_PARM_2:
	.ds 2
_frexpf_fl_65536_26:
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
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;x                         Allocated with name '_frexpf_PARM_1'
;pw2                       Allocated with name '_frexpf_PARM_2'
;fl                        Allocated with name '_frexpf_fl_65536_26'
;i                         Allocated with name '_frexpf_i_65536_26'
;sloc0                     Allocated with name '_frexpf_sloc0_1_0'
;------------------------------------------------------------
;	../frexpf.c: 34: float frexpf(float x, int *pw2)
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_frexpf:
;	../frexpf.c: 39: fl.f=x;
	lda	(_frexpf_PARM_1 + 3)
	sta	(_frexpf_fl_65536_26 + 3)
	lda	(_frexpf_PARM_1 + 2)
	sta	(_frexpf_fl_65536_26 + 2)
	lda	(_frexpf_PARM_1 + 1)
	sta	(_frexpf_fl_65536_26 + 1)
	lda	_frexpf_PARM_1
	sta	_frexpf_fl_65536_26
;	../frexpf.c: 41: i  = ( fl.l >> 23) & 0x000000ff;
	lda	(_frexpf_fl_65536_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	(_frexpf_fl_65536_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_65536_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	_frexpf_fl_65536_26
	sta	*_frexpf_sloc0_1_0
	lda	*(_frexpf_sloc0_1_0 + 2)
	ldx	*(_frexpf_sloc0_1_0 + 3)
	stx	*(__TEMP+0)
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*_frexpf_sloc0_1_0
	stx	*(_frexpf_sloc0_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_frexpf_sloc0_1_0 + 2)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	*_frexpf_sloc0_1_0
	ldx	#0x00
;	../frexpf.c: 42: i -= 0x7e;
	sec
	sbc	#0x7e
	bcs	00103$
	dex
00103$:
;	../frexpf.c: 43: *pw2 = i;
	ldy	_frexpf_PARM_2
	sty	*_frexpf_sloc0_1_0
	ldy	(_frexpf_PARM_2 + 1)
	sty	*(_frexpf_sloc0_1_0 + 1)
	ldy	#0x00
	sta	[*_frexpf_sloc0_1_0],y
	txa
	iny
	sta	[*_frexpf_sloc0_1_0],y
;	../frexpf.c: 44: fl.l &= 0x807fffff; /* strip all exponent bits */
	lda	(_frexpf_fl_65536_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	(_frexpf_fl_65536_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_65536_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	_frexpf_fl_65536_26
	sta	*_frexpf_sloc0_1_0
	lda	*(_frexpf_sloc0_1_0 + 2)
	and	#0x7f
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	*(_frexpf_sloc0_1_0 + 3)
	and	#0x80
	sta	*(_frexpf_sloc0_1_0 + 3)
	sta	(_frexpf_fl_65536_26 + 3)
	lda	*(_frexpf_sloc0_1_0 + 2)
	sta	(_frexpf_fl_65536_26 + 2)
	lda	*(_frexpf_sloc0_1_0 + 1)
	sta	(_frexpf_fl_65536_26 + 1)
	lda	*_frexpf_sloc0_1_0
	sta	_frexpf_fl_65536_26
;	../frexpf.c: 45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	lda	*(_frexpf_sloc0_1_0 + 3)
	ora	#0x3f
	sta	*(_frexpf_sloc0_1_0 + 3)
	sta	(_frexpf_fl_65536_26 + 3)
	lda	*(_frexpf_sloc0_1_0 + 2)
	sta	(_frexpf_fl_65536_26 + 2)
	lda	*(_frexpf_sloc0_1_0 + 1)
	sta	(_frexpf_fl_65536_26 + 1)
	lda	*_frexpf_sloc0_1_0
	sta	_frexpf_fl_65536_26
;	../frexpf.c: 46: return(fl.f);
	lda	(_frexpf_fl_65536_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	(_frexpf_fl_65536_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_65536_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	_frexpf_fl_65536_26
	sta	*_frexpf_sloc0_1_0
	lda	*(_frexpf_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_frexpf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_frexpf_sloc0_1_0 + 1)
	lda	*_frexpf_sloc0_1_0
;	../frexpf.c: 47: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
