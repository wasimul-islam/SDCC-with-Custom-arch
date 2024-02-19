;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strspn_PARM_2
	.globl _strspn
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strspn_count_65536_27:
	.ds 2
_strspn_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strspn_PARM_2:
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
;Allocation info for local variables in function 'strspn'
;------------------------------------------------------------
;count                     Allocated with name '_strspn_count_65536_27'
;ch                        Allocated to registers x 
;sloc0                     Allocated with name '_strspn_sloc0_1_0'
;control                   Allocated with name '_strspn_PARM_2'
;string                    Allocated to registers 
;------------------------------------------------------------
;	../_strspn.c: 31: size_t strspn ( const char * string, const char * control )
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strspn:
	sta	*_strspn_sloc0_1_0
	stx	*(_strspn_sloc0_1_0 + 1)
;	../_strspn.c: 36: while (ch = *string) {
	ldx	#0x00
	stx	*_strspn_count_65536_27
	stx	*(_strspn_count_65536_27 + 1)
00104$:
	ldy	#0x00
	lda	[*_strspn_sloc0_1_0],y
	tax
	cmp	#0x00
	beq	00106$
;	../_strspn.c: 37: if ( strchr(control,ch) )
	stx	_strchr_PARM_2
	ldx	(_strspn_PARM_2 + 1)
	lda	_strspn_PARM_2
	jsr	_strchr
	cmp	#0x00
	bne	00123$
	cpx	#0x00
00123$:
	beq	00106$
;	../_strspn.c: 38: count++ ;
	inc	*_strspn_count_65536_27
	bne	00125$
	inc	*(_strspn_count_65536_27 + 1)
00125$:
;	../_strspn.c: 41: string++ ;
	inc	*_strspn_sloc0_1_0
	bne	00104$
	inc	*(_strspn_sloc0_1_0 + 1)
	jmp	00104$
00106$:
;	../_strspn.c: 44: return count ;
	ldx	*(_strspn_count_65536_27 + 1)
	lda	*_strspn_count_65536_27
;	../_strspn.c: 45: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
