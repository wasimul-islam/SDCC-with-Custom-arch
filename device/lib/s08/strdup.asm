;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module strdup
	.optsdcc -ms08
	
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
	.globl _strlen
	.globl _strcpy
	.globl _strdup
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
_strdup_s_65536_61:
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
;Allocation info for local variables in function 'strdup'
;------------------------------------------------------------
;s                         Allocated with name '_strdup_s_65536_61'
;r                         Allocated to registers a x 
;------------------------------------------------------------
;../strdup.c:33: char *strdup (const char *s)
;	-----------------------------------------
;	 function strdup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strdup:
	sta	(_strdup_s_65536_61 + 1)
	stx	_strdup_s_65536_61
;../strdup.c:35: char *r = malloc(strlen(s) + 1);
	lda	(_strdup_s_65536_61 + 1)
	ldx	_strdup_s_65536_61
	jsr	_strlen
	inca
	bne	00110$
	incx
00110$:
	jsr	_malloc
;../strdup.c:36: if (r)
	tsta
	bne	00111$
	tstx
00111$:
	beq	00102$
;../strdup.c:37: strcpy(r, s);
	psha
	lda	_strdup_s_65536_61
	sta	_strcpy_PARM_2
	lda	(_strdup_s_65536_61 + 1)
	sta	(_strcpy_PARM_2 + 1)
	pula
	psha
	pshx
	jsr	_strcpy
	pulx
	pula
00102$:
;../strdup.c:38: return (r);
;../strdup.c:39: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
