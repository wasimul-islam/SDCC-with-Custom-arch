;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atomic_flag_test_and_set
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atomic_flag_test_and_set
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_atomic_flag_test_and_set_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atomic_flag_test_and_set_object_65536_3:
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
;Allocation info for local variables in function 'atomic_flag_test_and_set'
;------------------------------------------------------------
;object                    Allocated with name '_atomic_flag_test_and_set_object_65536_3'
;t                         Allocated to registers x 
;sloc0                     Allocated with name '_atomic_flag_test_and_set_sloc0_1_0'
;------------------------------------------------------------
;	atomic_flag_test_and_set.c: 31: _Bool atomic_flag_test_and_set(volatile atomic_flag *object)
;	-----------------------------------------
;	 function atomic_flag_test_and_set
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atomic_flag_test_and_set:
;	atomic_flag_test_and_set.c: 34: t=object->flag;
	sta	_atomic_flag_test_and_set_object_65536_3
	stx	(_atomic_flag_test_and_set_object_65536_3 + 1)
	sta	*_atomic_flag_test_and_set_sloc0_1_0
	stx	*(_atomic_flag_test_and_set_sloc0_1_0 + 1)
	ldy	#0x00
	lda	[*_atomic_flag_test_and_set_sloc0_1_0],y
	tax
;	atomic_flag_test_and_set.c: 35: object->flag=0;
	tya
	sta	[*_atomic_flag_test_and_set_sloc0_1_0],y
;	atomic_flag_test_and_set.c: 36: return t^0x01;
	txa
	eor	#0x01
	cmp	#0x01
	tya
	rol	a
;	atomic_flag_test_and_set.c: 37: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
