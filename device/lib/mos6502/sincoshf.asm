;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _expf
	.globl _sincoshf_PARM_2
	.globl _sincoshf_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_sincoshf_sloc0_1_0:
	.ds 4
_sincoshf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_sincoshf_PARM_1:
	.ds 4
_sincoshf_PARM_2:
	.ds 1
_sincoshf_y_65536_26:
	.ds 4
_sincoshf_w_65536_26:
	.ds 4
_sincoshf_z_65536_26:
	.ds 4
_sincoshf_sign_65536_26:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincoshf_sloc0_1_0'
;sloc1                     Allocated with name '_sincoshf_sloc1_1_0'
;x                         Allocated with name '_sincoshf_PARM_1'
;iscosh                    Allocated with name '_sincoshf_PARM_2'
;y                         Allocated with name '_sincoshf_y_65536_26'
;w                         Allocated with name '_sincoshf_w_65536_26'
;z                         Allocated with name '_sincoshf_z_65536_26'
;sign                      Allocated with name '_sincoshf_sign_65536_26'
;------------------------------------------------------------
;	../sincoshf.c: 56: float sincoshf(float x, bool iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sincoshf:
;	../sincoshf.c: 61: if (x<0.0) { y=-x; sign=1; }
	lda	_sincoshf_PARM_1
	sta	___fslt_PARM_1
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00102$
	lda	_sincoshf_PARM_1
	sta	_sincoshf_y_65536_26
	lda	(_sincoshf_PARM_1 + 1)
	sta	(_sincoshf_y_65536_26 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(_sincoshf_y_65536_26 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	eor	#0x80
	sta	(_sincoshf_y_65536_26 + 3)
	ldx	#0x01
	stx	_sincoshf_sign_65536_26
	jmp	00103$
00102$:
;	../sincoshf.c: 62: else { y=x;  sign=0; }
	lda	_sincoshf_PARM_1
	sta	_sincoshf_y_65536_26
	lda	(_sincoshf_PARM_1 + 1)
	sta	(_sincoshf_y_65536_26 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(_sincoshf_y_65536_26 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	sta	(_sincoshf_y_65536_26 + 3)
	ldx	#0x00
	stx	_sincoshf_sign_65536_26
00103$:
;	../sincoshf.c: 64: if ((y>1.0) || iscosh)
	ldx	#0x00
	stx	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
	lda	_sincoshf_y_65536_26
	sta	___fslt_PARM_2
	lda	(_sincoshf_y_65536_26 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	(_sincoshf_y_65536_26 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_sincoshf_y_65536_26 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00117$
	lda	_sincoshf_PARM_2
	bne	00153$
	jmp	00118$
00153$:
00117$:
;	../sincoshf.c: 66: if(y>YBAR)
	ldx	#0x00
	stx	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x10
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x41
	stx	(___fslt_PARM_1 + 3)
	lda	_sincoshf_y_65536_26
	sta	___fslt_PARM_2
	lda	(_sincoshf_y_65536_26 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	(_sincoshf_y_65536_26 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_sincoshf_y_65536_26 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00154$
	jmp	00110$
00154$:
;	../sincoshf.c: 68: w=y-K1;
	lda	_sincoshf_y_65536_26
	sta	___fssub_PARM_1
	lda	(_sincoshf_y_65536_26 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	(_sincoshf_y_65536_26 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	(_sincoshf_y_65536_26 + 3)
	sta	(___fssub_PARM_1 + 3)
	ldx	#0x00
	stx	___fssub_PARM_2
	ldx	#0x73
	stx	(___fssub_PARM_2 + 1)
	ldx	#0x31
	stx	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
;	../sincoshf.c: 69: if (w>WMAX)
	jsr	___fssub
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
	ldx	#0xcf
	stx	___fslt_PARM_1
	ldx	#0xbd
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x33
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x42
	stx	(___fslt_PARM_1 + 3)
	lda	*_sincoshf_sloc0_1_0
	sta	___fslt_PARM_2
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00105$
;	../sincoshf.c: 71: errno=ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../sincoshf.c: 72: z=HUGE_VALF;
	dex
	stx	_sincoshf_z_65536_26
	stx	(_sincoshf_z_65536_26 + 1)
	ldx	#0x7f
	stx	(_sincoshf_z_65536_26 + 2)
	stx	(_sincoshf_z_65536_26 + 3)
	jmp	00111$
00105$:
;	../sincoshf.c: 76: z=expf(w);
	lda	*(_sincoshf_sloc0_1_0 + 3)
	pha
	lda	*(_sincoshf_sloc0_1_0 + 2)
	pha
	lda	*(_sincoshf_sloc0_1_0 + 1)
	pha
	lda	*_sincoshf_sloc0_1_0
	pha
	jsr	_expf
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../sincoshf.c: 77: z+=K3*z;
	ldx	#0x97
	stx	___fsmul_PARM_1
	ldx	#0x08
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x68
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x37
	stx	(___fsmul_PARM_1 + 3)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	_sincoshf_z_65536_26
	stx	(_sincoshf_z_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincoshf_z_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincoshf_z_65536_26 + 3)
	jmp	00111$
00110$:
;	../sincoshf.c: 82: z=expf(y);
	lda	(_sincoshf_y_65536_26 + 3)
	pha
	lda	(_sincoshf_y_65536_26 + 2)
	pha
	lda	(_sincoshf_y_65536_26 + 1)
	pha
	lda	_sincoshf_y_65536_26
	pha
	jsr	_expf
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../sincoshf.c: 83: w=1.0/z;
	ldx	#0x00
	stx	___fsdiv_PARM_1
	stx	(___fsdiv_PARM_1 + 1)
	ldx	#0x80
	stx	(___fsdiv_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsdiv_PARM_1 + 3)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsdiv_PARM_2
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	*_sincoshf_sloc1_1_0
	stx	*(_sincoshf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc1_1_0 + 3)
	lda	*_sincoshf_sloc1_1_0
	sta	_sincoshf_w_65536_26
	lda	*(_sincoshf_sloc1_1_0 + 1)
	sta	(_sincoshf_w_65536_26 + 1)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(_sincoshf_w_65536_26 + 2)
	lda	*(_sincoshf_sloc1_1_0 + 3)
	sta	(_sincoshf_w_65536_26 + 3)
;	../sincoshf.c: 84: if(!iscosh) w=-w;
	lda	_sincoshf_PARM_2
	bne	00108$
	lda	*_sincoshf_sloc1_1_0
	sta	_sincoshf_w_65536_26
	lda	*(_sincoshf_sloc1_1_0 + 1)
	sta	(_sincoshf_w_65536_26 + 1)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(_sincoshf_w_65536_26 + 2)
	lda	*(_sincoshf_sloc1_1_0 + 3)
	eor	#0x80
	sta	(_sincoshf_w_65536_26 + 3)
00108$:
;	../sincoshf.c: 85: z=(z+w)*0.5;
	lda	*_sincoshf_sloc0_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	_sincoshf_w_65536_26
	sta	___fsadd_PARM_2
	lda	(_sincoshf_w_65536_26 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	(_sincoshf_w_65536_26 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(_sincoshf_w_65536_26 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
	ldx	#0x00
	stx	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	_sincoshf_z_65536_26
	stx	(_sincoshf_z_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincoshf_z_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincoshf_z_65536_26 + 3)
00111$:
;	../sincoshf.c: 87: if(sign) z=-z;
	lda	_sincoshf_sign_65536_26
	bne	00157$
	jmp	00119$
00157$:
	lda	(_sincoshf_z_65536_26 + 3)
	eor	#0x80
	sta	(_sincoshf_z_65536_26 + 3)
	jmp	00119$
00118$:
;	../sincoshf.c: 91: if (y<EPS)
	lda	_sincoshf_y_65536_26
	sta	___fslt_PARM_1
	lda	(_sincoshf_y_65536_26 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(_sincoshf_y_65536_26 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_sincoshf_y_65536_26 + 3)
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
	beq	00115$
;	../sincoshf.c: 92: z=x;
	lda	_sincoshf_PARM_1
	sta	_sincoshf_z_65536_26
	lda	(_sincoshf_PARM_1 + 1)
	sta	(_sincoshf_z_65536_26 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(_sincoshf_z_65536_26 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	sta	(_sincoshf_z_65536_26 + 3)
	jmp	00119$
00115$:
;	../sincoshf.c: 95: z=x*x;
	lda	_sincoshf_PARM_1
	sta	___fsmul_PARM_1
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	_sincoshf_PARM_1
	sta	___fsmul_PARM_2
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fsmul_PARM_2 + 3)
;	../sincoshf.c: 96: z=x+x*z*P(z)/Q(z);
	jsr	___fsmul
	sta	*_sincoshf_sloc1_1_0
	stx	*(_sincoshf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc1_1_0 + 3)
	lda	_sincoshf_PARM_1
	sta	___fsmul_PARM_1
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*_sincoshf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincoshf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincoshf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
	ldx	#0xea
	stx	___fsmul_PARM_1
	ldx	#0xe6
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x42
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbe
	stx	(___fsmul_PARM_1 + 3)
	lda	*_sincoshf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincoshf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincoshf_sloc1_1_0 + 3)
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
	ldx	#0x69
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xe4
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xc0
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsmul_PARM_1
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
	lda	*_sincoshf_sloc1_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincoshf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x93
	stx	___fsadd_PARM_2
	ldx	#0x4f
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x2b
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xc2
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsdiv_PARM_1
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	lda	_sincoshf_PARM_1
	sta	___fsadd_PARM_1
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	_sincoshf_z_65536_26
	stx	(_sincoshf_z_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincoshf_z_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincoshf_z_65536_26 + 3)
00119$:
;	../sincoshf.c: 99: return z;
	lda	(_sincoshf_z_65536_26 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_sincoshf_z_65536_26 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_sincoshf_z_65536_26 + 1)
	lda	_sincoshf_z_65536_26
;	../sincoshf.c: 100: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
