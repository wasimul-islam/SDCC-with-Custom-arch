;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strlen
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strlen_i_65536_27:
	.ds 2
_strlen_sloc0_1_0:
	.ds 2
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
;Allocation info for local variables in function 'strlen'
;------------------------------------------------------------
;str                       Allocated to registers 
;i                         Allocated with name '_strlen_i_65536_27'
;sloc0                     Allocated with name '_strlen_sloc0_1_0'
;------------------------------------------------------------
;	../_strlen.c: 35: size_t strlen ( const char * str )
;	-----------------------------------------
;	 function strlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strlen:
	sta	*_strlen_sloc0_1_0
	stx	*(_strlen_sloc0_1_0 + 1)
;	../_strlen.c: 39: while (*str++)
	ldx	#0x00
	stx	*_strlen_i_65536_27
	stx	*(_strlen_i_65536_27 + 1)
00101$:
	ldy	#0x00
	lda	[*_strlen_sloc0_1_0],y
	inc	*_strlen_sloc0_1_0
	bne	00115$
	inc	*(_strlen_sloc0_1_0 + 1)
00115$:
	cmp	#0x00
	beq	00103$
;	../_strlen.c: 40: i++ ;
	inc	*_strlen_i_65536_27
	bne	00101$
	inc	*(_strlen_i_65536_27 + 1)
	jmp	00101$
00103$:
;	../_strlen.c: 42: return i;
	ldx	*(_strlen_i_65536_27 + 1)
	lda	*_strlen_i_65536_27
;	../_strlen.c: 43: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
