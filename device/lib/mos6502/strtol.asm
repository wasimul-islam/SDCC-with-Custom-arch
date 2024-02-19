;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtol
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtoul
	.globl _strtol_PARM_3
	.globl _strtol_PARM_2
	.globl _strtol
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strtol_sloc0_1_0:
	.ds 2
_strtol_sloc1_1_0:
	.ds 4
_strtol_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strtol_PARM_2:
	.ds 2
_strtol_PARM_3:
	.ds 2
_strtol_nptr_65536_56:
	.ds 2
_strtol_ptr_65536_57:
	.ds 2
_strtol_rptr_65536_57:
	.ds 2
_strtol_neg_65536_57:
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
;Allocation info for local variables in function 'strtol'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strtol_sloc0_1_0'
;sloc1                     Allocated with name '_strtol_sloc1_1_0'
;sloc2                     Allocated with name '_strtol_sloc2_1_0'
;endptr                    Allocated with name '_strtol_PARM_2'
;base                      Allocated with name '_strtol_PARM_3'
;nptr                      Allocated with name '_strtol_nptr_65536_56'
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ptr                       Allocated with name '_strtol_ptr_65536_57'
;rptr                      Allocated with name '_strtol_rptr_65536_57'
;u                         Allocated with name '_strtol_u_65536_57'
;neg                       Allocated with name '_strtol_neg_65536_57'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;	../strtol.c: 38: long int strtol(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtol
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strtol:
;	../strtol.c: 45: while (isblank (*ptr))
	sta	_strtol_nptr_65536_56
	stx	(_strtol_nptr_65536_56 + 1)
	sta	*_strtol_sloc0_1_0
	stx	*(_strtol_sloc0_1_0 + 1)
00101$:
	ldy	#0x00
	lda	[*_strtol_sloc0_1_0],y
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cmp	#0x20
	beq	00132$
	cmp	#0x09
	bne	00158$
00132$:
;	../strtol.c: 46: ptr++;
	inc	*_strtol_sloc0_1_0
	bne	00101$
	inc	*(_strtol_sloc0_1_0 + 1)
	jmp	00101$
00158$:
	lda	*_strtol_sloc0_1_0
	sta	_strtol_ptr_65536_57
	lda	*(_strtol_sloc0_1_0 + 1)
	sta	(_strtol_ptr_65536_57 + 1)
;	../strtol.c: 50: if (*ptr == '-')
	ldy	#0x00
	lda	[*_strtol_sloc0_1_0],y
	cmp	#0x2d
	bne	00105$
;	../strtol.c: 52: neg = true;
	ldx	#0x01
	stx	_strtol_neg_65536_57
;	../strtol.c: 53: ptr++;
	lda	*_strtol_sloc0_1_0
	clc
	adc	#0x01
	sta	_strtol_ptr_65536_57
	lda	*(_strtol_sloc0_1_0 + 1)
	adc	#0x00
	sta	(_strtol_ptr_65536_57 + 1)
	jmp	00106$
00105$:
;	../strtol.c: 56: neg = false;
	ldx	#0x00
	stx	_strtol_neg_65536_57
00106$:
;	../strtol.c: 59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	lda	_strtol_neg_65536_57
	beq	00110$
	lda	_strtol_ptr_65536_57
	sta	*(__DPTR+0)
	lda	(_strtol_ptr_65536_57 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tax
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cpx	#0x20
	beq	00109$
	cpx	#0x09
	beq	00109$
;	../strtol.c: 59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	cmp	#0x2d
	beq	00109$
	cmp	#0x2b
	bne	00110$
00109$:
;	../strtol.c: 61: if (endptr)
	lda	(_strtol_PARM_2 + 1)
	ora	_strtol_PARM_2
	beq	00108$
;	../strtol.c: 62: *endptr = nptr;
	lda	_strtol_PARM_2
	ldx	(_strtol_PARM_2 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	_strtol_nptr_65536_56
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_strtol_nptr_65536_56 + 1)
	iny
	sta	[__DPTR],y
00108$:
;	../strtol.c: 63: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00110$:
;	../strtol.c: 66: u = strtoul(ptr, &rptr, base);
	lda	#_strtol_rptr_65536_57
	sta	_strtoul_PARM_2
	lda	#>_strtol_rptr_65536_57
	sta	(_strtoul_PARM_2 + 1)
	lda	_strtol_PARM_3
	sta	_strtoul_PARM_3
	lda	(_strtol_PARM_3 + 1)
	sta	(_strtoul_PARM_3 + 1)
	ldx	(_strtol_ptr_65536_57 + 1)
	lda	_strtol_ptr_65536_57
	jsr	_strtoul
	sta	*_strtol_sloc1_1_0
	stx	*(_strtol_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_strtol_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_strtol_sloc1_1_0 + 3)
;	../strtol.c: 69: if (rptr == ptr)
	lda	_strtol_rptr_65536_57
	cmp	_strtol_ptr_65536_57
	bne	00117$
	lda	(_strtol_rptr_65536_57 + 1)
	cmp	(_strtol_ptr_65536_57 + 1)
	bne	00117$
;	../strtol.c: 71: if (endptr)
	lda	(_strtol_PARM_2 + 1)
	ora	_strtol_PARM_2
	beq	00115$
;	../strtol.c: 72: *endptr = nptr;
	lda	_strtol_PARM_2
	ldx	(_strtol_PARM_2 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	_strtol_nptr_65536_56
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_strtol_nptr_65536_56 + 1)
	iny
	sta	[__DPTR],y
00115$:
;	../strtol.c: 73: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00117$:
;	../strtol.c: 76: if (endptr)
	lda	(_strtol_PARM_2 + 1)
	ora	_strtol_PARM_2
	beq	00119$
;	../strtol.c: 77: *endptr = rptr;
	lda	_strtol_PARM_2
	ldx	(_strtol_PARM_2 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	_strtol_rptr_65536_57
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_strtol_rptr_65536_57 + 1)
	iny
	sta	[__DPTR],y
00119$:
;	../strtol.c: 80: if (!neg && u > LONG_MAX)
	lda	_strtol_neg_65536_57
	bne	00124$
	lda	#0xff
	sec
	sbc	*_strtol_sloc1_1_0
	lda	#0xff
	sbc	*(_strtol_sloc1_1_0 + 1)
	lda	#0xff
	sbc	*(_strtol_sloc1_1_0 + 2)
	lda	#0x7f
	sbc	*(_strtol_sloc1_1_0 + 3)
	bcs	00124$
;	../strtol.c: 82: errno = ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../strtol.c: 83: return (LONG_MAX);
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	ldy	#0x7f
	sty	*___SDCC_m6502_ret3
	rts
00124$:
;	../strtol.c: 85: else if (neg && u > -LONG_MIN)
	lda	_strtol_neg_65536_57
	beq	00125$
	lda	#0x00
	sec
	sbc	*_strtol_sloc1_1_0
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 1)
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 2)
	lda	#0x80
	sbc	*(_strtol_sloc1_1_0 + 3)
	bcs	00125$
;	../strtol.c: 87: errno = ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../strtol.c: 88: return (LONG_MIN);
	txa
	tax
	sta	*___SDCC_m6502_ret2
	ldy	#0x80
	sty	*___SDCC_m6502_ret3
	rts
00125$:
;	../strtol.c: 91: return (neg ? -u : u);
	lda	_strtol_neg_65536_57
	beq	00137$
	lda	#0x00
	sec
	sbc	*_strtol_sloc1_1_0
	sta	*_strtol_sloc2_1_0
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 1)
	sta	*(_strtol_sloc2_1_0 + 1)
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 2)
	sta	*(_strtol_sloc2_1_0 + 2)
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 3)
	sta	*(_strtol_sloc2_1_0 + 3)
	jmp	00138$
00137$:
	lda	*_strtol_sloc1_1_0
	sta	*_strtol_sloc2_1_0
	lda	*(_strtol_sloc1_1_0 + 1)
	sta	*(_strtol_sloc2_1_0 + 1)
	lda	*(_strtol_sloc1_1_0 + 2)
	sta	*(_strtol_sloc2_1_0 + 2)
	lda	*(_strtol_sloc1_1_0 + 3)
	sta	*(_strtol_sloc2_1_0 + 3)
00138$:
	lda	*(_strtol_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_strtol_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_strtol_sloc2_1_0 + 1)
	lda	*_strtol_sloc2_1_0
;	../strtol.c: 92: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
