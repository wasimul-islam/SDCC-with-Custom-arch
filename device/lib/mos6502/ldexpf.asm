;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf_PARM_2
	.globl _ldexpf_PARM_1
	.globl _ldexpf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_ldexpf_sloc0_1_0:
	.ds 4
_ldexpf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_ldexpf_PARM_1:
	.ds 4
_ldexpf_PARM_2:
	.ds 2
_ldexpf_fl_65536_26:
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
;Allocation info for local variables in function 'ldexpf'
;------------------------------------------------------------
;x                         Allocated with name '_ldexpf_PARM_1'
;pw2                       Allocated with name '_ldexpf_PARM_2'
;fl                        Allocated with name '_ldexpf_fl_65536_26'
;e                         Allocated with name '_ldexpf_e_65536_26'
;sloc0                     Allocated with name '_ldexpf_sloc0_1_0'
;sloc1                     Allocated with name '_ldexpf_sloc1_1_0'
;------------------------------------------------------------
;	../ldexpf.c: 34: float ldexpf(float x, int pw2)
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ldexpf:
;	../ldexpf.c: 39: fl.f = x;
	lda	(_ldexpf_PARM_1 + 3)
	sta	(_ldexpf_fl_65536_26 + 3)
	lda	(_ldexpf_PARM_1 + 2)
	sta	(_ldexpf_fl_65536_26 + 2)
	lda	(_ldexpf_PARM_1 + 1)
	sta	(_ldexpf_fl_65536_26 + 1)
	lda	_ldexpf_PARM_1
	sta	_ldexpf_fl_65536_26
;	../ldexpf.c: 41: e=(fl.l >> 23) & 0x000000ff;
	lda	(_ldexpf_fl_65536_26 + 3)
	sta	*(_ldexpf_sloc0_1_0 + 3)
	lda	(_ldexpf_fl_65536_26 + 2)
	sta	*(_ldexpf_sloc0_1_0 + 2)
	lda	(_ldexpf_fl_65536_26 + 1)
	sta	*(_ldexpf_sloc0_1_0 + 1)
	lda	_ldexpf_fl_65536_26
	sta	*_ldexpf_sloc0_1_0
	lda	*(_ldexpf_sloc0_1_0 + 2)
	ldx	*(_ldexpf_sloc0_1_0 + 3)
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
	sta	*_ldexpf_sloc0_1_0
	stx	*(_ldexpf_sloc0_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_ldexpf_sloc0_1_0 + 2)
	sta	*(_ldexpf_sloc0_1_0 + 3)
	ldx	#0x00
	stx	*(_ldexpf_sloc0_1_0 + 1)
	stx	*(_ldexpf_sloc0_1_0 + 2)
	stx	*(_ldexpf_sloc0_1_0 + 3)
;	../ldexpf.c: 42: e+=pw2;
	lda	_ldexpf_PARM_2
	sta	*_ldexpf_sloc1_1_0
	lda	(_ldexpf_PARM_2 + 1)
	sta	*(_ldexpf_sloc1_1_0 + 1)
	asl	a
	txa
	adc	#0xff
	eor	#0xff
	sta	*(_ldexpf_sloc1_1_0 + 2)
	sta	*(_ldexpf_sloc1_1_0 + 3)
	lda	*_ldexpf_sloc0_1_0
	clc
	adc	*_ldexpf_sloc1_1_0
	sta	*_ldexpf_sloc1_1_0
	lda	*(_ldexpf_sloc0_1_0 + 1)
	adc	*(_ldexpf_sloc1_1_0 + 1)
	sta	*(_ldexpf_sloc1_1_0 + 1)
	lda	*(_ldexpf_sloc0_1_0 + 2)
	adc	*(_ldexpf_sloc1_1_0 + 2)
	sta	*(_ldexpf_sloc1_1_0 + 2)
	lda	*(_ldexpf_sloc0_1_0 + 3)
	adc	*(_ldexpf_sloc1_1_0 + 3)
	sta	*(_ldexpf_sloc1_1_0 + 3)
;	../ldexpf.c: 43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	stx	*(_ldexpf_sloc1_1_0 + 1)
	stx	*(_ldexpf_sloc1_1_0 + 2)
	stx	*(_ldexpf_sloc1_1_0 + 3)
	lda	*_ldexpf_sloc1_1_0
	ldx	*(_ldexpf_sloc1_1_0 + 1)
	pha
	txa
	lsr	a
	tax
	pla
	ror	a
	tax
	lda	#0x00
	ror	a
	sta	*(_ldexpf_sloc1_1_0 + 2)
	stx	*(_ldexpf_sloc1_1_0 + 3)
	ldx	#0x00
	stx	*_ldexpf_sloc1_1_0
	stx	*(_ldexpf_sloc1_1_0 + 1)
	lda	(_ldexpf_fl_65536_26 + 3)
	sta	*(_ldexpf_sloc0_1_0 + 3)
	lda	(_ldexpf_fl_65536_26 + 2)
	sta	*(_ldexpf_sloc0_1_0 + 2)
	lda	(_ldexpf_fl_65536_26 + 1)
	sta	*(_ldexpf_sloc0_1_0 + 1)
	lda	_ldexpf_fl_65536_26
	sta	*_ldexpf_sloc0_1_0
	lda	*(_ldexpf_sloc0_1_0 + 2)
	and	#0x7f
	sta	*(_ldexpf_sloc0_1_0 + 2)
	lda	*(_ldexpf_sloc0_1_0 + 3)
	and	#0x80
	sta	*(_ldexpf_sloc0_1_0 + 3)
	lda	*_ldexpf_sloc1_1_0
	ora	*_ldexpf_sloc0_1_0
	sta	*_ldexpf_sloc1_1_0
	lda	*(_ldexpf_sloc1_1_0 + 1)
	ora	*(_ldexpf_sloc0_1_0 + 1)
	sta	*(_ldexpf_sloc1_1_0 + 1)
	lda	*(_ldexpf_sloc1_1_0 + 2)
	ora	*(_ldexpf_sloc0_1_0 + 2)
	sta	*(_ldexpf_sloc1_1_0 + 2)
	lda	*(_ldexpf_sloc1_1_0 + 3)
	ora	*(_ldexpf_sloc0_1_0 + 3)
	sta	*(_ldexpf_sloc1_1_0 + 3)
	sta	(_ldexpf_fl_65536_26 + 3)
	lda	*(_ldexpf_sloc1_1_0 + 2)
	sta	(_ldexpf_fl_65536_26 + 2)
	lda	*(_ldexpf_sloc1_1_0 + 1)
	sta	(_ldexpf_fl_65536_26 + 1)
	lda	*_ldexpf_sloc1_1_0
	sta	_ldexpf_fl_65536_26
;	../ldexpf.c: 45: return(fl.f);
	lda	(_ldexpf_fl_65536_26 + 3)
	sta	*(_ldexpf_sloc1_1_0 + 3)
	lda	(_ldexpf_fl_65536_26 + 2)
	sta	*(_ldexpf_sloc1_1_0 + 2)
	lda	(_ldexpf_fl_65536_26 + 1)
	sta	*(_ldexpf_sloc1_1_0 + 1)
	lda	_ldexpf_fl_65536_26
	sta	*_ldexpf_sloc1_1_0
	lda	*(_ldexpf_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_ldexpf_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_ldexpf_sloc1_1_0 + 1)
	lda	*_ldexpf_sloc1_1_0
;	../ldexpf.c: 46: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
