;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strndup
	.optsdcc -mhc08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl ___memcpy
	.globl _strlen
	.globl _strndup_PARM_2
	.globl _strndup
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_strndup_PARM_2:
	.ds 2
_strndup_s_65536_61:
	.ds 2
_strndup_l_65536_62:
	.ds 2
_strndup_r_65537_63:
	.ds 2
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'strndup'
;------------------------------------------------------------
;n                         Allocated with name '_strndup_PARM_2'
;s                         Allocated with name '_strndup_s_65536_61'
;l                         Allocated with name '_strndup_l_65536_62'
;r                         Allocated with name '_strndup_r_65537_63'
;------------------------------------------------------------
;../strndup.c:33: char *strndup (const char *s, size_t n)
;	-----------------------------------------
;	 function strndup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strndup:
	sta	(_strndup_s_65536_61 + 1)
	stx	_strndup_s_65536_61
;../strndup.c:35: size_t l = strlen (s);
	lda	(_strndup_s_65536_61 + 1)
	ldx	_strndup_s_65536_61
	jsr	_strlen
	sta	(_strndup_l_65536_62 + 1)
	stx	_strndup_l_65536_62
;../strndup.c:36: if (l > n)
	lda	(_strndup_PARM_2 + 1)
	sub	(_strndup_l_65536_62 + 1)
	lda	_strndup_PARM_2
	sbc	_strndup_l_65536_62
	bcc	00102$
;../strndup.c:37: l = n;
	lda	_strndup_PARM_2
	sta	_strndup_l_65536_62
	lda	(_strndup_PARM_2 + 1)
	sta	(_strndup_l_65536_62 + 1)
00102$:
;../strndup.c:38: char *r = malloc (l + 1);
	lda	_strndup_l_65536_62
	psha
	pulh
	ldx	(_strndup_l_65536_62 + 1)
	aix	#1
	txa
	pshh
	pulx
	jsr	_malloc
	sta	(_strndup_r_65537_63 + 1)
	stx	_strndup_r_65537_63
;../strndup.c:39: if (r)
	lda	_strndup_r_65537_63
	ora	(_strndup_r_65537_63 + 1)
	beq	00104$
;../strndup.c:41: memcpy (r, s, l);
	lda	_strndup_r_65537_63
	psha
	pulh
	ldx	(_strndup_r_65537_63 + 1)
	lda	(_strndup_s_65536_61 + 1)
	sta	(___memcpy_PARM_2 + 1)
	lda	_strndup_s_65536_61
	sta	___memcpy_PARM_2
	lda	_strndup_l_65536_62
	sta	___memcpy_PARM_3
	lda	(_strndup_l_65536_62 + 1)
	sta	(___memcpy_PARM_3 + 1)
	txa
	pshh
	pulx
	jsr	___memcpy
;../strndup.c:42: r[l] = 0;
	lda	(_strndup_l_65536_62 + 1)
	add	(_strndup_r_65537_63 + 1)
	tax
	lda	_strndup_l_65536_62
	adc	_strndup_r_65537_63
	psha
	pulh
	clra
	sta	,x
00104$:
;../strndup.c:44: return (r);
	ldx	_strndup_r_65537_63
	lda	(_strndup_r_65537_63 + 1)
;../strndup.c:45: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
