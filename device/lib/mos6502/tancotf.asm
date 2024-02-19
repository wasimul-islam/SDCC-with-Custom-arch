;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _tancotf_PARM_2
	.globl _tancotf_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_tancotf_sloc0_1_0:
	.ds 4
_tancotf_sloc1_1_0:
	.ds 4
_tancotf_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_tancotf_PARM_1:
	.ds 4
_tancotf_PARM_2:
	.ds 1
_tancotf_xnum_65536_26:
	.ds 4
_tancotf_xden_65536_26:
	.ds 4
_tancotf_n_65536_26:
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
;Allocation info for local variables in function 'tancotf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tancotf_sloc0_1_0'
;sloc1                     Allocated with name '_tancotf_sloc1_1_0'
;sloc2                     Allocated with name '_tancotf_sloc2_1_0'
;x                         Allocated with name '_tancotf_PARM_1'
;iscotan                   Allocated with name '_tancotf_PARM_2'
;f                         Allocated with name '_tancotf_f_65536_26'
;g                         Allocated with name '_tancotf_g_65536_26'
;xn                        Allocated with name '_tancotf_xn_65536_26'
;xnum                      Allocated with name '_tancotf_xnum_65536_26'
;xden                      Allocated with name '_tancotf_xden_65536_26'
;n                         Allocated with name '_tancotf_n_65536_26'
;------------------------------------------------------------
;	../tancotf.c: 53: float tancotf(float x, bool iscotan)
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_tancotf:
;	../tancotf.c: 58: if (fabsf(x) > YMAX)
	lda	(_tancotf_PARM_1 + 3)
	pha
	lda	(_tancotf_PARM_1 + 2)
	pha
	lda	(_tancotf_PARM_1 + 1)
	pha
	lda	_tancotf_PARM_1
	pha
	jsr	_fabsf
	sta	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_2 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	ldx	#0x00
	stx	___fslt_PARM_1
	ldx	#0x08
	stx	(___fslt_PARM_1 + 1)
	ldx	#0xc9
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x45
	stx	(___fslt_PARM_1 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00102$
;	../tancotf.c: 60: errno = ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../tancotf.c: 61: return 0.0;
	txa
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../tancotf.c: 65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	ldx	#0x83
	stx	___fsmul_PARM_1
	ldx	#0xf9
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x22
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
	lda	_tancotf_PARM_1
	sta	___fsmul_PARM_2
	lda	(_tancotf_PARM_1 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_tancotf_PARM_1 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_tancotf_PARM_1 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	*_tancotf_sloc0_1_0
	stx	*(_tancotf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc0_1_0 + 3)
	ldx	#0x00
	stx	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	stx	(___fslt_PARM_1 + 2)
	stx	(___fslt_PARM_1 + 3)
	lda	_tancotf_PARM_1
	sta	___fslt_PARM_2
	lda	(_tancotf_PARM_1 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	(_tancotf_PARM_1 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_tancotf_PARM_1 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00117$
	ldx	#0x00
	stx	*_tancotf_sloc1_1_0
	stx	*(_tancotf_sloc1_1_0 + 1)
	stx	*(_tancotf_sloc1_1_0 + 2)
	ldx	#0x3f
	stx	*(_tancotf_sloc1_1_0 + 3)
	jmp	00118$
00117$:
	ldx	#0x00
	stx	*_tancotf_sloc1_1_0
	stx	*(_tancotf_sloc1_1_0 + 1)
	stx	*(_tancotf_sloc1_1_0 + 2)
	ldx	#0xbf
	stx	*(_tancotf_sloc1_1_0 + 3)
00118$:
	lda	*_tancotf_sloc0_1_0
	sta	___fsadd_PARM_1
	lda	*(_tancotf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_tancotf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_tancotf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*_tancotf_sloc1_1_0
	sta	___fsadd_PARM_2
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fs2sint_PARM_1
	stx	(___fs2sint_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fs2sint_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
	sta	_tancotf_n_65536_26
;	../tancotf.c: 66: xn=n;
	stx	(_tancotf_n_65536_26 + 1)
	lda	_tancotf_n_65536_26
	jsr	___sint2fs
	sta	*_tancotf_sloc1_1_0
	stx	*(_tancotf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc1_1_0 + 3)
;	../tancotf.c: 68: xnum=(int)x;
	lda	_tancotf_PARM_1
	sta	___fs2sint_PARM_1
	lda	(_tancotf_PARM_1 + 1)
	sta	(___fs2sint_PARM_1 + 1)
	lda	(_tancotf_PARM_1 + 2)
	sta	(___fs2sint_PARM_1 + 2)
	lda	(_tancotf_PARM_1 + 3)
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
	jsr	___sint2fs
	sta	*_tancotf_sloc0_1_0
	stx	*(_tancotf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc0_1_0 + 3)
;	../tancotf.c: 69: xden=x-xnum;
	lda	_tancotf_PARM_1
	sta	___fssub_PARM_1
	lda	(_tancotf_PARM_1 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	(_tancotf_PARM_1 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	(_tancotf_PARM_1 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*_tancotf_sloc0_1_0
	sta	___fssub_PARM_2
	lda	*(_tancotf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	*(_tancotf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	*(_tancotf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
;	../tancotf.c: 70: f=((xnum-xn*C1)+xden)-xn*C2;
	jsr	___fssub
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
	ldx	#0x00
	stx	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xc9
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
	lda	*_tancotf_sloc0_1_0
	sta	___fssub_PARM_1
	lda	*(_tancotf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_tancotf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_tancotf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	lda	*_tancotf_sloc2_1_0
	sta	___fsadd_PARM_2
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
	ldx	#0x22
	stx	___fsmul_PARM_1
	ldx	#0xaa
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xfd
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x39
	stx	(___fsmul_PARM_1 + 3)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
	lda	*_tancotf_sloc2_1_0
	sta	___fssub_PARM_1
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
;	../tancotf.c: 72: if (fabsf(f) < EPS)
	jsr	___fssub
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
	pha
	lda	*(_tancotf_sloc2_1_0 + 2)
	pha
	lda	*(_tancotf_sloc2_1_0 + 1)
	pha
	lda	*_tancotf_sloc2_1_0
	pha
	jsr	_fabsf
	sta	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_1 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x39
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00104$
;	../tancotf.c: 74: xnum = f;
	lda	*_tancotf_sloc2_1_0
	sta	_tancotf_xnum_65536_26
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(_tancotf_xnum_65536_26 + 1)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(_tancotf_xnum_65536_26 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(_tancotf_xnum_65536_26 + 3)
;	../tancotf.c: 75: xden = 1.0;
	ldx	#0x00
	stx	_tancotf_xden_65536_26
	stx	(_tancotf_xden_65536_26 + 1)
	ldx	#0x80
	stx	(_tancotf_xden_65536_26 + 2)
	ldx	#0x3f
	stx	(_tancotf_xden_65536_26 + 3)
	jmp	00105$
00104$:
;	../tancotf.c: 79: g = f*f;
	lda	*_tancotf_sloc2_1_0
	sta	___fsmul_PARM_1
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*_tancotf_sloc2_1_0
	sta	___fsmul_PARM_2
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
;	../tancotf.c: 80: xnum = P(f,g);
	jsr	___fsmul
	sta	*_tancotf_sloc1_1_0
	stx	*(_tancotf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc1_1_0 + 3)
	ldx	#0xb8
	stx	___fsmul_PARM_1
	ldx	#0x33
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xc4
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbd
	stx	(___fsmul_PARM_1 + 3)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	lda	*_tancotf_sloc2_1_0
	sta	___fsmul_PARM_2
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	lda	*_tancotf_sloc2_1_0
	sta	___fsadd_PARM_2
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	_tancotf_xnum_65536_26
	stx	(_tancotf_xnum_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_tancotf_xnum_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_tancotf_xnum_65536_26 + 3)
;	../tancotf.c: 81: xden = Q(g);
	ldx	#0x75
	stx	___fsmul_PARM_1
	ldx	#0x33
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x1f
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3c
	stx	(___fsmul_PARM_1 + 3)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0xaf
	stx	___fsadd_PARM_2
	ldx	#0xb7
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xdb
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xbe
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x00
	stx	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x80
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	_tancotf_xden_65536_26
	stx	(_tancotf_xden_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_tancotf_xden_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_tancotf_xden_65536_26 + 3)
00105$:
;	../tancotf.c: 84: if(n&1)
	lda	#0x01
	and	_tancotf_n_65536_26
	bne	00147$
	jmp	00113$
00147$:
;	../tancotf.c: 87: if(iscotan) return (-xnum/xden);
	lda	_tancotf_PARM_2
	beq	00107$
	lda	_tancotf_xnum_65536_26
	sta	___fsdiv_PARM_1
	lda	(_tancotf_xnum_65536_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	(_tancotf_xnum_65536_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xnum_65536_26 + 3)
	eor	#0x80
	sta	(___fsdiv_PARM_1 + 3)
	lda	_tancotf_xden_65536_26
	sta	___fsdiv_PARM_2
	lda	(_tancotf_xden_65536_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	(_tancotf_xden_65536_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_tancotf_xden_65536_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_tancotf_sloc2_1_0 + 1)
	lda	*_tancotf_sloc2_1_0
	rts
00107$:
;	../tancotf.c: 88: else return (-xden/xnum);
	lda	_tancotf_xden_65536_26
	sta	___fsdiv_PARM_1
	lda	(_tancotf_xden_65536_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	(_tancotf_xden_65536_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xden_65536_26 + 3)
	eor	#0x80
	sta	(___fsdiv_PARM_1 + 3)
	lda	_tancotf_xnum_65536_26
	sta	___fsdiv_PARM_2
	lda	(_tancotf_xnum_65536_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	(_tancotf_xnum_65536_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_tancotf_xnum_65536_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_tancotf_sloc2_1_0 + 1)
	lda	*_tancotf_sloc2_1_0
	rts
00113$:
;	../tancotf.c: 92: if(iscotan) return (xden/xnum);
	lda	_tancotf_PARM_2
	beq	00110$
	lda	_tancotf_xden_65536_26
	sta	___fsdiv_PARM_1
	lda	(_tancotf_xden_65536_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	(_tancotf_xden_65536_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xden_65536_26 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	_tancotf_xnum_65536_26
	sta	___fsdiv_PARM_2
	lda	(_tancotf_xnum_65536_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	(_tancotf_xnum_65536_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_tancotf_xnum_65536_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_tancotf_sloc2_1_0 + 1)
	lda	*_tancotf_sloc2_1_0
	rts
00110$:
;	../tancotf.c: 93: else return (xnum/xden);
	lda	_tancotf_xnum_65536_26
	sta	___fsdiv_PARM_1
	lda	(_tancotf_xnum_65536_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	(_tancotf_xnum_65536_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xnum_65536_26 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	_tancotf_xden_65536_26
	sta	___fsdiv_PARM_2
	lda	(_tancotf_xden_65536_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	(_tancotf_xden_65536_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_tancotf_xden_65536_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_tancotf_sloc2_1_0 + 1)
	lda	*_tancotf_sloc2_1_0
;	../tancotf.c: 95: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
