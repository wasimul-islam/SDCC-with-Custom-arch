;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +28
;isacos                    Allocated to stack - sp +32
;y                         Allocated to stack - sp +9
;g                         Allocated to stack - sp +5
;r                         Allocated to stack - sp +1
;i                         Allocated to registers y 
;quartPI                   Allocated to stack - sp +25
;sloc0                     Allocated to stack - sp +21
;sloc1                     Allocated to stack - sp +17
;sloc2                     Allocated to stack - sp +13
;------------------------------------------------------------
;	../asincosf.c: 47: float asincosf(float x, bool isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 25 bytes.
_asincosf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe7
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../asincosf.c: 51: bool quartPI = isacos;
	tsx
	lda	0x120,x
	sta	0x119,x
;	../asincosf.c: 56: y = fabsf(x);
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	jsr	_fabsf
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	0x119, x
	sta	0x10d,x
	lda	0x11a,x
	sta	0x10e,x
	lda	0x11b,x
	sta	0x10f,x
	lda	0x11c,x
	sta	0x110,x
;	../asincosf.c: 57: if (y < EPS)
	lda	#0x39
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	___fslt
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
	beq	00107$
;	../asincosf.c: 59: r = y;
	tsx
	lda	0x115,x
	sta	0x101,x
	lda	0x116,x
	sta	0x102,x
	lda	0x117,x
	sta	0x103,x
	lda	0x118,x
	sta	0x104,x
	jmp	00108$
00107$:
;	../asincosf.c: 63: if (y > 0.5)
	tsx
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
	jsr	___fslt
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
	bne	00144$
	jmp	00104$
00144$:
;	../asincosf.c: 65: quartPI = !isacos;
	tsx
	lda	0x119,x
	eor	#0x01
	sta	0x119,x
;	../asincosf.c: 66: if (y > 1.0)
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
	jsr	___fslt
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
	beq	00102$
;	../asincosf.c: 68: errno = EDOM;
	ldx	#0x21
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../asincosf.c: 69: return 0.0;
	txa
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00117$
00102$:
;	../asincosf.c: 71: g = (0.5 - y) + 0.5;
	tsx
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	../asincosf.c: 72: g = ldexpf(g, -1);
	jsr	___fssub
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	#0xff
	pha
	pha
	tsx
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	jsr	_ldexpf
	stx	*(__TEMP+0)
	tsx
	sta	0x117,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x118,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x119,x
	lda	*___SDCC_m6502_ret3
	sta	0x11a,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
	lda	0x117, x
	sta	0x10b,x
	lda	0x118,x
	sta	0x10c,x
	lda	0x119,x
	sta	0x10d,x
	lda	0x11a,x
	sta	0x10e,x
;	../asincosf.c: 73: y = sqrtf(g);
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	jsr	_sqrtf
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
;	../asincosf.c: 74: y = -(y + y);
	lda	0x118, x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
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
	tsx
	lda	0x111,x
	sta	0x109,x
	lda	0x112,x
	sta	0x10a,x
	lda	0x113,x
	sta	0x10b,x
	lda	0x114,x
	eor	#0x80
	sta	0x10c,x
	jmp	00105$
00104$:
;	../asincosf.c: 78: g = y * y;
	tsx
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
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
00105$:
;	../asincosf.c: 80: r = y + y * ((P(g) * g) / Q(g));
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	#0xbf
	pha
	lda	#0x01
	pha
	lda	#0x20
	pha
	lda	#0x65
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	#0x3f
	pha
	lda	#0x6f
	pha
	lda	#0x16
	pha
	lda	#0x6b
	pha
	tsx
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
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
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
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
	tsx
	lda	0x105,x
	sta	0x115,x
	lda	0x106,x
	sta	0x116,x
	lda	0x107,x
	sta	0x117,x
	lda	0x108,x
	sta	0x118,x
	lda	#0xc0
	pha
	lda	#0xb1
	pha
	lda	#0x8d
	pha
	lda	#0x0b
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
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
	tsx
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	#0x40
	pha
	lda	#0xb3
	pha
	lda	#0x50
	pha
	lda	#0xf0
	pha
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
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
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	___fsdiv
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
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
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
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
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
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
	sta	0x10c,x
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
00108$:
;	../asincosf.c: 82: i = quartPI;
	tsx
	lda	0x119,x
	tay
;	../asincosf.c: 83: if (isacos)
	lda	0x120,x
	bne	00146$
	jmp	00115$
00146$:
;	../asincosf.c: 85: if (x < 0.0)
	sta	*(__TEMP+0)
	tya
	pha
	lda	#0x00
	pha
	pha
	pha
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	jsr	___fslt
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	pla
	tay
	lda	*(__TEMP+0)
	bne	00147$
	jmp	00110$
00147$:
;	../asincosf.c: 86: r = (b[i] + r) + b[i];
	tya
	ldx	#0x00
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x10f,x
	pla
	sta	0x10e,x
	clc
	lda	0x10e,x
	adc	#<(_asincosf_b_65536_26+0)
	sta	*(__DPTR+0)
	lda	0x10f,x
	adc	#>(_asincosf_b_65536_26+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x10e,x
	iny
	lda	[__DPTR],y
	sta	0x10f,x
	iny
	lda	[__DPTR],y
	sta	0x110,x
	iny
	lda	[__DPTR],y
	sta	0x111,x
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
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
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
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
	sta	0x10c,x
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
	jmp	00116$
00110$:
;	../asincosf.c: 88: r = (a[i] - r) + a[i];
	tya
	ldx	#0x00
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x10f,x
	pla
	sta	0x10e,x
	clc
	lda	0x10e,x
	adc	#<(_asincosf_a_65536_26+0)
	sta	*(__DPTR+0)
	lda	0x10f,x
	adc	#>(_asincosf_a_65536_26+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x10e,x
	iny
	lda	[__DPTR],y
	sta	0x10f,x
	iny
	lda	[__DPTR],y
	sta	0x110,x
	iny
	lda	[__DPTR],y
	sta	0x111,x
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	jsr	___fssub
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
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
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
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
	sta	0x10c,x
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
	jmp	00116$
00115$:
;	../asincosf.c: 92: r = (a[i] + r) + a[i];
	tya
	ldx	#0x00
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x10f,x
	pla
	sta	0x10e,x
	clc
	lda	0x10e,x
	adc	#<(_asincosf_a_65536_26+0)
	sta	*(__DPTR+0)
	lda	0x10f,x
	adc	#>(_asincosf_a_65536_26+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x10e,x
	iny
	lda	[__DPTR],y
	sta	0x10f,x
	iny
	lda	[__DPTR],y
	sta	0x110,x
	iny
	lda	[__DPTR],y
	sta	0x111,x
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
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
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
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
	sta	0x10c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
;	../asincosf.c: 93: if (x < 0.0)
	lda	#0x00
	pha
	pha
	pha
	pha
	tsx
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	jsr	___fslt
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
	beq	00116$
;	../asincosf.c: 94: r = -r;
	tsx
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
00116$:
;	../asincosf.c: 96: return r;
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
00117$:
;	../asincosf.c: 97: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x19
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
_asincosf_a_65536_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
_asincosf_b_65536_26:
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
	.area XINIT
	.area CABS    (ABS)
