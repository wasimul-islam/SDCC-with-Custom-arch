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
	.globl _asincosf_PARM_2
	.globl _asincosf_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_asincosf_sloc0_1_0:
	.ds 4
_asincosf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_asincosf_PARM_1:
	.ds 4
_asincosf_PARM_2:
	.ds 1
_asincosf_y_65536_26:
	.ds 4
_asincosf_g_65536_26:
	.ds 4
_asincosf_r_65536_26:
	.ds 4
_asincosf_quartPI_65536_26:
	.ds 1
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
;sloc0                     Allocated with name '_asincosf_sloc0_1_0'
;sloc1                     Allocated with name '_asincosf_sloc1_1_0'
;x                         Allocated with name '_asincosf_PARM_1'
;isacos                    Allocated with name '_asincosf_PARM_2'
;y                         Allocated with name '_asincosf_y_65536_26'
;g                         Allocated with name '_asincosf_g_65536_26'
;r                         Allocated with name '_asincosf_r_65536_26'
;i                         Allocated to registers a 
;quartPI                   Allocated with name '_asincosf_quartPI_65536_26'
;------------------------------------------------------------
;	../asincosf.c: 47: float asincosf(float x, bool isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_asincosf:
;	../asincosf.c: 51: bool quartPI = isacos;
	lda	_asincosf_PARM_2
	sta	_asincosf_quartPI_65536_26
;	../asincosf.c: 56: y = fabsf(x);
	lda	(_asincosf_PARM_1 + 3)
	pha
	lda	(_asincosf_PARM_1 + 2)
	pha
	lda	(_asincosf_PARM_1 + 1)
	pha
	lda	_asincosf_PARM_1
	pha
	jsr	_fabsf
	sta	*_asincosf_sloc0_1_0
	stx	*(_asincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc0_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*_asincosf_sloc0_1_0
	sta	_asincosf_y_65536_26
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(_asincosf_y_65536_26 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(_asincosf_y_65536_26 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(_asincosf_y_65536_26 + 3)
;	../asincosf.c: 57: if (y < EPS)
	lda	*_asincosf_sloc0_1_0
	sta	___fslt_PARM_1
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
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
	beq	00107$
;	../asincosf.c: 59: r = y;
	lda	*_asincosf_sloc0_1_0
	sta	_asincosf_r_65536_26
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(_asincosf_r_65536_26 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(_asincosf_r_65536_26 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(_asincosf_r_65536_26 + 3)
	jmp	00108$
00107$:
;	../asincosf.c: 63: if (y > 0.5)
	ldx	#0x00
	stx	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
	lda	*_asincosf_sloc0_1_0
	sta	___fslt_PARM_2
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00144$
	jmp	00104$
00144$:
;	../asincosf.c: 65: quartPI = !isacos;
	lda	_asincosf_quartPI_65536_26
	eor	#0x01
	sta	_asincosf_quartPI_65536_26
;	../asincosf.c: 66: if (y > 1.0)
	ldx	#0x00
	stx	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
	lda	*_asincosf_sloc0_1_0
	sta	___fslt_PARM_2
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
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
	rts
00102$:
;	../asincosf.c: 71: g = (0.5 - y) + 0.5;
	ldx	#0x00
	stx	___fssub_PARM_1
	stx	(___fssub_PARM_1 + 1)
	ldx	#0x80
	stx	(___fssub_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_1 + 3)
	lda	*_asincosf_sloc0_1_0
	sta	___fssub_PARM_2
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
;	../asincosf.c: 72: g = ldexpf(g, -1);
	jsr	___fssub
	sta	_ldexpf_PARM_1
	stx	(_ldexpf_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_ldexpf_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_ldexpf_PARM_1 + 3)
	ldx	#0xff
	stx	_ldexpf_PARM_2
	stx	(_ldexpf_PARM_2 + 1)
	jsr	_ldexpf
	sta	*_asincosf_sloc1_1_0
	stx	*(_asincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc1_1_0 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	_asincosf_g_65536_26
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(_asincosf_g_65536_26 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(_asincosf_g_65536_26 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(_asincosf_g_65536_26 + 3)
;	../asincosf.c: 73: y = sqrtf(g);
	lda	*(_asincosf_sloc1_1_0 + 3)
	pha
	lda	*(_asincosf_sloc1_1_0 + 2)
	pha
	lda	*(_asincosf_sloc1_1_0 + 1)
	pha
	lda	*_asincosf_sloc1_1_0
	pha
	jsr	_sqrtf
	sta	*_asincosf_sloc1_1_0
	stx	*(_asincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc1_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
;	../asincosf.c: 74: y = -(y + y);
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_1
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_2
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	*_asincosf_sloc1_1_0
	stx	*(_asincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc1_1_0 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	_asincosf_y_65536_26
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(_asincosf_y_65536_26 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(_asincosf_y_65536_26 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	eor	#0x80
	sta	(_asincosf_y_65536_26 + 3)
	jmp	00105$
00104$:
;	../asincosf.c: 78: g = y * y;
	lda	*_asincosf_sloc0_1_0
	sta	___fsmul_PARM_1
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*_asincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	_asincosf_g_65536_26
	stx	(_asincosf_g_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_g_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_g_65536_26 + 3)
00105$:
;	../asincosf.c: 80: r = y + y * ((P(g) * g) / Q(g));
	ldx	#0x65
	stx	___fsmul_PARM_1
	ldx	#0x20
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x01
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbf
	stx	(___fsmul_PARM_1 + 3)
	lda	_asincosf_g_65536_26
	sta	___fsmul_PARM_2
	lda	(_asincosf_g_65536_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_asincosf_g_65536_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_asincosf_g_65536_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x6b
	stx	___fsadd_PARM_2
	ldx	#0x16
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x6f
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	lda	_asincosf_g_65536_26
	sta	___fsmul_PARM_2
	lda	(_asincosf_g_65536_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_asincosf_g_65536_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_asincosf_g_65536_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	*_asincosf_sloc1_1_0
	stx	*(_asincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc1_1_0 + 3)
	lda	_asincosf_g_65536_26
	sta	*_asincosf_sloc0_1_0
	lda	(_asincosf_g_65536_26 + 1)
	sta	*(_asincosf_sloc0_1_0 + 1)
	lda	(_asincosf_g_65536_26 + 2)
	sta	*(_asincosf_sloc0_1_0 + 2)
	lda	(_asincosf_g_65536_26 + 3)
	sta	*(_asincosf_sloc0_1_0 + 3)
	lda	*_asincosf_sloc0_1_0
	sta	___fsadd_PARM_1
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x0b
	stx	___fsadd_PARM_2
	ldx	#0x8d
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xb1
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xc0
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	lda	*_asincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0xf0
	stx	___fsadd_PARM_2
	ldx	#0x50
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xb3
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
	lda	*_asincosf_sloc1_1_0
	sta	___fsdiv_PARM_1
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
	lda	_asincosf_y_65536_26
	sta	___fsmul_PARM_1
	lda	(_asincosf_y_65536_26 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	(_asincosf_y_65536_26 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	(_asincosf_y_65536_26 + 3)
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	lda	_asincosf_y_65536_26
	sta	___fsadd_PARM_1
	lda	(_asincosf_y_65536_26 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	(_asincosf_y_65536_26 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_asincosf_y_65536_26 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	_asincosf_r_65536_26
	stx	(_asincosf_r_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_r_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_r_65536_26 + 3)
00108$:
;	../asincosf.c: 82: i = quartPI;
	lda	_asincosf_quartPI_65536_26
;	../asincosf.c: 83: if (isacos)
	ldx	_asincosf_PARM_2
	bne	00146$
	jmp	00115$
00146$:
;	../asincosf.c: 85: if (x < 0.0)
	ldx	_asincosf_PARM_1
	stx	___fslt_PARM_1
	ldx	(_asincosf_PARM_1 + 1)
	stx	(___fslt_PARM_1 + 1)
	ldx	(_asincosf_PARM_1 + 2)
	stx	(___fslt_PARM_1 + 2)
	ldx	(_asincosf_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	pha
	jsr	___fslt
	tax
	pla
	cpx	#0x00
	bne	00147$
	jmp	00110$
00147$:
;	../asincosf.c: 86: r = (b[i] + r) + b[i];
	ldx	#0x00
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	clc
	adc	#<(_asincosf_b_65536_26+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(_asincosf_b_65536_26+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_asincosf_sloc1_1_0
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 1)
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 2)
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_1
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	_asincosf_r_65536_26
	sta	___fsadd_PARM_2
	lda	(_asincosf_r_65536_26 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	(_asincosf_r_65536_26 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(_asincosf_r_65536_26 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_2
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	_asincosf_r_65536_26
	stx	(_asincosf_r_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_r_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_r_65536_26 + 3)
	jmp	00116$
00110$:
;	../asincosf.c: 88: r = (a[i] - r) + a[i];
	ldx	#0x00
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	clc
	adc	#<(_asincosf_a_65536_26+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(_asincosf_a_65536_26+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_asincosf_sloc1_1_0
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 1)
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 2)
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	___fssub_PARM_1
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	_asincosf_r_65536_26
	sta	___fssub_PARM_2
	lda	(_asincosf_r_65536_26 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	(_asincosf_r_65536_26 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	(_asincosf_r_65536_26 + 3)
	sta	(___fssub_PARM_2 + 3)
	jsr	___fssub
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_2
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	_asincosf_r_65536_26
	stx	(_asincosf_r_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_r_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_r_65536_26 + 3)
	jmp	00116$
00115$:
;	../asincosf.c: 92: r = (a[i] + r) + a[i];
	ldx	#0x00
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	clc
	adc	#<(_asincosf_a_65536_26+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(_asincosf_a_65536_26+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_asincosf_sloc1_1_0
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 1)
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 2)
	iny
	lda	[__DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_1
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	_asincosf_r_65536_26
	sta	___fsadd_PARM_2
	lda	(_asincosf_r_65536_26 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	(_asincosf_r_65536_26 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(_asincosf_r_65536_26 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_2
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	_asincosf_r_65536_26
	stx	(_asincosf_r_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_r_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_r_65536_26 + 3)
;	../asincosf.c: 93: if (x < 0.0)
	lda	_asincosf_PARM_1
	sta	___fslt_PARM_1
	lda	(_asincosf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(_asincosf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_asincosf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00116$
;	../asincosf.c: 94: r = -r;
	lda	(_asincosf_r_65536_26 + 3)
	eor	#0x80
	sta	(_asincosf_r_65536_26 + 3)
00116$:
;	../asincosf.c: 96: return r;
	lda	(_asincosf_r_65536_26 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_asincosf_r_65536_26 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_asincosf_r_65536_26 + 1)
	lda	_asincosf_r_65536_26
;	../asincosf.c: 97: }
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
