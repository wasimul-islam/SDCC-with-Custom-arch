;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _fabsf
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +28
;iscos                     Allocated to stack - sp +32
;y                         Allocated to stack - sp +9
;f                         Allocated to stack - sp +5
;r                         Allocated to stack - sp +14
;g                         Allocated to stack - sp +10
;XN                        Allocated to stack - sp +1
;N                         Allocated to registers a x 
;sign                      Allocated to stack - sp +25
;sloc0                     Allocated to stack - sp +21
;sloc1                     Allocated to stack - sp +17
;sloc2                     Allocated to stack - sp +13
;------------------------------------------------------------
;	../sincosf.c: 50: float sincosf(float x, bool iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 25 bytes.
_sincosf:
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
;	../sincosf.c: 56: if(iscos)
	tsx
	lda	0x120,x
	bne	00147$
	jmp	00105$
00147$:
;	../sincosf.c: 58: y=fabsf(x)+HALF_PI;
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
	lda	#0x3f
	pha
	lda	#0xc9
	pha
	lda	#0x0f
	pha
	lda	#0xdb
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	___fsadd
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
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	../sincosf.c: 59: sign=0;
	tsx
	lda	#0x00
	sta	0x119,x
	jmp	00106$
00105$:
;	../sincosf.c: 63: if(x<0.0)
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
	beq	00102$
;	../sincosf.c: 64: { y=-x; sign=1; }
	tsx
	lda	0x11c,x
	sta	0x109,x
	lda	0x11d,x
	sta	0x10a,x
	lda	0x11e,x
	sta	0x10b,x
	lda	0x11f,x
	eor	#0x80
	sta	0x10c,x
	lda	#0x01
	sta	0x119,x
	jmp	00106$
00102$:
;	../sincosf.c: 66: { y=x; sign=0; }
	tsx
	lda	0x11c,x
	sta	0x109,x
	lda	0x11d,x
	sta	0x10a,x
	lda	0x11e,x
	sta	0x10b,x
	lda	0x11f,x
	sta	0x10c,x
	lda	#0x00
	sta	0x119,x
00106$:
;	../sincosf.c: 69: if(y>YMAX)
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	#0x46
	pha
	lda	#0x49
	pha
	lda	#0x0c
	pha
	lda	#0x00
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
	beq	00108$
;	../sincosf.c: 71: errno=ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../sincosf.c: 72: return 0.0;
	txa
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00115$
00108$:
;	../sincosf.c: 76: N=((y*iPI)+0.5); /*y is positive*/
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	#0x3e
	pha
	lda	#0xa2
	pha
	lda	#0xf9
	pha
	lda	#0x83
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
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
	lda	#0x00
	pha
	pha
	pha
	tsx
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
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
	jsr	___fs2sint
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
;	../sincosf.c: 79: if(N&1) sign=!sign;
	lda	*(__TEMP+0)
	and	#0x01
	php
	lda	*(__TEMP+0)
	plp
	beq	00110$
	pha
	stx	*(__TEMP+0)
	tsx
	lda	0x11a,x
	php
	ldx	*(__TEMP+0)
	plp
	eor	#0x01
	stx	*(__TEMP+0)
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	pla
00110$:
;	../sincosf.c: 81: XN=N;
	jsr	___sint2fs
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
	lda	0x115,x
	sta	0x101,x
	lda	0x116,x
	sta	0x102,x
	lda	0x117,x
	sta	0x103,x
	lda	0x118,x
	sta	0x104,x
;	../sincosf.c: 83: if(iscos) XN-=0.5;
	lda	0x120,x
	beq	00112$
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
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
00112$:
;	../sincosf.c: 85: y=fabsf(x);
	tsx
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
;	../sincosf.c: 86: r=(int)y;
	lda	0x11c, x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	___fs2sint
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	jsr	___sint2fs
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
;	../sincosf.c: 87: g=y-r;
	sta	0x114, x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	../sincosf.c: 88: f=((r-XN*C1)+g)-XN*C2;
	jsr	___fssub
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
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
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	#0x40
	pha
	lda	#0x49
	pha
	lda	#0x00
	pha
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
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	___fssub
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
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	#0x3a
	pha
	lda	#0x7d
	pha
	lda	#0xaa
	pha
	lda	#0x22
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
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	jsr	___fssub
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
	lda	0x10d,x
	sta	0x105,x
	lda	0x10e,x
	sta	0x106,x
	lda	0x10f,x
	sta	0x107,x
	lda	0x110,x
	sta	0x108,x
;	../sincosf.c: 90: g=f*f;
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	../sincosf.c: 91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
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
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	#0x33
	pha
	lda	#0x7f
	pha
	lda	#0xff
	pha
	lda	#0xf3
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
	bne	00153$
	jmp	00114$
00153$:
;	../sincosf.c: 93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	#0x36
	pha
	lda	#0x2e
	pha
	lda	#0x9c
	pha
	lda	#0x5b
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	#0xb9
	pha
	lda	#0x4f
	pha
	lda	#0xb2
	pha
	lda	#0x22
	pha
	tsx
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
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
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
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
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	#0x3c
	pha
	lda	#0x08
	pha
	lda	#0x87
	pha
	lda	#0x3e
	pha
	tsx
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
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
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
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
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	#0xbe
	pha
	lda	#0x2a
	pha
	lda	#0xaa
	pha
	lda	#0xa4
	pha
	tsx
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x11d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
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
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	../sincosf.c: 94: f+=f*r;
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
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
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
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
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
00114$:
;	../sincosf.c: 96: return (sign?-f:f);
	tsx
	lda	0x119,x
	beq	00117$
	lda	0x105,x
	sta	0x10d,x
	lda	0x106,x
	sta	0x10e,x
	lda	0x107,x
	sta	0x10f,x
	lda	0x108,x
	eor	#0x80
	sta	0x110,x
	jmp	00118$
00117$:
	tsx
	lda	0x105,x
	sta	0x10d,x
	lda	0x106,x
	sta	0x10e,x
	lda	0x107,x
	sta	0x10f,x
	lda	0x108,x
	sta	0x110,x
00118$:
	tsx
	lda	0x110,x
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
00115$:
;	../sincosf.c: 97: }
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
	.area XINIT
	.area CABS    (ABS)
