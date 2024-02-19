;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module tanhf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _expf
	.globl _tanhf
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
;Allocation info for local variables in function 'tanhf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +19
;f                         Allocated to stack - sp +13
;g                         Allocated to stack - sp +9
;r                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../tanhf.c: 50: float tanhf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function tanhf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_tanhf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../tanhf.c: 54: f=fabsf(x);
	tsx
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	jsr	_fabsf
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x112,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../tanhf.c: 55: if(f>SBIG) r=1.0;
	ldx	#0xb0
	stx	___fslt_PARM_1
	ldx	#0x2c
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x10
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x41
	stx	(___fslt_PARM_1 + 3)
	tsx
	lda	0x10d,x
	sta	___fslt_PARM_2
	lda	0x10e,x
	sta	(___fslt_PARM_2 + 1)
	lda	0x10f,x
	sta	(___fslt_PARM_2 + 2)
	lda	0x110,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00108$
	tsx
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
	lda	#0x80
	sta	0x103,x
	lda	#0x3f
	sta	0x104,x
	jmp	00109$
00108$:
;	../tanhf.c: 56: else if(f>K1)
	ldx	#0x54
	stx	___fslt_PARM_1
	ldx	#0x9f
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x0c
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
	tsx
	lda	0x10d,x
	sta	___fslt_PARM_2
	lda	0x10e,x
	sta	(___fslt_PARM_2 + 1)
	lda	0x10f,x
	sta	(___fslt_PARM_2 + 2)
	lda	0x110,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00131$
	jmp	00105$
00131$:
;	../tanhf.c: 58: r=0.5-1.0/(expf(f+f)+1.0);
	tsx
	lda	0x10d,x
	sta	___fsadd_PARM_1
	lda	0x10e,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x10f,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x110,x
	sta	(___fsadd_PARM_1 + 3)
	lda	0x10d,x
	sta	___fsadd_PARM_2
	lda	0x10e,x
	sta	(___fsadd_PARM_2 + 1)
	lda	0x10f,x
	sta	(___fsadd_PARM_2 + 2)
	lda	0x110,x
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c, x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	jsr	_expf
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	ldx	#0x00
	stx	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x80
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
	ldx	#0x00
	stx	___fsdiv_PARM_1
	stx	(___fsdiv_PARM_1 + 1)
	ldx	#0x80
	stx	(___fsdiv_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
	ldx	#0x00
	stx	___fssub_PARM_1
	stx	(___fssub_PARM_1 + 1)
	stx	(___fssub_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_1 + 3)
;	../tanhf.c: 59: r+=r;
	jsr	___fssub
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	lda	0x109,x
	sta	___fsadd_PARM_1
	lda	0x10a,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x10b,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x10c,x
	sta	(___fsadd_PARM_1 + 3)
	lda	0x109,x
	sta	___fsadd_PARM_2
	lda	0x10a,x
	sta	(___fsadd_PARM_2 + 1)
	lda	0x10b,x
	sta	(___fsadd_PARM_2 + 2)
	lda	0x10c,x
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
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
	sta	0x104,x
	jmp	00109$
00105$:
;	../tanhf.c: 61: else if(f<EPS) r=f;
	tsx
	lda	0x10d,x
	sta	___fslt_PARM_1
	lda	0x10e,x
	sta	(___fslt_PARM_1 + 1)
	lda	0x10f,x
	sta	(___fslt_PARM_1 + 2)
	lda	0x110,x
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x39
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00102$
	tsx
	lda	0x10d,x
	sta	0x101,x
	lda	0x10e,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x103,x
	lda	0x110,x
	sta	0x104,x
	jmp	00109$
00102$:
;	../tanhf.c: 64: g=f*f;
	tsx
	lda	0x10d,x
	sta	___fsmul_PARM_1
	lda	0x10e,x
	sta	(___fsmul_PARM_1 + 1)
	lda	0x10f,x
	sta	(___fsmul_PARM_1 + 2)
	lda	0x110,x
	sta	(___fsmul_PARM_1 + 3)
	lda	0x10d,x
	sta	___fsmul_PARM_2
	lda	0x10e,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x10f,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x110,x
	sta	(___fsmul_PARM_2 + 3)
;	../tanhf.c: 65: r=f+f*(P(g)/Q(g));
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x109,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
	ldx	#0xb2
	stx	___fsmul_PARM_1
	ldx	#0x11
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x7b
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbb
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x109,x
	sta	___fsmul_PARM_2
	lda	0x10a,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x10b,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x10c,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0xc6
	stx	___fsadd_PARM_2
	ldx	#0xe2
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x52
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xbf
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x109,x
	sta	___fsmul_PARM_2
	lda	0x10a,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x10b,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x10c,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
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
	sta	0x108,x
	lda	0x109,x
	sta	___fsadd_PARM_1
	lda	0x10a,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x10b,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x10c,x
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x1a
	stx	___fsadd_PARM_2
	ldx	#0x2a
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x1e
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x40
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
	tsx
	lda	0x105,x
	sta	___fsdiv_PARM_1
	lda	0x106,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	0x107,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	0x108,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
	tsx
	lda	0x10d,x
	sta	___fsmul_PARM_1
	lda	0x10e,x
	sta	(___fsmul_PARM_1 + 1)
	lda	0x10f,x
	sta	(___fsmul_PARM_1 + 2)
	lda	0x110,x
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	tsx
	lda	0x10d,x
	sta	___fsadd_PARM_1
	lda	0x10e,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x10f,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x110,x
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
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
	sta	0x104,x
00109$:
;	../tanhf.c: 67: if(x<0.0) r=-r;
	tsx
	lda	0x113,x
	sta	___fslt_PARM_1
	lda	0x114,x
	sta	(___fslt_PARM_1 + 1)
	lda	0x115,x
	sta	(___fslt_PARM_1 + 2)
	lda	0x116,x
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00111$
	tsx
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
00111$:
;	../tanhf.c: 68: return r;
	tsx
	lda	0x104,x
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
;	../tanhf.c: 69: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
