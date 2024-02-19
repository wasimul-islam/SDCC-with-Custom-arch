;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ceilf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ceilf
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
;Allocation info for local variables in function 'ceilf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +11
;r                         Allocated to stack - sp +5
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../ceilf.c: 33: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function ceilf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_ceilf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../ceilf.c: 36: r=x;
	tsx
	lda	0x10b,x
	sta	___fs2slong_PARM_1
	lda	0x10c,x
	sta	(___fs2slong_PARM_1 + 1)
	lda	0x10d,x
	sta	(___fs2slong_PARM_1 + 2)
	lda	0x10e,x
	sta	(___fs2slong_PARM_1 + 3)
	jsr	___fs2slong
	stx	*(__TEMP+0)
	tsx
	sta	0x105,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x106,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
;	../ceilf.c: 37: if (r<0)
	sta	0x108, x
	sec
	sbc	#0x00
	bvc	00117$
	bpl	00116$
	bmi	00102$
00117$:
	bpl	00102$
00116$:
;	../ceilf.c: 38: return r;
	lda	0x105,x
	sta	___slong2fs_PARM_1
	lda	0x106,x
	sta	(___slong2fs_PARM_1 + 1)
	lda	0x107,x
	sta	(___slong2fs_PARM_1 + 2)
	lda	0x108,x
	sta	(___slong2fs_PARM_1 + 3)
	jsr	___slong2fs
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
	jmp	00104$
00102$:
;	../ceilf.c: 40: return (r+((r<x)?1:0));
	tsx
	lda	0x105,x
	sta	___slong2fs_PARM_1
	lda	0x106,x
	sta	(___slong2fs_PARM_1 + 1)
	lda	0x107,x
	sta	(___slong2fs_PARM_1 + 2)
	lda	0x108,x
	sta	(___slong2fs_PARM_1 + 3)
	jsr	___slong2fs
	sta	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_1 + 3)
	tsx
	lda	0x10b,x
	sta	___fslt_PARM_2
	lda	0x10c,x
	sta	(___fslt_PARM_2 + 1)
	lda	0x10d,x
	sta	(___fslt_PARM_2 + 2)
	lda	0x10e,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00106$
	lda	#0x01
	ldx	#0x00
	jmp	00107$
00106$:
	lda	#0x00
	tax
00107$:
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x103,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x104,x
	sta	0x105,x
	lda	0x106,x
	clc
	adc	0x102,x
	sta	___slong2fs_PARM_1
	lda	0x107,x
	adc	0x103,x
	sta	(___slong2fs_PARM_1 + 1)
	lda	0x108,x
	adc	0x104,x
	sta	(___slong2fs_PARM_1 + 2)
	lda	0x109,x
	adc	0x105,x
	sta	(___slong2fs_PARM_1 + 3)
	jsr	___slong2fs
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
00104$:
;	../ceilf.c: 41: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
