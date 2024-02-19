;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f_PARM_2
	.globl _atan2f_PARM_1
	.globl _atan2f
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_atan2f_sloc0_1_0:
	.ds 4
_atan2f_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atan2f_PARM_1:
	.ds 4
_atan2f_PARM_2:
	.ds 4
_atan2f_r_65536_26:
	.ds 4
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atan2f_sloc0_1_0'
;sloc1                     Allocated with name '_atan2f_sloc1_1_0'
;x                         Allocated with name '_atan2f_PARM_1'
;y                         Allocated with name '_atan2f_PARM_2'
;r                         Allocated with name '_atan2f_r_65536_26'
;------------------------------------------------------------
;	../atan2f.c: 34: float atan2f(float x, float y)
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atan2f:
;	../atan2f.c: 38: if ((x==0.0) && (y==0.0))
	lda	(_atan2f_PARM_1 + 3)
	and	#0x7F
	ora	(_atan2f_PARM_1 + 2)
	ora	(_atan2f_PARM_1 + 1)
	ora	_atan2f_PARM_1
	bne	00102$
	lda	(_atan2f_PARM_2 + 3)
	and	#0x7F
	ora	(_atan2f_PARM_2 + 2)
	ora	(_atan2f_PARM_2 + 1)
	ora	_atan2f_PARM_2
	bne	00102$
;	../atan2f.c: 40: errno=EDOM;
	ldx	#0x21
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../atan2f.c: 41: return 0.0;
	txa
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
	lda	(_atan2f_PARM_2 + 3)
	pha
	lda	(_atan2f_PARM_2 + 2)
	pha
	lda	(_atan2f_PARM_2 + 1)
	pha
	lda	_atan2f_PARM_2
	pha
	jsr	_fabsf
	sta	*_atan2f_sloc0_1_0
	stx	*(_atan2f_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atan2f_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atan2f_sloc0_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	(_atan2f_PARM_1 + 3)
	pha
	lda	(_atan2f_PARM_1 + 2)
	pha
	lda	(_atan2f_PARM_1 + 1)
	pha
	lda	_atan2f_PARM_1
	pha
	jsr	_fabsf
	sta	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_2 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*_atan2f_sloc0_1_0
	sta	___fslt_PARM_1
	lda	*(_atan2f_sloc0_1_0 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	*(_atan2f_sloc0_1_0 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	*(_atan2f_sloc0_1_0 + 3)
	sta	(___fslt_PARM_1 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00141$
	jmp	00107$
00141$:
;	../atan2f.c: 46: r=atanf(x/y);
	lda	_atan2f_PARM_1
	sta	___fsdiv_PARM_1
	lda	(_atan2f_PARM_1 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	(_atan2f_PARM_1 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_atan2f_PARM_1 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	_atan2f_PARM_2
	sta	___fsdiv_PARM_2
	lda	(_atan2f_PARM_2 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	(_atan2f_PARM_2 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_atan2f_PARM_2 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	*_atan2f_sloc0_1_0
	stx	*(_atan2f_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atan2f_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atan2f_sloc0_1_0 + 3)
	pha
	lda	*(_atan2f_sloc0_1_0 + 2)
	pha
	lda	*(_atan2f_sloc0_1_0 + 1)
	pha
	lda	*_atan2f_sloc0_1_0
	pha
	jsr	_atanf
	sta	*_atan2f_sloc0_1_0
	stx	*(_atan2f_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atan2f_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atan2f_sloc0_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*_atan2f_sloc0_1_0
	sta	_atan2f_r_65536_26
	lda	*(_atan2f_sloc0_1_0 + 1)
	sta	(_atan2f_r_65536_26 + 1)
	lda	*(_atan2f_sloc0_1_0 + 2)
	sta	(_atan2f_r_65536_26 + 2)
	lda	*(_atan2f_sloc0_1_0 + 3)
	sta	(_atan2f_r_65536_26 + 3)
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
	lda	_atan2f_PARM_2
	sta	___fslt_PARM_1
	lda	(_atan2f_PARM_2 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(_atan2f_PARM_2 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_atan2f_PARM_2 + 3)
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00142$
	jmp	00108$
00142$:
	lda	_atan2f_PARM_1
	sta	___fslt_PARM_1
	lda	(_atan2f_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(_atan2f_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_atan2f_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	bne	00111$
	ldx	#0xdb
	stx	*_atan2f_sloc1_1_0
	ldx	#0x0f
	stx	*(_atan2f_sloc1_1_0 + 1)
	ldx	#0x49
	stx	*(_atan2f_sloc1_1_0 + 2)
	ldx	#0x40
	stx	*(_atan2f_sloc1_1_0 + 3)
	jmp	00112$
00111$:
	ldx	#0xdb
	stx	*_atan2f_sloc1_1_0
	ldx	#0x0f
	stx	*(_atan2f_sloc1_1_0 + 1)
	ldx	#0x49
	stx	*(_atan2f_sloc1_1_0 + 2)
	ldx	#0xc0
	stx	*(_atan2f_sloc1_1_0 + 3)
00112$:
	lda	*_atan2f_sloc0_1_0
	sta	___fsadd_PARM_1
	lda	*(_atan2f_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_atan2f_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_atan2f_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*_atan2f_sloc1_1_0
	sta	___fsadd_PARM_2
	lda	*(_atan2f_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_atan2f_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_atan2f_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	_atan2f_r_65536_26
	stx	(_atan2f_r_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atan2f_r_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atan2f_r_65536_26 + 3)
	jmp	00108$
00107$:
;	../atan2f.c: 51: r=-atanf(y/x);
	lda	_atan2f_PARM_2
	sta	___fsdiv_PARM_1
	lda	(_atan2f_PARM_2 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	(_atan2f_PARM_2 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_atan2f_PARM_2 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	_atan2f_PARM_1
	sta	___fsdiv_PARM_2
	lda	(_atan2f_PARM_1 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	(_atan2f_PARM_1 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_atan2f_PARM_1 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	*_atan2f_sloc1_1_0
	stx	*(_atan2f_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atan2f_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atan2f_sloc1_1_0 + 3)
	pha
	lda	*(_atan2f_sloc1_1_0 + 2)
	pha
	lda	*(_atan2f_sloc1_1_0 + 1)
	pha
	lda	*_atan2f_sloc1_1_0
	pha
	jsr	_atanf
	sta	*_atan2f_sloc1_1_0
	stx	*(_atan2f_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atan2f_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atan2f_sloc1_1_0 + 3)
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(_atan2f_sloc1_1_0 + 3)
	eor	#0x80
	sta	*(_atan2f_sloc1_1_0 + 3)
;	../atan2f.c: 52: r+=(x<0.0?-HALF_PI:HALF_PI);
	lda	_atan2f_PARM_1
	sta	___fslt_PARM_1
	lda	(_atan2f_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(_atan2f_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_atan2f_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	ldx	#0x00
	stx	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	stx	(___fslt_PARM_2 + 2)
	stx	(___fslt_PARM_2 + 3)
	jsr	___fslt
	cmp	#0x00
	beq	00113$
	ldx	#0xdb
	stx	*_atan2f_sloc0_1_0
	ldx	#0x0f
	stx	*(_atan2f_sloc0_1_0 + 1)
	ldx	#0xc9
	stx	*(_atan2f_sloc0_1_0 + 2)
	ldx	#0xbf
	stx	*(_atan2f_sloc0_1_0 + 3)
	jmp	00114$
00113$:
	ldx	#0xdb
	stx	*_atan2f_sloc0_1_0
	ldx	#0x0f
	stx	*(_atan2f_sloc0_1_0 + 1)
	ldx	#0xc9
	stx	*(_atan2f_sloc0_1_0 + 2)
	ldx	#0x3f
	stx	*(_atan2f_sloc0_1_0 + 3)
00114$:
	lda	*_atan2f_sloc1_1_0
	sta	___fsadd_PARM_1
	lda	*(_atan2f_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_atan2f_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_atan2f_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*_atan2f_sloc0_1_0
	sta	___fsadd_PARM_2
	lda	*(_atan2f_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_atan2f_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_atan2f_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	_atan2f_r_65536_26
	stx	(_atan2f_r_65536_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atan2f_r_65536_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atan2f_r_65536_26 + 3)
00108$:
;	../atan2f.c: 54: return r;
	lda	(_atan2f_r_65536_26 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_atan2f_r_65536_26 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_atan2f_r_65536_26 + 1)
	lda	_atan2f_r_65536_26
;	../atan2f.c: 55: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
