;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat_PARM_3
	.globl _strncat_PARM_2
	.globl _strncat
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncat_sloc0_1_0:
	.ds 2
_strncat_sloc1_1_0:
	.ds 2
_strncat_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strncat_PARM_2:
	.ds 2
_strncat_PARM_3:
	.ds 2
_strncat_front_65536_26:
	.ds 2
_strncat_start_65536_27:
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back                      Allocated with name '_strncat_PARM_2'
;count                     Allocated with name '_strncat_PARM_3'
;front                     Allocated with name '_strncat_front_65536_26'
;start                     Allocated with name '_strncat_start_65536_27'
;sloc0                     Allocated with name '_strncat_sloc0_1_0'
;sloc1                     Allocated with name '_strncat_sloc1_1_0'
;sloc2                     Allocated with name '_strncat_sloc2_1_0'
;------------------------------------------------------------
;	../_strncat.c: 31: char * strncat ( char * front, const char * back, size_t count )
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strncat:
;	../_strncat.c: 33: char *start = front;
	sta	_strncat_start_65536_27
	stx	(_strncat_start_65536_27 + 1)
;	../_strncat.c: 35: while (*front++);
	sta	*_strncat_sloc0_1_0
	stx	*(_strncat_sloc0_1_0 + 1)
00101$:
	ldy	#0x00
	lda	[*_strncat_sloc0_1_0],y
	inc	*_strncat_sloc0_1_0
	bne	00137$
	inc	*(_strncat_sloc0_1_0 + 1)
00137$:
	cmp	#0x00
	bne	00101$
;	../_strncat.c: 37: front--;
	lda	*_strncat_sloc0_1_0
	sec
	sbc	#0x01
	sta	_strncat_front_65536_26
	lda	*(_strncat_sloc0_1_0 + 1)
	sbc	#0x00
	sta	(_strncat_front_65536_26 + 1)
;	../_strncat.c: 39: while (count--)
	lda	_strncat_PARM_2
	sta	*_strncat_sloc0_1_0
	lda	(_strncat_PARM_2 + 1)
	sta	*(_strncat_sloc0_1_0 + 1)
	lda	_strncat_front_65536_26
	sta	*_strncat_sloc1_1_0
	lda	(_strncat_front_65536_26 + 1)
	sta	*(_strncat_sloc1_1_0 + 1)
	lda	_strncat_PARM_3
	sta	*_strncat_sloc2_1_0
	lda	(_strncat_PARM_3 + 1)
	sta	*(_strncat_sloc2_1_0 + 1)
00106$:
	lda	*_strncat_sloc2_1_0
	ldx	*(_strncat_sloc2_1_0 + 1)
	pha
	sec
	lda	*_strncat_sloc2_1_0
	sbc	#0x01
	sta	*_strncat_sloc2_1_0
	bcs	00139$
	dec	*(_strncat_sloc2_1_0 + 1)
00139$:
	pla
	bne	00140$
	cpx	#0x00
00140$:
	beq	00108$
;	../_strncat.c: 40: if (!(*front++ = *back++))
	ldy	#0x00
	lda	[*_strncat_sloc0_1_0],y
	tax
	inc	*_strncat_sloc0_1_0
	bne	00142$
	inc	*(_strncat_sloc0_1_0 + 1)
00142$:
	txa
	sta	[*_strncat_sloc1_1_0],y
	inc	*_strncat_sloc1_1_0
	bne	00143$
	inc	*(_strncat_sloc1_1_0 + 1)
00143$:
	lda	*_strncat_sloc1_1_0
	sta	_strncat_front_65536_26
	lda	*(_strncat_sloc1_1_0 + 1)
	sta	(_strncat_front_65536_26 + 1)
	cpx	#0x00
	bne	00106$
;	../_strncat.c: 41: return(start);
	ldx	(_strncat_start_65536_27 + 1)
	lda	_strncat_start_65536_27
	rts
00108$:
;	../_strncat.c: 43: *front = '\0';
	lda	_strncat_front_65536_26
	sta	*(__DPTR+0)
	lda	(_strncat_front_65536_26 + 1)
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
;	../_strncat.c: 44: return(start);
	ldx	(_strncat_start_65536_27 + 1)
	lda	_strncat_start_65536_27
;	../_strncat.c: 45: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
