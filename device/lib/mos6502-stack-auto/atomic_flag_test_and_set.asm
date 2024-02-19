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
;Allocation info for local variables in function 'atomic_flag_test_and_set'
;------------------------------------------------------------
;object                    Allocated to stack - sp +1
;t                         Allocated to registers y 
;------------------------------------------------------------
;	atomic_flag_test_and_set.c: 31: _Bool atomic_flag_test_and_set(volatile atomic_flag *object)
;	-----------------------------------------
;	 function atomic_flag_test_and_set
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_atomic_flag_test_and_set:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
;	atomic_flag_test_and_set.c: 34: t=object->flag;
	tsx
	lda	0x101,x
	sta	*(__TEMP+0)
	lda	0x102,x
	tax
	lda	*(__TEMP+0)
	stx	*(__TEMP+1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	atomic_flag_test_and_set.c: 35: object->flag=0;
	sty	*(__TEMP+0)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
;	atomic_flag_test_and_set.c: 36: return t^0x01;
	tya
	eor	#0x01
	cmp	#0x01
	lda	#0x00
	rol	a
;	atomic_flag_test_and_set.c: 37: }
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
