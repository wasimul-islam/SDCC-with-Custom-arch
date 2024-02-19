;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strpbrk_PARM_2
	.globl _strpbrk
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strpbrk_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strpbrk_PARM_2:
	.ds 2
_strpbrk_string_65536_26:
	.ds 2
_strpbrk_ret_65536_27:
	.ds 2
_strpbrk_p_131072_28:
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;ch                        Allocated to registers x 
;sloc0                     Allocated with name '_strpbrk_sloc0_1_0'
;control                   Allocated with name '_strpbrk_PARM_2'
;string                    Allocated with name '_strpbrk_string_65536_26'
;ret                       Allocated with name '_strpbrk_ret_65536_27'
;p                         Allocated with name '_strpbrk_p_131072_28'
;------------------------------------------------------------
;	../_strpbrk.c: 31: char * strpbrk ( const char * string, const char * control )
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strpbrk:
	sta	_strpbrk_string_65536_26
	stx	(_strpbrk_string_65536_26 + 1)
;	../_strpbrk.c: 33: char *ret = NULL;
	ldx	#0x00
	stx	_strpbrk_ret_65536_27
	stx	(_strpbrk_ret_65536_27 + 1)
;	../_strpbrk.c: 36: while (ch = *control) {
	lda	_strpbrk_PARM_2
	sta	*_strpbrk_sloc0_1_0
	lda	(_strpbrk_PARM_2 + 1)
	sta	*(_strpbrk_sloc0_1_0 + 1)
00105$:
	ldy	#0x00
	lda	[*_strpbrk_sloc0_1_0],y
	tax
	cmp	#0x00
	beq	00107$
;	../_strpbrk.c: 37: char * p = strchr(string, ch);
	stx	_strchr_PARM_2
	ldx	(_strpbrk_string_65536_26 + 1)
	lda	_strpbrk_string_65536_26
	jsr	_strchr
	sta	_strpbrk_p_131072_28
	stx	(_strpbrk_p_131072_28 + 1)
;	../_strpbrk.c: 38: if (p != NULL && (ret == NULL || p < ret)) {
	lda	(_strpbrk_p_131072_28 + 1)
	ora	_strpbrk_p_131072_28
	beq	00102$
	lda	(_strpbrk_ret_65536_27 + 1)
	ora	_strpbrk_ret_65536_27
	beq	00101$
	lda	_strpbrk_p_131072_28
	sec
	sbc	_strpbrk_ret_65536_27
	lda	(_strpbrk_p_131072_28 + 1)
	sbc	(_strpbrk_ret_65536_27 + 1)
	bcs	00102$
00101$:
;	../_strpbrk.c: 39: ret = p;
	lda	_strpbrk_p_131072_28
	sta	_strpbrk_ret_65536_27
	lda	(_strpbrk_p_131072_28 + 1)
	sta	(_strpbrk_ret_65536_27 + 1)
00102$:
;	../_strpbrk.c: 41: control++;
	inc	*_strpbrk_sloc0_1_0
	bne	00105$
	inc	*(_strpbrk_sloc0_1_0 + 1)
	jmp	00105$
00107$:
;	../_strpbrk.c: 44: return (ret);
	ldx	(_strpbrk_ret_65536_27 + 1)
	lda	_strpbrk_ret_65536_27
;	../_strpbrk.c: 45: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
