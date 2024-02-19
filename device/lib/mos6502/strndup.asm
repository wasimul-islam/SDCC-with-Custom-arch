;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strndup
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl ___memcpy
	.globl _strlen
	.globl _strndup_PARM_2
	.globl _strndup
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strndup_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strndup_PARM_2:
	.ds 2
_strndup_s_65536_61:
	.ds 2
_strndup_l_65536_62:
	.ds 2
_strndup_r_65537_63:
	.ds 2
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
;Allocation info for local variables in function 'strndup'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strndup_sloc0_1_0'
;n                         Allocated with name '_strndup_PARM_2'
;s                         Allocated with name '_strndup_s_65536_61'
;l                         Allocated with name '_strndup_l_65536_62'
;r                         Allocated with name '_strndup_r_65537_63'
;------------------------------------------------------------
;	../strndup.c: 33: char *strndup (const char *s, size_t n)
;	-----------------------------------------
;	 function strndup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strndup:
	sta	_strndup_s_65536_61
;	../strndup.c: 35: size_t l = strlen (s);
	stx	(_strndup_s_65536_61 + 1)
	lda	_strndup_s_65536_61
	jsr	_strlen
	sta	_strndup_l_65536_62
	stx	(_strndup_l_65536_62 + 1)
;	../strndup.c: 36: if (l > n)
	lda	_strndup_PARM_2
	sec
	sbc	_strndup_l_65536_62
	lda	(_strndup_PARM_2 + 1)
	sbc	(_strndup_l_65536_62 + 1)
	bcs	00102$
;	../strndup.c: 37: l = n;
	lda	_strndup_PARM_2
	sta	_strndup_l_65536_62
	lda	(_strndup_PARM_2 + 1)
	sta	(_strndup_l_65536_62 + 1)
00102$:
;	../strndup.c: 38: char *r = malloc (l + 1);
	lda	_strndup_l_65536_62
	ldx	(_strndup_l_65536_62 + 1)
	clc
	adc	#0x01
	bcc	00116$
	inx
00116$:
	jsr	_malloc
	sta	_strndup_r_65537_63
	stx	(_strndup_r_65537_63 + 1)
;	../strndup.c: 39: if (r)
	lda	(_strndup_r_65537_63 + 1)
	ora	_strndup_r_65537_63
	beq	00104$
;	../strndup.c: 41: memcpy (r, s, l);
	lda	_strndup_r_65537_63
	ldx	(_strndup_r_65537_63 + 1)
	ldy	_strndup_s_65536_61
	sty	___memcpy_PARM_2
	ldy	(_strndup_s_65536_61 + 1)
	sty	(___memcpy_PARM_2 + 1)
	ldy	_strndup_l_65536_62
	sty	___memcpy_PARM_3
	ldy	(_strndup_l_65536_62 + 1)
	sty	(___memcpy_PARM_3 + 1)
	jsr	___memcpy
;	../strndup.c: 42: r[l] = 0;
	lda	_strndup_r_65537_63
	clc
	adc	_strndup_l_65536_62
	sta	*_strndup_sloc0_1_0
	lda	(_strndup_r_65537_63 + 1)
	adc	(_strndup_l_65536_62 + 1)
	sta	*(_strndup_sloc0_1_0 + 1)
	lda	#0x00
	tay
	sta	[*_strndup_sloc0_1_0],y
00104$:
;	../strndup.c: 44: return (r);
	ldx	(_strndup_r_65537_63 + 1)
	lda	_strndup_r_65537_63
;	../strndup.c: 45: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
