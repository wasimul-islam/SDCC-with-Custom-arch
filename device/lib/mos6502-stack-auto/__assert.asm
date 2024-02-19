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
;functionname              Allocated to stack - sp +5
;filename                  Allocated to stack - sp +7
;linenumber                Allocated to stack - sp +9
;expression                Allocated to stack - sp +1
;------------------------------------------------------------
;	../__assert.c: 32: void __assert(const char *expression, const char *functionname, const char *filename, unsigned int linenumber)
;	-----------------------------------------
;	 function __assert
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
___assert:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
;	../__assert.c: 34: printf("Assert(%s) failed in function %s at line %u in file %s.\n",
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
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
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
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
