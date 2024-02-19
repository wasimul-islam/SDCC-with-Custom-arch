;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ispunct
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalnum
	.globl _isspace
	.globl _isprint
	.globl _ispunct
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
_ispunct_c_65536_21:
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
;Allocation info for local variables in function 'ispunct'
;------------------------------------------------------------
;c                         Allocated with name '_ispunct_c_65536_21'
;------------------------------------------------------------
;	../ispunct.c: 33: int ispunct (int c)
;	-----------------------------------------
;	 function ispunct
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ispunct:
	sta	_ispunct_c_65536_21
;	../ispunct.c: 35: return (isprint (c) && !isspace (c) && !isalnum (c));
	stx	(_ispunct_c_65536_21 + 1)
	lda	_ispunct_c_65536_21
	jsr	_isprint
	cmp	#0x00
	bne	00116$
	cpx	#0x00
00116$:
	beq	00103$
	ldx	(_ispunct_c_65536_21 + 1)
	lda	_ispunct_c_65536_21
	jsr	_isspace
	cmp	#0x00
	bne	00118$
	cpx	#0x00
00118$:
	bne	00103$
	ldx	(_ispunct_c_65536_21 + 1)
	lda	_ispunct_c_65536_21
	jsr	_isalnum
	cmp	#0x00
	bne	00120$
	cpx	#0x00
00120$:
	beq	00104$
00103$:
	lda	#0x00
	jmp	00105$
00104$:
	lda	#0x01
00105$:
	ldx	#0x00
;	../ispunct.c: 36: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
