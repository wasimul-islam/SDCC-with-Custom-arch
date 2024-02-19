;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module logf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
	.globl _logf
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
;Allocation info for local variables in function 'logf'
;------------------------------------------------------------
;x                         Allocated to stack - sp +25
;Rz                        Allocated to stack - sp +19
;f                         Allocated to stack - sp +15
;z                         Allocated to stack - sp +11
;w                         Allocated to stack - sp +7
;znum                      Allocated to stack - sp +7
;zden                      Allocated to stack - sp +3
;xn                        Allocated to stack - sp -5
;n                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +19
;sloc1                     Allocated to stack - sp +15
;sloc2                     Allocated to stack - sp +11
;------------------------------------------------------------
;	../logf.c: 216: float logf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 22 bytes.
_logf:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xea
	tax
	txs
;	../logf.c: 226: if (x<=0.0)
	lda	*(__TEMP+0)
	ldx	#0x00
	stx	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	stx	(___fslt_PARM_1 + 2)
	stx	(___fslt_PARM_1 + 3)
	tsx
	lda	0x119,x
	sta	___fslt_PARM_2
	lda	0x11a,x
	sta	(___fslt_PARM_2 + 1)
	lda	0x11b,x
	sta	(___fslt_PARM_2 + 2)
	lda	0x11c,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00102$
;	../logf.c: 228: errno=EDOM;
	ldx	#0x21
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../logf.c: 229: return 0.0;
	txa
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00106$
00102$:
;	../logf.c: 231: f=frexpf(x, &n);
	tsx
	inx
	txa
	ldx	#0x01
	sta	_frexpf_PARM_2
	stx	(_frexpf_PARM_2 + 1)
	tsx
	lda	0x119,x
	sta	_frexpf_PARM_1
	lda	0x11a,x
	sta	(_frexpf_PARM_1 + 1)
	lda	0x11b,x
	sta	(_frexpf_PARM_1 + 2)
	lda	0x11c,x
	sta	(_frexpf_PARM_1 + 3)
	jsr	_frexpf
	stx	*(__TEMP+0)
	tsx
	sta	0x113,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x114,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x115,x
	lda	*___SDCC_m6502_ret3
	sta	0x116,x
;	../logf.c: 232: znum=f-0.5;
	lda	0x113,x
	sta	___fssub_PARM_1
	lda	0x114,x
	sta	(___fssub_PARM_1 + 1)
	lda	0x115,x
	sta	(___fssub_PARM_1 + 2)
	lda	0x116,x
	sta	(___fssub_PARM_1 + 3)
	ldx	#0x00
	stx	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	stx	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
	jsr	___fssub
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
	sta	0x107,x
	lda	0x110,x
	sta	0x108,x
	lda	0x111,x
	sta	0x109,x
	lda	0x112,x
	sta	0x10a,x
;	../logf.c: 233: if (f>C0)
	ldx	#0xf3
	stx	___fslt_PARM_1
	ldx	#0x04
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x35
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
	tsx
	lda	0x113,x
	sta	___fslt_PARM_2
	lda	0x114,x
	sta	(___fslt_PARM_2 + 1)
	lda	0x115,x
	sta	(___fslt_PARM_2 + 2)
	lda	0x116,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00117$
	jmp	00104$
00117$:
;	../logf.c: 235: znum-=0.5;
	tsx
	lda	0x10f,x
	sta	___fssub_PARM_1
	lda	0x110,x
	sta	(___fssub_PARM_1 + 1)
	lda	0x111,x
	sta	(___fssub_PARM_1 + 2)
	lda	0x112,x
	sta	(___fssub_PARM_1 + 3)
	ldx	#0x00
	stx	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	stx	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
	jsr	___fssub
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
;	../logf.c: 236: zden=(f*0.5)+0.5;
	ldx	#0x00
	stx	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x113,x
	sta	___fsmul_PARM_2
	lda	0x114,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x115,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x116,x
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
	jmp	00105$
00104$:
;	../logf.c: 240: n--;
	tsx
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
;	../logf.c: 241: zden=znum*0.5+0.5;
	ldx	#0x00
	stx	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
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
	ldx	#0x00
	stx	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
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
00105$:
;	../logf.c: 243: z=znum/zden;
	tsx
	lda	0x107,x
	sta	___fsdiv_PARM_1
	lda	0x108,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	0x109,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	0x10a,x
	sta	(___fsdiv_PARM_1 + 3)
	lda	0x103,x
	sta	___fsdiv_PARM_2
	lda	0x104,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	0x105,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	0x106,x
	sta	(___fsdiv_PARM_2 + 3)
;	../logf.c: 244: w=z*z;
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
	sta	0x112,x
	lda	0x10f,x
	sta	___fsmul_PARM_1
	lda	0x110,x
	sta	(___fsmul_PARM_1 + 1)
	lda	0x111,x
	sta	(___fsmul_PARM_1 + 2)
	lda	0x112,x
	sta	(___fsmul_PARM_1 + 3)
	lda	0x10f,x
	sta	___fsmul_PARM_2
	lda	0x110,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x111,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x112,x
	sta	(___fsmul_PARM_2 + 3)
;	../logf.c: 246: Rz=z+z*(w*A(w)/B(w));
	jsr	___fsmul
	stx	*(__TEMP+0)
	tsx
	sta	0x113,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x114,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x115,x
	lda	*___SDCC_m6502_ret3
	sta	0x116,x
	ldx	#0x3d
	stx	___fsmul_PARM_1
	ldx	#0x7e
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x0d
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbf
	stx	(___fsmul_PARM_1 + 3)
	tsx
	lda	0x113,x
	sta	___fsmul_PARM_2
	lda	0x114,x
	sta	(___fsmul_PARM_2 + 1)
	lda	0x115,x
	sta	(___fsmul_PARM_2 + 2)
	lda	0x116,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
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
	lda	0x113,x
	sta	___fsadd_PARM_1
	lda	0x114,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x115,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x116,x
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x3a
	stx	___fsadd_PARM_2
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xd4
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xc0
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
	tsx
	lda	0x10b,x
	sta	___fsdiv_PARM_1
	lda	0x10c,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	0x10d,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	0x10e,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
	tsx
	lda	0x10f,x
	sta	___fsmul_PARM_1
	lda	0x110,x
	sta	(___fsmul_PARM_1 + 1)
	lda	0x111,x
	sta	(___fsmul_PARM_1 + 2)
	lda	0x112,x
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	tsx
	lda	0x10f,x
	sta	___fsadd_PARM_1
	lda	0x110,x
	sta	(___fsadd_PARM_1 + 1)
	lda	0x111,x
	sta	(___fsadd_PARM_1 + 2)
	lda	0x112,x
	sta	(___fsadd_PARM_1 + 3)
;	../logf.c: 247: xn=n;
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
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
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
;	../logf.c: 248: return ((xn*C2+Rz)+xn*C1);
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
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	tsx
	lda	0x10b,x
	sta	___fsadd_PARM_2
	lda	0x10c,x
	sta	(___fsadd_PARM_2 + 1)
	lda	0x10d,x
	sta	(___fsadd_PARM_2 + 2)
	lda	0x10e,x
	sta	(___fsadd_PARM_2 + 3)
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
	sta	0x10e, x
	sta	*___SDCC_m6502_ret3
	lda	0x10d,x
	sta	*___SDCC_m6502_ret2
	lda	0x10c,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10b,x
	php
	ldx	*(__TEMP+0)
	plp
00106$:
;	../logf.c: 249: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x16
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
