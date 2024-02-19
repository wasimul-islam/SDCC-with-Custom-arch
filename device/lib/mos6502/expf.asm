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
;x                         Allocated to stack - sp +22
;n                         Allocated to registers 
;xn                        Allocated to stack - sp +14
;g                         Allocated to stack - sp +10
;r                         Allocated to stack - sp +5
;z                         Allocated to stack - sp +2
;y                         Allocated to stack - sp +1
;sign                      Allocated to stack - sp +19
;sloc0                     Allocated to stack - sp +15
;sloc1                     Allocated to stack - sp +13
;sloc2                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../expf.c: 331: float expf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 19 bytes.
_expf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xed
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../expf.c: 337: if(x>=0.0)
	tsx
	lda	0x116,x
	sta	___fslt_PARM_1
	lda	0x117,x
	sta	(___fslt_PARM_1 + 1)
	lda	0x118,x
	sta	(___fslt_PARM_1 + 2)
	lda	0x119,x
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00102$
;	../expf.c: 338: { y=x;  sign=0; }
	tsx
	lda	0x116,x
	sta	0x101,x
	lda	0x117,x
	sta	0x102,x
	lda	0x118,x
	sta	0x103,x
	lda	0x119,x
	sta	0x104,x
	lda	#0x00
	sta	0x113,x
	jmp	00103$
00102$:
;	../expf.c: 340: { y=-x; sign=1; }
	tsx
	lda	0x116,x
	sta	0x101,x
	lda	0x117,x
	sta	0x102,x
	lda	0x118,x
	sta	0x103,x
	lda	0x119,x
	eor	#0x80
	sta	0x104,x
	lda	#0x01
	sta	0x113,x
00103$:
;	../expf.c: 342: if(y<EXPEPS) return 1.0;
	tsx
	lda	0x101,x
	sta	___fslt_PARM_1
	lda	0x102,x
	sta	(___fslt_PARM_1 + 1)
	lda	0x103,x
	sta	(___fslt_PARM_1 + 2)
	lda	0x104,x
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x95
	stx	___fslt_PARM_2
	ldx	#0xbf
	stx	(___fslt_PARM_2 + 1)
	ldx	#0xd6
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x33
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
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
	ldx	#0x18
	stx	___fslt_PARM_1
	ldx	#0x72
	stx	(___fslt_PARM_1 + 1)
	ldx	#0xb1
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x42
	stx	(___fslt_PARM_1 + 3)
	tsx
	lda	0x101,x
	sta	___fslt_PARM_2
	lda	0x102,x
	sta	(___fslt_PARM_2 + 1)
	lda	0x103,x
	sta	(___fslt_PARM_2 + 2)
	lda	0x104,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00110$
;	../expf.c: 346: if(sign)
	tsx
	lda	0x113,x
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
	ldx	#0x3b
	stx	___fsmul_PARM_1
	ldx	#0xaa
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xb8
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x101,x
	sta	___fsmul_PARM_2
	lda	0x102,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x103,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x104,x
	sta	(___fsmul_PARM_2 + 3)
;	../expf.c: 359: n=z;
	jsr	___fsmul
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
	lda	0x10f,x
	sta	___fs2sint_PARM_1
	lda	0x110,x
	sta	(___fs2sint_PARM_1 + 1)
	lda	0x111,x
	sta	(___fs2sint_PARM_1 + 2)
	lda	0x112,x
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
;	../expf.c: 361: if(n<0) --n;
	tsx
	lda	0x10e,x
	sec
	sbc	#0x00
	bvc	00160$
	bpl	00159$
	bmi	00112$
00160$:
	bpl	00112$
00159$:
	lda	0x10d,x
	sec
	sbc	#0x01
	sta	0x10d,x
	lda	0x10e,x
	sbc	#0x00
	sta	0x10e,x
00112$:
;	../expf.c: 362: if(z-n>=0.5) ++n;
	tsx
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	___sint2fs
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
	tsx
	lda	0x10f,x
	sta	___fssub_PARM_1
	lda	0x110,x
	sta	(___fssub_PARM_1 + 1)
	lda	0x111,x
	sta	(___fssub_PARM_1 + 2)
	lda	0x112,x
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00114$
	tsx
	lda	0x10d,x
	clc
	adc	#0x01
	sta	0x10d,x
	lda	0x10e,x
	adc	#0x00
	sta	0x10e,x
00114$:
;	../expf.c: 363: xn=n;
	tsx
	lda	0x10e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10d,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	___sint2fs
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
;	../expf.c: 364: g=((y-xn*C1))-xn*C2;
	ldx	#0x00
	stx	___fsmul_PARM_1
	ldx	#0x80
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x31
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x10f,x
	sta	___fsmul_PARM_2
	lda	0x110,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x111,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x112,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
	tsx
	lda	0x101,x
	sta	___fssub_PARM_1
	lda	0x102,x
	sta	(___fssub_PARM_1 + 1)
	lda	0x103,x
	sta	(___fssub_PARM_1 + 2)
	lda	0x104,x
	sta	(___fssub_PARM_1 + 3)
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
	ldx	#0x83
	stx	___fsmul_PARM_1
	ldx	#0x80
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x5e
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xb9
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x10f,x
	sta	___fsmul_PARM_2
	lda	0x110,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x111,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x112,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
	tsx
	lda	0x109,x
	sta	___fssub_PARM_1
	lda	0x10a,x
	sta	(___fssub_PARM_1 + 1)
	lda	0x10b,x
	sta	(___fssub_PARM_1 + 2)
	lda	0x10c,x
	sta	(___fssub_PARM_1 + 3)
;	../expf.c: 365: z=g*g;
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
	sta	___fsmul_PARM_1
	lda	0x10a,x
	sta	(___fsmul_PARM_1 + 1)
	lda	0x10b,x
	sta	(___fsmul_PARM_1 + 2)
	lda	0x10c,x
	sta	(___fsmul_PARM_1 + 3)
	lda	0x109,x
	sta	___fsmul_PARM_2
	lda	0x10a,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x10b,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x10c,x
	sta	(___fsmul_PARM_2 + 3)
;	../expf.c: 366: r=P(z)*g;
	jsr	___fsmul
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
	ldx	#0x08
	stx	___fsmul_PARM_1
	ldx	#0x53
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x88
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3b
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x10f,x
	sta	___fsmul_PARM_2
	lda	0x110,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x111,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x112,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x00
	stx	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x80
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3e
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
;	../expf.c: 367: r=0.5+(r/(Q(z)-r));
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
	ldx	#0x5b
	stx	___fsmul_PARM_1
	ldx	#0xbf
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x4c
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3d
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x10f,x
	sta	___fsmul_PARM_2
	lda	0x110,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x111,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x112,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x00
	stx	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fssub_PARM_1
	stx	(___fssub_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_1 + 3)
	tsx
	lda	0x109,x
	sta	___fssub_PARM_2
	lda	0x10a,x
	sta	(___fssub_PARM_2 + 1)
	lda	0x10b,x
	sta	(___fssub_PARM_2 + 2)
	lda	0x10c,x
	sta	(___fssub_PARM_2 + 3)
	jsr	___fssub
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
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x00
	stx	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
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
;	../expf.c: 369: n++;
	lda	0x10d,x
	clc
	adc	#0x01
	sta	_ldexpf_PARM_2
	lda	0x10e,x
	adc	#0x00
	sta	(_ldexpf_PARM_2 + 1)
;	../expf.c: 370: z=ldexpf(r, n);
	lda	0x105,x
	sta	_ldexpf_PARM_1
	lda	0x106,x
	sta	(_ldexpf_PARM_1 + 1)
	lda	0x107,x
	sta	(_ldexpf_PARM_1 + 2)
	lda	0x108,x
	sta	(_ldexpf_PARM_1 + 3)
	jsr	_ldexpf
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
;	../expf.c: 371: if(sign)
	lda	0x113,x
	beq	00116$
;	../expf.c: 372: return 1.0/z;
	ldx	#0x00
	stx	___fsdiv_PARM_1
	stx	(___fsdiv_PARM_1 + 1)
	ldx	#0x80
	stx	(___fsdiv_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsdiv_PARM_1 + 3)
	tsx
	lda	0x109,x
	sta	___fsdiv_PARM_2
	lda	0x10a,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	0x10b,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	0x10c,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
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
	sta	0x112, x
	sta	*___SDCC_m6502_ret3
	lda	0x111,x
	sta	*___SDCC_m6502_ret2
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
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
	adc	#0x13
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
