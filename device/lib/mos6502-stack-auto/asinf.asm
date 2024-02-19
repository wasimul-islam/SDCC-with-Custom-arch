;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module asinf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _asinf
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
;Allocation info for local variables in function 'asinf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../asinf.c: 36: float asinf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function asinf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_asinf:
	pha
	pha
	pha
	pha
;	../asinf.c: 38: if (x == 1.0) return  HALF_PI;
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
	tsx
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	jsr	___fseq
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
	beq	00108$
	lda	#0xdb
	ldx	#0x0f
	ldy	#0xc9
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	jmp	00110$
00108$:
;	../asinf.c: 39: else if (x ==-1.0) return -HALF_PI;
	lda	#0xbf
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
	tsx
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	jsr	___fseq
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
	beq	00105$
	lda	#0xdb
	ldx	#0x0f
	ldy	#0xc9
	sty	*___SDCC_m6502_ret2
	ldy	#0xbf
	sty	*___SDCC_m6502_ret3
	jmp	00110$
00105$:
;	../asinf.c: 40: else if (x == 0.0) return 0.0;
	tsx
	lda	0x10a,x
	and	#0x7F
	ora	0x109,x
	ora	0x108,x
	ora	0x107,x
	bne	00102$
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00110$
00102$:
;	../asinf.c: 41: else               return asincosf(x, false);
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
	jsr	_asincosf
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
00110$:
;	../asinf.c: 42: }
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
