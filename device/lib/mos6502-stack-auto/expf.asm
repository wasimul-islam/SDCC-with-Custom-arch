;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module expf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _expf
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +26
;n                         Allocated to registers a x 
;xn                        Allocated to stack - sp +18
;g                         Allocated to stack - sp +14
;r                         Allocated to stack - sp +5
;z                         Allocated to stack - sp +6
;y                         Allocated to stack - sp +1
;sign                      Allocated to stack - sp +23
;sloc0                     Allocated to stack - sp +19
;sloc1                     Allocated to stack - sp +17
;sloc2                     Allocated to stack - sp +13
;sloc3                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../expf.c: 331: float expf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 23 bytes.
_expf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe9
	tax
	txs
	ldx	*(__TEMP+1)
;	../expf.c: 337: if(x>=0.0)
	lda	#0x00
	pha
	pha
	pha
	pha
	tsx
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
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
	bne	00102$
;	../expf.c: 338: { y=x;  sign=0; }
	tsx
	lda	0x11a,x
	sta	0x101,x
	lda	0x11b,x
	sta	0x102,x
	lda	0x11c,x
	sta	0x103,x
	lda	0x11d,x
	sta	0x104,x
	lda	#0x00
	sta	0x117,x
	jmp	00103$
00102$:
;	../expf.c: 340: { y=-x; sign=1; }
	tsx
	lda	0x11a,x
	sta	0x101,x
	lda	0x11b,x
	sta	0x102,x
	lda	0x11c,x
	sta	0x103,x
	lda	0x11d,x
	eor	#0x80
	sta	0x104,x
	lda	#0x01
	sta	0x117,x
00103$:
;	../expf.c: 342: if(y<EXPEPS) return 1.0;
	lda	#0x33
	pha
	lda	#0xd6
	pha
	lda	#0xbf
	pha
	lda	#0x95
	pha
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
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
	beq	00105$
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	jmp	00118$
00105$:
;	../expf.c: 344: if(y>BIGX)
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	#0x42
	pha
	lda	#0xb1
	pha
	lda	#0x72
	pha
	lda	#0x18
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
	beq	00110$
;	../expf.c: 346: if(sign)
	tsx
	lda	0x117,x
	beq	00107$
;	../expf.c: 348: errno=ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../expf.c: 350: ;
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sty	*___SDCC_m6502_ret3
	jmp	00118$
00107$:
;	../expf.c: 354: return 0.0;
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00118$
00110$:
;	../expf.c: 358: z=y*K1;
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	#0x3f
	pha
	lda	#0xb8
	pha
	lda	#0xaa
	pha
	lda	#0x3b
	pha
;	../expf.c: 359: n=z;
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
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
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	jsr	___fs2sint
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../expf.c: 361: if(n<0) --n;
	tsx
	lda	0x112,x
	sec
	sbc	#0x00
	bvc	00160$
	bpl	00159$
	bmi	00112$
00160$:
	bpl	00112$
00159$:
	lda	0x111,x
	sec
	sbc	#0x01
	sta	0x111,x
	lda	0x112,x
	sbc	#0x00
	sta	0x112,x
00112$:
;	../expf.c: 362: if(z-n>=0.5) ++n;
	tsx
	lda	0x112,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	___sint2fs
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
	sta	0x110, x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
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
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
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
	bne	00114$
	tsx
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
00114$:
;	../expf.c: 363: xn=n;
	tsx
	lda	0x112,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	___sint2fs
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
;	../expf.c: 364: g=((y-xn*C1))-xn*C2;
	sta	0x110, x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	#0x3f
	pha
	lda	#0x31
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
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
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	jsr	___fssub
	stx	*(__TEMP+0)
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
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
	lda	#0xb9
	pha
	lda	#0x5e
	pha
	lda	#0x80
	pha
	lda	#0x83
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
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	../expf.c: 365: z=g*g;
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
;	../expf.c: 366: r=P(z)*g;
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x11b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
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
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	#0x3b
	pha
	lda	#0x88
	pha
	lda	#0x53
	pha
	lda	#0x08
	pha
	jsr	___fsmul
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
	ldx	*(__TEMP+1)
	lda	#0x3e
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
	tsx
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
;	../expf.c: 367: r=0.5+(r/(Q(z)-r));
	jsr	___fsmul
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
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	#0x3d
	pha
	lda	#0x4c
	pha
	lda	#0xbf
	pha
	lda	#0x5b
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
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
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
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
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
	jsr	___fsdiv
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
	ldx	*(__TEMP+1)
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
	tsx
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
;	../expf.c: 369: n++;
	tsx
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x01
	bcc	00163$
	inx
00163$:
;	../expf.c: 370: z=ldexpf(r, n);
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	jsr	_ldexpf
	stx	*(__TEMP+0)
	tsx
	sta	0x10f,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x110,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x111,x
	lda	*___SDCC_m6502_ret3
	sta	0x112,x
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	pla
	pla
;	../expf.c: 371: if(sign)
	lda	0x11d, x
	beq	00116$
;	../expf.c: 372: return 1.0/z;
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
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
	jmp	00118$
00116$:
;	../expf.c: 374: return z;
	tsx
	lda	0x10c,x
	sta	*___SDCC_m6502_ret3
	lda	0x10b,x
	sta	*___SDCC_m6502_ret2
	lda	0x10a,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x109,x
	php
	ldx	*(__TEMP+0)
	plp
00118$:
;	../expf.c: 375: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x17
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
