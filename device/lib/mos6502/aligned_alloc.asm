;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module aligned_alloc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl _aligned_alloc_PARM_2
	.globl _aligned_alloc
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
_aligned_alloc_PARM_2:
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
;Allocation info for local variables in function 'aligned_alloc'
;------------------------------------------------------------
;size                      Allocated with name '_aligned_alloc_PARM_2'
;alignment                 Allocated to registers 
;------------------------------------------------------------
;	./../../include/stdlib.h: 92: inline void *aligned_alloc(size_t alignment, size_t size)
;	-----------------------------------------
;	 function aligned_alloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_aligned_alloc:
;	./../../include/stdlib.h: 95: return malloc(size);
	ldx	(_aligned_alloc_PARM_2 + 1)
	lda	_aligned_alloc_PARM_2
;	./../../include/stdlib.h: 96: }
	jmp	_malloc
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
