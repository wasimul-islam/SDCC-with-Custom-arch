;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modschar
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modschar
	.globl __moduschar
	.globl __modsuchar
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__modschar_sloc0_1_0:
	.ds 2
__moduschar_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__modsuchar_y_65536_5:
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
;Allocation info for local variables in function '_modschar'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modschar_sloc0_1_0'
;y                         Allocated to registers x 
;x                         Allocated to registers a 
;------------------------------------------------------------
;	../_modschar.c: 31: _modschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _modschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modschar:
;	../_modschar.c: 33: return ((int)x % (int)y);
	sta	*__modschar_sloc0_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(__modschar_sloc0_1_0 + 1)
	txa
	sta	__modsint_PARM_2
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(__modsint_PARM_2 + 1)
	ldx	*(__modschar_sloc0_1_0 + 1)
	lda	*__modschar_sloc0_1_0
;	../_modschar.c: 34: }
	jmp	__modsint
;------------------------------------------------------------
;Allocation info for local variables in function '_moduschar'
;------------------------------------------------------------
;sloc0                     Allocated with name '__moduschar_sloc0_1_0'
;y                         Allocated to registers x 
;x                         Allocated to registers a 
;------------------------------------------------------------
;	../_modschar.c: 37: _moduschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _moduschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__moduschar:
;	../_modschar.c: 39: return ((int)((signed char)x) % (int)y);
	sta	*__moduschar_sloc0_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(__moduschar_sloc0_1_0 + 1)
	stx	__modsint_PARM_2
	ldy	#0x00
	sty	(__modsint_PARM_2 + 1)
	ldx	*(__moduschar_sloc0_1_0 + 1)
	lda	*__moduschar_sloc0_1_0
;	../_modschar.c: 40: }
	jmp	__modsint
;------------------------------------------------------------
;Allocation info for local variables in function '_modsuchar'
;------------------------------------------------------------
;y                         Allocated with name '__modsuchar_y_65536_5'
;x                         Allocated to registers a 
;------------------------------------------------------------
;	../_modschar.c: 43: _modsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _modsuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modsuchar:
	stx	__modsuchar_y_65536_5
;	../_modschar.c: 45: return ((int)((unsigned char)x) % (int)y);
	ldx	#0x00
	pha
	lda	__modsuchar_y_65536_5
	sta	__modsint_PARM_2
	asl	a
	txa
	adc	#0xff
	eor	#0xff
	sta	(__modsint_PARM_2 + 1)
	pla
;	../_modschar.c: 46: }
	jmp	__modsint
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
