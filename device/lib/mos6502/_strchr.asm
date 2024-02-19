;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strchr
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr_PARM_2
	.globl _strchr
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strchr_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strchr_PARM_2:
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
;Allocation info for local variables in function 'strchr'
;------------------------------------------------------------
;ch                        Allocated with name '_strchr_PARM_2'
;string                    Allocated to registers 
;sloc0                     Allocated with name '_strchr_sloc0_1_0'
;------------------------------------------------------------
;	../_strchr.c: 34: char * strchr ( const char * string, char ch )
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strchr:
	sta	*_strchr_sloc0_1_0
	stx	*(_strchr_sloc0_1_0 + 1)
;	../_strchr.c: 39: while (*string && *string != (char)ch)
00102$:
	ldy	#0x00
	lda	[*_strchr_sloc0_1_0],y
	beq	00104$
	cmp	_strchr_PARM_2
	beq	00104$
;	../_strchr.c: 40: string++;
	inc	*_strchr_sloc0_1_0
	bne	00102$
	inc	*(_strchr_sloc0_1_0 + 1)
	jmp	00102$
00104$:
;	../_strchr.c: 42: if (*string == (char)ch)
	ldy	#0x00
	lda	[*_strchr_sloc0_1_0],y
	cmp	_strchr_PARM_2
	bne	00106$
;	../_strchr.c: 43: return((char *)string);
	ldx	*(_strchr_sloc0_1_0 + 1)
	lda	*_strchr_sloc0_1_0
	rts
00106$:
;	../_strchr.c: 44: return ( NULL );
	lda	#0x00
	tax
;	../_strchr.c: 45: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
