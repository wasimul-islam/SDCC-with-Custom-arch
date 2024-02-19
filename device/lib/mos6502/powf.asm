;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module powf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _expf
	.globl _powf_PARM_2
	.globl _powf_PARM_1
	.globl _powf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_powf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_powf_PARM_1:
	.ds 4
_powf_PARM_2:
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
;Allocation info for local variables in function 'powf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_powf_sloc0_1_0'
;x                         Allocated with name '_powf_PARM_1'
;y                         Allocated with name '_powf_PARM_2'
;------------------------------------------------------------
;	../powf.c: 35: float powf(float x, float y)
;	-----------------------------------------
;	 function powf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_powf:
;	../powf.c: 37: if(y == 0.0) return 1.0;
	lda	(_powf_PARM_2 + 3)
	and	#0x7F
	ora	(_powf_PARM_2 + 2)
	ora	(_powf_PARM_2 + 1)
	ora	_powf_PARM_2
	bne	00102$
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	rts
00102$:
;	../powf.c: 38: if(y == 1.0) return x;
	lda	_powf_PARM_2
	sta	___fseq_PARM_1
	lda	(_powf_PARM_2 + 1)
	sta	(___fseq_PARM_1 + 1)
	lda	(_powf_PARM_2 + 2)
	sta	(___fseq_PARM_1 + 2)
	lda	(_powf_PARM_2 + 3)
	sta	(___fseq_PARM_1 + 3)
	ldx	#0x00
	stx	___fseq_PARM_2
	stx	(___fseq_PARM_2 + 1)
	ldx	#0x80
	stx	(___fseq_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fseq_PARM_2 + 3)
	jsr	___fseq
	cmp	#0x00
	beq	00104$
	lda	(_powf_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_powf_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_powf_PARM_1 + 1)
	lda	_powf_PARM_1
	rts
00104$:
;	../powf.c: 39: if(x <= 0.0) return 0.0;
	ldx	#0x00
	stx	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	stx	(___fslt_PARM_1 + 2)
	stx	(___fslt_PARM_1 + 3)
	lda	_powf_PARM_1
	sta	___fslt_PARM_2
	lda	(_powf_PARM_1 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	(_powf_PARM_1 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_powf_PARM_1 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00106$
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00106$:
;	../powf.c: 40: return expf(logf(x) * y);
	lda	(_powf_PARM_1 + 3)
	pha
	lda	(_powf_PARM_1 + 2)
	pha
	lda	(_powf_PARM_1 + 1)
	pha
	lda	_powf_PARM_1
	pha
	jsr	_logf
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	_powf_PARM_2
	sta	___fsmul_PARM_2
	lda	(_powf_PARM_2 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_powf_PARM_2 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_powf_PARM_2 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	*_powf_sloc0_1_0
	stx	*(_powf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_powf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_powf_sloc0_1_0 + 3)
	pha
	lda	*(_powf_sloc0_1_0 + 2)
	pha
	lda	*(_powf_sloc0_1_0 + 1)
	pha
	lda	*_powf_sloc0_1_0
	pha
	jsr	_expf
	sta	*_powf_sloc0_1_0
	stx	*(_powf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_powf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_powf_sloc0_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(_powf_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_powf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_powf_sloc0_1_0 + 1)
	lda	*_powf_sloc0_1_0
;	../powf.c: 41: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
