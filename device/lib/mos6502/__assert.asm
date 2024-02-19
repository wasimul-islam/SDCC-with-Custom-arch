;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __assert
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___assert
	.globl _printf
	.globl ___assert_PARM_4
	.globl ___assert_PARM_3
	.globl ___assert_PARM_2
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
___assert_PARM_2:
	.ds 2
___assert_PARM_3:
	.ds 2
___assert_PARM_4:
	.ds 2
___assert_expression_65536_46:
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
;Allocation info for local variables in function '__assert'
;------------------------------------------------------------
;functionname              Allocated with name '___assert_PARM_2'
;filename                  Allocated with name '___assert_PARM_3'
;linenumber                Allocated with name '___assert_PARM_4'
;expression                Allocated with name '___assert_expression_65536_46'
;------------------------------------------------------------
;	../__assert.c: 32: void __assert(const char *expression, const char *functionname, const char *filename, unsigned int linenumber)
;	-----------------------------------------
;	 function __assert
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___assert:
	sta	___assert_expression_65536_46
	stx	(___assert_expression_65536_46 + 1)
;	../__assert.c: 34: printf("Assert(%s) failed in function %s at line %u in file %s.\n",
	lda	(___assert_PARM_3 + 1)
	pha
	lda	___assert_PARM_3
	pha
	lda	(___assert_PARM_4 + 1)
	pha
	lda	___assert_PARM_4
	pha
	lda	(___assert_PARM_2 + 1)
	pha
	lda	___assert_PARM_2
	pha
	lda	(___assert_expression_65536_46 + 1)
	pha
	lda	___assert_expression_65536_46
	pha
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
	jsr	_printf
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
00103$:
	jmp	00103$
;	../__assert.c: 37: }
	rts
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "Assert(%s) failed in function %s at line %u in file %s."
	.db 0x0a
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
