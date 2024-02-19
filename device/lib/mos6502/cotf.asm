;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module cotf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _cotf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
;Allocation info for local variables in function 'cotf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +7
;y                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../cotf.c: 37: float cotf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function cotf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_cotf:
	pha
	pha
	pha
	pha
;	../cotf.c: 41: y=fabsf(x);
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
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
;	../cotf.c: 42: if (y<1.0E-30) //This one requires more thinking...
	ldx	#0x60
	stx	___fslt_PARM_2
	ldx	#0x42
	stx	(___fslt_PARM_2 + 1)
	ldx	#0xa2
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x0d
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00105$
;	../cotf.c: 44: errno = ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../cotf.c: 45: if (x<0.0)
	tsx
	lda	0x107,x
	sta	___fslt_PARM_1
	lda	0x108,x
	sta	(___fslt_PARM_1 + 1)
	lda	0x109,x
	sta	(___fslt_PARM_1 + 2)
	lda	0x10a,x
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00102$
;	../cotf.c: 46: return -HUGE_VALF;
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00106$
00102$:
;	../cotf.c: 48: return +HUGE_VALF;
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sty	*___SDCC_m6502_ret3
	jmp	00106$
00105$:
;	../cotf.c: 50: return tancotf(x, 1);
	tsx
	lda	0x107,x
	sta	_tancotf_PARM_1
	lda	0x108,x
	sta	(_tancotf_PARM_1 + 1)
	lda	0x109,x
	sta	(_tancotf_PARM_1 + 2)
	lda	0x10a,x
	sta	(_tancotf_PARM_1 + 3)
	ldx	#0x01
	stx	_tancotf_PARM_2
	jsr	_tancotf
	stx	*(__TEMP+0)
	tsx
	sta	0x101,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x102,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x103,x
	lda	*___SDCC_m6502_ret3
	sta	0x104, x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
00106$:
;	../cotf.c: 51: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
