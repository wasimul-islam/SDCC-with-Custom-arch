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
	.globl _sincosf_PARM_2
	.globl _sincosf_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_sincosf_sloc0_1_0:
	.ds 4
_sincosf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_sincosf_PARM_1:
	.ds 4
_sincosf_PARM_2:
	.ds 1
_sincosf_y_65536_26:
	.ds 4
_sincosf_f_65536_26:
	.ds 4
_sincosf_XN_65536_26:
	.ds 4
_sincosf_sign_65536_26:
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincosf_sloc0_1_0'
;sloc1                     Allocated with name '_sincosf_sloc1_1_0'
;x                         Allocated with name '_sincosf_PARM_1'
;iscos                     Allocated with name '_sincosf_PARM_2'
;y                         Allocated with name '_sincosf_y_65536_26'
;f                         Allocated with name '_sincosf_f_65536_26'
;r                         Allocated with name '_sincosf_r_65536_26'
;g                         Allocated with name '_sincosf_g_65536_26'
;XN                        Allocated with name '_sincosf_XN_65536_26'
;N                         Allocated to registers a x 
;sign                      Allocated with name '_sincosf_sign_65536_26'
;------------------------------------------------------------
;	../sincosf.c: 50: float sincosf(float x, bool iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sincosf:
;	../sincosf.c: 56: if(iscos)
	lda	_sincosf_PARM_2
	beq	00105$
;	../sincosf.c: 58: y=fabsf(x)+HALF_PI;
	lda	(_sincosf_PARM_1 + 3)
	pha
	lda	(_sincosf_PARM_1 + 2)
	pha
	lda	(_sincosf_PARM_1 + 1)
	pha
	lda	_sincosf_PARM_1
	pha
	jsr	_fabsf
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
	ldx	#0xdb
	stx	___fsadd_PARM_2
	ldx	#0x0f
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xc9
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	_sincosf_y_65536_26
	stx	(_sincosf_y_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincosf_y_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincosf_y_65536_26 + 3)
;	../sincosf.c: 59: sign=0;
	ldx	#0x00
	stx	_sincosf_sign_65536_26
	jmp	00106$
00105$:
;	../sincosf.c: 63: if(x<0.0)
	lda	_sincosf_PARM_1
	sta	___fslt_PARM_1
	lda	(_sincosf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(_sincosf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_sincosf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00102$
;	../sincosf.c: 64: { y=-x; sign=1; }
	lda	_sincosf_PARM_1
	sta	_sincosf_y_65536_26
	lda	(_sincosf_PARM_1 + 1)
	sta	(_sincosf_y_65536_26 + 1)
	lda	(_sincosf_PARM_1 + 2)
	sta	(_sincosf_y_65536_26 + 2)
	lda	(_sincosf_PARM_1 + 3)
	eor	#0x80
	sta	(_sincosf_y_65536_26 + 3)
	ldx	#0x01
	stx	_sincosf_sign_65536_26
	jmp	00106$
00102$:
;	../sincosf.c: 66: { y=x; sign=0; }
	lda	_sincosf_PARM_1
	sta	_sincosf_y_65536_26
	lda	(_sincosf_PARM_1 + 1)
	sta	(_sincosf_y_65536_26 + 1)
	lda	(_sincosf_PARM_1 + 2)
	sta	(_sincosf_y_65536_26 + 2)
	lda	(_sincosf_PARM_1 + 3)
	sta	(_sincosf_y_65536_26 + 3)
	ldx	#0x00
	stx	_sincosf_sign_65536_26
00106$:
;	../sincosf.c: 69: if(y>YMAX)
	ldx	#0x00
	stx	___fslt_PARM_1
	ldx	#0x0c
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x49
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x46
	stx	(___fslt_PARM_1 + 3)
	lda	_sincosf_y_65536_26
	sta	___fslt_PARM_2
	lda	(_sincosf_y_65536_26 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	(_sincosf_y_65536_26 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_sincosf_y_65536_26 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
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
	rts
00108$:
;	../sincosf.c: 76: N=((y*iPI)+0.5); /*y is positive*/
	ldx	#0x83
	stx	___fsmul_PARM_1
	ldx	#0xf9
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xa2
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3e
	stx	(___fsmul_PARM_1 + 3)
	lda	_sincosf_y_65536_26
	sta	___fsmul_PARM_2
	lda	(_sincosf_y_65536_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_sincosf_y_65536_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_sincosf_y_65536_26 + 3)
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
	sta	___fs2sint_PARM_1
	stx	(___fs2sint_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fs2sint_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
;	../sincosf.c: 79: if(N&1) sign=!sign;
	sta	*(__TEMP+0)
	and	#0x01
	php
	lda	*(__TEMP+0)
	plp
	beq	00110$
	pha
	lda	_sincosf_sign_65536_26
	eor	#0x01
	sta	_sincosf_sign_65536_26
	pla
00110$:
;	../sincosf.c: 81: XN=N;
	jsr	___sint2fs
	sta	*_sincosf_sloc0_1_0
	stx	*(_sincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc0_1_0 + 3)
	lda	*_sincosf_sloc0_1_0
	sta	_sincosf_XN_65536_26
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(_sincosf_XN_65536_26 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(_sincosf_XN_65536_26 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(_sincosf_XN_65536_26 + 3)
;	../sincosf.c: 83: if(iscos) XN-=0.5;
	lda	_sincosf_PARM_2
	beq	00112$
	lda	*_sincosf_sloc0_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	ldx	#0x00
	stx	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	stx	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
	jsr	___fssub
	sta	_sincosf_XN_65536_26
	stx	(_sincosf_XN_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincosf_XN_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincosf_XN_65536_26 + 3)
00112$:
;	../sincosf.c: 85: y=fabsf(x);
	lda	(_sincosf_PARM_1 + 3)
	pha
	lda	(_sincosf_PARM_1 + 2)
	pha
	lda	(_sincosf_PARM_1 + 1)
	pha
	lda	_sincosf_PARM_1
	pha
	jsr	_fabsf
	sta	*_sincosf_sloc0_1_0
	stx	*(_sincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc0_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
;	../sincosf.c: 86: r=(int)y;
	lda	*_sincosf_sloc0_1_0
	sta	___fs2sint_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fs2sint_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fs2sint_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
	jsr	___sint2fs
	sta	*_sincosf_sloc1_1_0
	stx	*(_sincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc1_1_0 + 3)
;	../sincosf.c: 87: g=y-r;
	lda	*_sincosf_sloc0_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_2
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
;	../sincosf.c: 88: f=((r-XN*C1)+g)-XN*C2;
	jsr	___fssub
	sta	*_sincosf_sloc0_1_0
	stx	*(_sincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc0_1_0 + 3)
	ldx	#0x00
	stx	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x49
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x40
	stx	(___fsmul_PARM_1 + 3)
	lda	_sincosf_XN_65536_26
	sta	___fsmul_PARM_2
	lda	(_sincosf_XN_65536_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_sincosf_XN_65536_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_sincosf_XN_65536_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	lda	*_sincosf_sloc0_1_0
	sta	___fsadd_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	*_sincosf_sloc1_1_0
	stx	*(_sincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc1_1_0 + 3)
	ldx	#0x22
	stx	___fsmul_PARM_1
	ldx	#0xaa
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x7d
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3a
	stx	(___fsmul_PARM_1 + 3)
	lda	_sincosf_XN_65536_26
	sta	___fsmul_PARM_2
	lda	(_sincosf_XN_65536_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_sincosf_XN_65536_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_sincosf_XN_65536_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	*_sincosf_sloc1_1_0
	stx	*(_sincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc1_1_0 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	_sincosf_f_65536_26
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(_sincosf_f_65536_26 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(_sincosf_f_65536_26 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(_sincosf_f_65536_26 + 3)
;	../sincosf.c: 90: g=f*f;
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
;	../sincosf.c: 91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	jsr	___fsmul
	sta	*_sincosf_sloc0_1_0
	stx	*(_sincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc0_1_0 + 3)
	ldx	#0xf3
	stx	___fslt_PARM_1
	ldx	#0xff
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x7f
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x33
	stx	(___fslt_PARM_1 + 3)
	lda	*_sincosf_sloc0_1_0
	sta	___fslt_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00153$
	jmp	00114$
00153$:
;	../sincosf.c: 93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	ldx	#0x5b
	stx	___fsmul_PARM_1
	ldx	#0x9c
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x2e
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x36
	stx	(___fsmul_PARM_1 + 3)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x22
	stx	___fsadd_PARM_2
	ldx	#0xb2
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x4f
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xb9
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0x3e
	stx	___fsadd_PARM_2
	ldx	#0x87
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x08
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3c
	stx	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
	ldx	#0xa4
	stx	___fsadd_PARM_2
	ldx	#0xaa
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x2a
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
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
;	../sincosf.c: 94: f+=f*r;
	jsr	___fsmul
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	_sincosf_f_65536_26
	stx	(_sincosf_f_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincosf_f_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincosf_f_65536_26 + 3)
00114$:
;	../sincosf.c: 96: return (sign?-f:f);
	lda	_sincosf_sign_65536_26
	beq	00117$
	lda	_sincosf_f_65536_26
	sta	*_sincosf_sloc1_1_0
	lda	(_sincosf_f_65536_26 + 1)
	sta	*(_sincosf_sloc1_1_0 + 1)
	lda	(_sincosf_f_65536_26 + 2)
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	(_sincosf_f_65536_26 + 3)
	eor	#0x80
	sta	*(_sincosf_sloc1_1_0 + 3)
	jmp	00118$
00117$:
	lda	_sincosf_f_65536_26
	sta	*_sincosf_sloc1_1_0
	lda	(_sincosf_f_65536_26 + 1)
	sta	*(_sincosf_sloc1_1_0 + 1)
	lda	(_sincosf_f_65536_26 + 2)
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	(_sincosf_f_65536_26 + 3)
	sta	*(_sincosf_sloc1_1_0 + 3)
00118$:
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_sincosf_sloc1_1_0 + 1)
	lda	*_sincosf_sloc1_1_0
;	../sincosf.c: 97: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
