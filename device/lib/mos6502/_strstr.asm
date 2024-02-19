;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr_PARM_2
	.globl _strstr
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strstr_sloc0_1_0:
	.ds 2
_strstr_sloc1_1_0:
	.ds 2
_strstr_sloc2_1_0:
	.ds 2
_strstr_sloc3_1_0:
	.ds 2
_strstr_sloc4_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strstr_PARM_2:
	.ds 2
_strstr_cp_65536_27:
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;str2                      Allocated with name '_strstr_PARM_2'
;str1                      Allocated to registers a x 
;cp                        Allocated with name '_strstr_cp_65536_27'
;s1                        Allocated to registers 
;s2                        Allocated to registers 
;sloc0                     Allocated with name '_strstr_sloc0_1_0'
;sloc1                     Allocated with name '_strstr_sloc1_1_0'
;sloc2                     Allocated with name '_strstr_sloc2_1_0'
;sloc3                     Allocated with name '_strstr_sloc3_1_0'
;sloc4                     Allocated with name '_strstr_sloc4_1_0'
;------------------------------------------------------------
;	../_strstr.c: 31: char *strstr ( const char *str1, const char *str2 )
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strstr:
;	../_strstr.c: 33: const char *cp = str1;
	sta	_strstr_cp_65536_27
	stx	(_strstr_cp_65536_27 + 1)
;	../_strstr.c: 37: if (!*str2)
	ldy	_strstr_PARM_2
	sty	*_strstr_sloc0_1_0
	ldy	(_strstr_PARM_2 + 1)
	sty	*(_strstr_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	ldy	#0x00
	lda	[*_strstr_sloc0_1_0],y
	tay
	lda	*(__TEMP+0)
	cpy	#0x00
	bne	00122$
;	../_strstr.c: 38: return ((char*)str1);
	rts
;	../_strstr.c: 40: while (*cp)
00122$:
	sta	*_strstr_sloc1_1_0
	stx	*(_strstr_sloc1_1_0 + 1)
00110$:
	ldy	#0x00
	lda	[*_strstr_sloc1_1_0],y
	beq	00112$
;	../_strstr.c: 43: s2 = str2;
	lda	*_strstr_sloc0_1_0
	sta	*_strstr_sloc2_1_0
	lda	*(_strstr_sloc0_1_0 + 1)
	sta	*(_strstr_sloc2_1_0 + 1)
;	../_strstr.c: 45: while (*s1 && *s2 && !(*s1-*s2))
	lda	*_strstr_sloc1_1_0
	sta	*_strstr_sloc3_1_0
	lda	*(_strstr_sloc1_1_0 + 1)
	sta	*(_strstr_sloc3_1_0 + 1)
00105$:
	ldy	#0x00
	lda	[*_strstr_sloc3_1_0],y
	tax
	beq	00107$
	lda	[*_strstr_sloc2_1_0],y
	beq	00107$
	stx	*_strstr_sloc4_1_0
	sty	*(_strstr_sloc4_1_0 + 1)
	ldx	#0x00
	sta	*(__TEMP+0)
	lda	*_strstr_sloc4_1_0
	sec
	sbc	*(__TEMP+0)
	sta	*_strstr_sloc4_1_0
	lda	*(_strstr_sloc4_1_0 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	sta	*(_strstr_sloc4_1_0 + 1)
	ora	*_strstr_sloc4_1_0
	bne	00107$
;	../_strstr.c: 46: s1++, s2++;
	inc	*_strstr_sloc3_1_0
	bne	00153$
	inc	*(_strstr_sloc3_1_0 + 1)
00153$:
	inc	*_strstr_sloc2_1_0
	bne	00105$
	inc	*(_strstr_sloc2_1_0 + 1)
	jmp	00105$
00107$:
;	../_strstr.c: 48: if (!*s2)
	ldy	#0x00
	lda	[*_strstr_sloc2_1_0],y
	bne	00109$
;	../_strstr.c: 49: return ((char*)cp);
	ldx	(_strstr_cp_65536_27 + 1)
	lda	_strstr_cp_65536_27
	rts
00109$:
;	../_strstr.c: 51: cp++;
	inc	*_strstr_sloc1_1_0
	bne	00156$
	inc	*(_strstr_sloc1_1_0 + 1)
00156$:
	lda	*_strstr_sloc1_1_0
	sta	_strstr_cp_65536_27
	lda	*(_strstr_sloc1_1_0 + 1)
	sta	(_strstr_cp_65536_27 + 1)
	jmp	00110$
00112$:
;	../_strstr.c: 54: return (NULL) ;
	lda	#0x00
	tax
;	../_strstr.c: 55: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
