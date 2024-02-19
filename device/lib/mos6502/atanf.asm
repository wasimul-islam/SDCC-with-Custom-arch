;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atanf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
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
;Allocation info for local variables in function 'atanf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +21
;f                         Allocated to stack - sp +5
;r                         Allocated to stack - sp +1
;g                         Allocated to stack - sp +7
;n                         Allocated to stack - sp +17
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../atanf.c: 55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_atanf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	../atanf.c: 58: int n=0;
	tsx
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
;	../atanf.c: 61: f=fabsf(x);
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
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
	lda	0x111, x
	sta	0x109,x
	lda	0x112,x
	sta	0x10a,x
	lda	0x113,x
	sta	0x10b,x
	lda	0x114,x
	sta	0x10c,x
;	../atanf.c: 62: if(f>1.0)
	ldx	#0x00
	stx	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x80
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
	beq	00102$
;	../atanf.c: 64: f=1.0/f;
	ldx	#0x00
	stx	___fsdiv_PARM_1
	stx	(___fsdiv_PARM_1 + 1)
	ldx	#0x80
	stx	(___fsdiv_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsdiv_PARM_1 + 3)
	tsx
	lda	0x10d,x
	sta	___fsdiv_PARM_2
	lda	0x10e,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	0x10f,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	0x110,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
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
;	../atanf.c: 65: n=2;
	lda	#0x02
	sta	0x111,x
	lda	#0x00
	sta	0x112,x
00102$:
;	../atanf.c: 67: if(f>K1)
	ldx	#0xa3
	stx	___fslt_PARM_1
	ldx	#0x30
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x89
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3e
	stx	(___fslt_PARM_1 + 3)
	tsx
	lda	0x105,x
	sta	___fslt_PARM_2
	lda	0x106,x
	sta	(___fslt_PARM_2 + 1)
	lda	0x107,x
	sta	(___fslt_PARM_2 + 2)
	lda	0x108,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00135$
	jmp	00104$
00135$:
;	../atanf.c: 69: f=((K2*f-1.0)+f)/(K3+f);
	ldx	#0xaf
	stx	___fsmul_PARM_1
	ldx	#0x67
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x3b
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x105,x
	sta	___fsmul_PARM_2
	lda	0x106,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x107,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x108,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fssub_PARM_1
	stx	(___fssub_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_1 + 3)
	ldx	#0x00
	stx	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	ldx	#0x80
	stx	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
	jsr	___fssub
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	tsx
	lda	0x105,x
	sta	___fsadd_PARM_2
	lda	0x106,x
	sta	(___fsadd_PARM_2 + 1)
	lda	0x107,x
	sta	(___fsadd_PARM_2 + 2)
	lda	0x108,x
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	lda	0x105,x
	sta	___fsadd_PARM_1
	lda	0x106,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x107,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x108,x
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0xd7
	stx	___fsadd_PARM_2
	ldx	#0xb3
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xdd
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
	tsx
	lda	0x10d,x
	sta	___fsdiv_PARM_1
	lda	0x10e,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	0x10f,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	0x110,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
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
;	../atanf.c: 73: n++;
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
00104$:
;	../atanf.c: 75: if(fabsf(f)<EPS) r=f;
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
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
	beq	00106$
	tsx
	lda	0x105,x
	sta	0x101,x
	lda	0x106,x
	sta	0x102,x
	lda	0x107,x
	sta	0x103,x
	lda	0x108,x
	sta	0x104,x
	jmp	00107$
00106$:
;	../atanf.c: 78: g=f*f;
	tsx
	lda	0x105,x
	sta	___fsmul_PARM_1
	lda	0x106,x
	sta	(___fsmul_PARM_1 + 1)
	lda	0x107,x
	sta	(___fsmul_PARM_1 + 2)
	lda	0x108,x
	sta	(___fsmul_PARM_1 + 3)
	lda	0x105,x
	sta	___fsmul_PARM_2
	lda	0x106,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x107,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x108,x
	sta	(___fsmul_PARM_2 + 3)
;	../atanf.c: 79: r=f+P(g,f)/Q(g);
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	ldx	#0x91
	stx	___fsmul_PARM_1
	ldx	#0x86
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x50
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbd
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x10d,x
	sta	___fsmul_PARM_2
	lda	0x10e,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x10f,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x110,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0xf6
	stx	___fsadd_PARM_2
	ldx	#0x10
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xf1
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
	tsx
	lda	0x10d,x
	sta	___fsmul_PARM_2
	lda	0x10e,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x10f,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x110,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x105,x
	sta	___fsmul_PARM_2
	lda	0x106,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x107,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x108,x
	sta	(___fsmul_PARM_2 + 3)
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
	lda	0x10d,x
	sta	___fsadd_PARM_1
	lda	0x10e,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x10f,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x110,x
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0xd3
	stx	___fsadd_PARM_2
	ldx	#0xcc
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xb4
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
	tsx
	lda	0x109,x
	sta	___fsdiv_PARM_1
	lda	0x10a,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	0x10b,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	0x10c,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	tsx
	lda	0x105,x
	sta	___fsadd_PARM_1
	lda	0x106,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x107,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x108,x
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
00107$:
;	../atanf.c: 81: if(n>1) r=-r;
	tsx
	lda	#0x01
	sec
	sbc	0x111,x
	lda	#0x00
	sbc	0x112,x
	bvc	00138$
	bpl	00137$
	bmi	00109$
00138$:
	bpl	00109$
00137$:
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
00109$:
;	../atanf.c: 82: r+=a[n];
	tsx
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	clc
	adc	#<(_atanf_a_65536_26+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(_atanf_a_65536_26+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	___fsadd_PARM_2
	iny
	lda	[__DPTR],y
	sta	(___fsadd_PARM_2 + 1)
	iny
	lda	[__DPTR],y
	sta	(___fsadd_PARM_2 + 2)
	iny
	lda	[__DPTR],y
	sta	(___fsadd_PARM_2 + 3)
	tsx
	lda	0x101,x
	sta	___fsadd_PARM_1
	lda	0x102,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x103,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x104,x
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
;	../atanf.c: 83: if(x<0.0) r=-r;
	lda	0x115,x
	sta	___fslt_PARM_1
	lda	0x116,x
	sta	(___fslt_PARM_1 + 1)
	lda	0x117,x
	sta	(___fslt_PARM_1 + 2)
	lda	0x118,x
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
;	../atanf.c: 84: return r;
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
;	../atanf.c: 85: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
_atanf_a_65536_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x92, #0x0a, #0x06, #0x3f	;  5.235988e-01
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0x92, #0x0a, #0x86, #0x3f	;  1.047198e+00
	.area XINIT
	.area CABS    (ABS)
