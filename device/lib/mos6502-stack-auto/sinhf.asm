;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sinhf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _sinhf
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
;Allocation info for local variables in function 'sinhf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../sinhf.c: 36: float sinhf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function sinhf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_sinhf:
	pha
	pha
	pha
	pha
;	../sinhf.c: 38: return sincoshf(x, 0);
	lda	#0x00
	pha
	tsx
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	jsr	_sincoshf
	stx	*(__TEMP+0)
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x108,x
	lda	*___SDCC_m6502_ret3
	sta	0x109,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	lda	0x109, x
	sta	*___SDCC_m6502_ret3
	lda	0x108,x
	sta	*___SDCC_m6502_ret2
	lda	0x107,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
;	../sinhf.c: 39: }
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
