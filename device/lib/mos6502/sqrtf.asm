;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sqrtf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _frexpf
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
;Allocation info for local variables in function 'sqrtf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +21
;f                         Allocated to stack - sp +15
;y                         Allocated to stack - sp +3
;n                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +15
;sloc1                     Allocated to stack - sp +11
;sloc2                     Allocated to stack - sp +7
;------------------------------------------------------------
;	../sqrtf.c: 37: float sqrtf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function sqrtf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_sqrtf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../sqrtf.c: 42: if (x==0.0) return x;
	tsx
	lda	0x118,x
	and	#0x7F
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
	bne	00107$
	lda	0x118,x
	sta	*___SDCC_m6502_ret3
	lda	0x117,x
	sta	*___SDCC_m6502_ret2
	lda	0x116,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x115,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00111$
00107$:
;	../sqrtf.c: 43: else if (x==1.0) return 1.0;
	tsx
	lda	0x115,x
	sta	___fseq_PARM_1
	lda	0x116,x
	sta	(___fseq_PARM_1 + 1)
	lda	0x117,x
	sta	(___fseq_PARM_1 + 2)
	lda	0x118,x
	sta	(___fseq_PARM_1 + 3)
	ldx	#0x00
	stx	___fseq_PARM_2
	stx	(___fseq_PARM_2 + 1)
	ldx	#0x80
	stx	(___fseq_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fseq_PARM_2 + 3)
	jsr	___fseq
	cmp	#0x00
	beq	00104$
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	jmp	00111$
00104$:
;	../sqrtf.c: 44: else if (x<0.0)
	tsx
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
	beq	00108$
;	../sqrtf.c: 46: errno=EDOM;
	ldx	#0x21
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../sqrtf.c: 47: return 0.0;
	txa
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00111$
00108$:
;	../sqrtf.c: 49: f=frexpf(x, &n);
	tsx
	inx
	txa
	ldx	#0x01
	sta	_frexpf_PARM_2
	stx	(_frexpf_PARM_2 + 1)
	tsx
	lda	0x115,x
	sta	_frexpf_PARM_1
	lda	0x116,x
	sta	(_frexpf_PARM_1 + 1)
	lda	0x117,x
	sta	(_frexpf_PARM_1 + 2)
	lda	0x118,x
	sta	(_frexpf_PARM_1 + 3)
	jsr	_frexpf
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
;	../sqrtf.c: 50: y=0.41731+0.59016*f; /*Educated guess*/
	ldx	#0xba
	stx	___fsmul_PARM_1
	ldx	#0x14
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x17
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
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0xa8
	stx	___fsadd_PARM_2
	inx
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xd5
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3e
	stx	(___fsadd_PARM_2 + 3)
;	../sqrtf.c: 52: y+=f/y;
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10d,x
	lda	*___SDCC_m6502_ret3
	sta	0x10e,x
	lda	0x10f,x
	sta	___fsdiv_PARM_1
	lda	0x110,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	0x111,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	0x112,x
	sta	(___fsdiv_PARM_1 + 3)
	lda	0x10b,x
	sta	___fsdiv_PARM_2
	lda	0x10c,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	0x10d,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	0x10e,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	tsx
	lda	0x10b,x
	sta	___fsadd_PARM_1
	lda	0x10c,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x10d,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x10e,x
	sta	(___fsadd_PARM_1 + 3)
;	../sqrtf.c: 53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10c,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10d,x
	lda	*___SDCC_m6502_ret3
	sta	0x10e,x
	lda	0x10b,x
	sta	_ldexpf_PARM_1
	lda	0x10c,x
	sta	(_ldexpf_PARM_1 + 1)
	lda	0x10d,x
	sta	(_ldexpf_PARM_1 + 2)
	lda	0x10e,x
	sta	(_ldexpf_PARM_1 + 3)
	ldx	#0xfe
	stx	_ldexpf_PARM_2
	inx
	stx	(_ldexpf_PARM_2 + 1)
	jsr	_ldexpf
	stx	*(__TEMP+0)
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x108,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x109,x
	lda	*___SDCC_m6502_ret3
	sta	0x10a,x
	lda	0x10f,x
	sta	___fsdiv_PARM_1
	lda	0x110,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	0x111,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	0x112,x
	sta	(___fsdiv_PARM_1 + 3)
	lda	0x10b,x
	sta	___fsdiv_PARM_2
	lda	0x10c,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	0x10d,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	0x10e,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	tsx
	lda	0x107,x
	sta	___fsadd_PARM_1
	lda	0x108,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x109,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x10a,x
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	stx	*(__TEMP+0)
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x108,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x109,x
	lda	*___SDCC_m6502_ret3
	sta	0x10a,x
	lda	0x107,x
	sta	0x103,x
	lda	0x108,x
	sta	0x104,x
	lda	0x109,x
	sta	0x105,x
	lda	0x10a,x
	sta	0x106,x
;	../sqrtf.c: 55: if (n&1)
	lda	#0x01
	and	0x101,x
	beq	00110$
;	../sqrtf.c: 57: y*=0.7071067812;
	ldx	#0xf3
	stx	___fsmul_PARM_1
	ldx	#0x04
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x35
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x107,x
	sta	___fsmul_PARM_2
	lda	0x108,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x109,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x10a,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x103,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x104,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x105,x
	lda	*___SDCC_m6502_ret3
	sta	0x106,x
;	../sqrtf.c: 58: ++n;
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
00110$:
;	../sqrtf.c: 60: return ldexpf(y, n/2);
	tsx
	lda	0x101,x
	sta	*(__TEMP+0)
	lda	0x102,x
	tax
	sec
	sbc	#0x00
	php
	lda	*(__TEMP+0)
	plp
	bvc	00140$
	bpl	00139$
	bmi	00113$
00140$:
	bpl	00113$
00139$:
	clc
	adc	#0x01
	bcc	00142$
	inx
00142$:
00113$:
	stx	*(__TEMP+0)
	cpx	#0x80
	ror	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	_ldexpf_PARM_2
	stx	(_ldexpf_PARM_2 + 1)
	tsx
	lda	0x103,x
	sta	_ldexpf_PARM_1
	lda	0x104,x
	sta	(_ldexpf_PARM_1 + 1)
	lda	0x105,x
	sta	(_ldexpf_PARM_1 + 2)
	lda	0x106,x
	sta	(_ldexpf_PARM_1 + 3)
	jsr	_ldexpf
	stx	*(__TEMP+0)
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x108,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x109,x
	lda	*___SDCC_m6502_ret3
	sta	0x10a, x
	sta	*___SDCC_m6502_ret3
	lda	0x109,x
	sta	*___SDCC_m6502_ret2
	lda	0x108,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x107,x
	php
	ldx	*(__TEMP+0)
	plp
00111$:
;	../sqrtf.c: 61: }
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
	.area XINIT
	.area CABS    (ABS)
