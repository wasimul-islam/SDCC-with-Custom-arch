;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strcspn
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strcspn_PARM_2
	.globl _strcspn
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strcspn_count_65536_27:
	.ds 2
_strcspn_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strcspn_PARM_2:
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
;Allocation info for local variables in function 'strcspn'
;------------------------------------------------------------
;count                     Allocated with name '_strcspn_count_65536_27'
;ch                        Allocated to registers x 
;sloc0                     Allocated with name '_strcspn_sloc0_1_0'
;control                   Allocated with name '_strcspn_PARM_2'
;string                    Allocated to registers 
;------------------------------------------------------------
;	../_strcspn.c: 31: size_t strcspn ( const char * string, const char * control )
;	-----------------------------------------
;	 function strcspn
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strcspn:
	sta	*_strcspn_sloc0_1_0
	stx	*(_strcspn_sloc0_1_0 + 1)
;	../_strcspn.c: 36: while (ch = *string) {
	ldx	#0x00
	stx	*_strcspn_count_65536_27
	stx	*(_strcspn_count_65536_27 + 1)
00104$:
	ldy	#0x00
	lda	[*_strcspn_sloc0_1_0],y
	tax
	cmp	#0x00
	beq	00106$
;	../_strcspn.c: 37: if (strchr(control,ch))
	stx	_strchr_PARM_2
	ldx	(_strcspn_PARM_2 + 1)
	lda	_strcspn_PARM_2
	jsr	_strchr
	cmp	#0x00
	bne	00123$
	cpx	#0x00
00123$:
	bne	00106$
;	../_strcspn.c: 40: count++;
	inc	*_strcspn_count_65536_27
	bne	00125$
	inc	*(_strcspn_count_65536_27 + 1)
00125$:
;	../_strcspn.c: 41: string++;
	inc	*_strcspn_sloc0_1_0
	bne	00104$
	inc	*(_strcspn_sloc0_1_0 + 1)
	jmp	00104$
00106$:
;	../_strcspn.c: 44: return count;
	ldx	*(_strcspn_count_65536_27 + 1)
	lda	*_strcspn_count_65536_27
;	../_strcspn.c: 45: }  
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
