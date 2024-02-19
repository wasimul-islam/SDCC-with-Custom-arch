;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strdup
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl _strlen
	.globl _strcpy
	.globl _strdup
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
_strdup_s_65536_61:
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
;Allocation info for local variables in function 'strdup'
;------------------------------------------------------------
;s                         Allocated with name '_strdup_s_65536_61'
;r                         Allocated to registers a x 
;------------------------------------------------------------
;	../strdup.c: 33: char *strdup (const char *s)
;	-----------------------------------------
;	 function strdup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strdup:
	sta	_strdup_s_65536_61
;	../strdup.c: 35: char *r = malloc(strlen(s) + 1);
	stx	(_strdup_s_65536_61 + 1)
	lda	_strdup_s_65536_61
	jsr	_strlen
	clc
	adc	#0x01
	bcc	00109$
	inx
00109$:
	jsr	_malloc
;	../strdup.c: 36: if (r)
	cmp	#0x00
	bne	00110$
	cpx	#0x00
00110$:
	beq	00102$
;	../strdup.c: 37: strcpy(r, s);
	ldy	_strdup_s_65536_61
	sty	_strcpy_PARM_2
	ldy	(_strdup_s_65536_61 + 1)
	sty	(_strcpy_PARM_2 + 1)
	pha
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	jsr	_strcpy
	pla
	tax
	pla
00102$:
;	../strdup.c: 38: return (r);
;	../strdup.c: 39: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
