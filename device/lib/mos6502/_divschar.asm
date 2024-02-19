;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divschar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divschar
	.globl __divuschar
	.globl __divsuchar
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__divschar_sloc0_1_0:
	.ds 2
__divuschar_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__divsuchar_y_65536_5:
	.ds 1
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
;Allocation info for local variables in function '_divschar'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divschar_sloc0_1_0'
;y                         Allocated to registers x 
;x                         Allocated to registers a 
;------------------------------------------------------------
;	../_divschar.c: 31: _divschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _divschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divschar:
;	../_divschar.c: 33: return ((int)x / (int)y);
	sta	*__divschar_sloc0_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(__divschar_sloc0_1_0 + 1)
	txa
	sta	__divsint_PARM_2
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(__divsint_PARM_2 + 1)
	ldx	*(__divschar_sloc0_1_0 + 1)
	lda	*__divschar_sloc0_1_0
;	../_divschar.c: 34: }
	jmp	__divsint
;------------------------------------------------------------
;Allocation info for local variables in function '_divuschar'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divuschar_sloc0_1_0'
;y                         Allocated to registers x 
;x                         Allocated to registers a 
;------------------------------------------------------------
;	../_divschar.c: 37: _divuschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _divuschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divuschar:
;	../_divschar.c: 39: return ((int)((signed char)x) / (int)y);
	sta	*__divuschar_sloc0_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(__divuschar_sloc0_1_0 + 1)
	stx	__divsint_PARM_2
	ldy	#0x00
	sty	(__divsint_PARM_2 + 1)
	ldx	*(__divuschar_sloc0_1_0 + 1)
	lda	*__divuschar_sloc0_1_0
;	../_divschar.c: 40: }
	jmp	__divsint
;------------------------------------------------------------
;Allocation info for local variables in function '_divsuchar'
;------------------------------------------------------------
;y                         Allocated with name '__divsuchar_y_65536_5'
;x                         Allocated to registers a 
;------------------------------------------------------------
;	../_divschar.c: 43: _divsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _divsuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divsuchar:
	stx	__divsuchar_y_65536_5
;	../_divschar.c: 45: return ((int)((unsigned char)x) / (int)y);
	ldx	#0x00
	pha
	lda	__divsuchar_y_65536_5
	sta	__divsint_PARM_2
	asl	a
	txa
	adc	#0xff
	eor	#0xff
	sta	(__divsint_PARM_2 + 1)
	pla
;	../_divschar.c: 46: }
	jmp	__divsint
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
