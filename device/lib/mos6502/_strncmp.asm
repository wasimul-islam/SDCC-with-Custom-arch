;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp_PARM_3
	.globl _strncmp_PARM_2
	.globl _strncmp
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncmp_sloc0_1_0:
	.ds 2
_strncmp_sloc1_1_0:
	.ds 2
_strncmp_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strncmp_PARM_2:
	.ds 2
_strncmp_PARM_3:
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last                      Allocated with name '_strncmp_PARM_2'
;count                     Allocated with name '_strncmp_PARM_3'
;first                     Allocated to registers a x 
;sloc0                     Allocated with name '_strncmp_sloc0_1_0'
;sloc1                     Allocated with name '_strncmp_sloc1_1_0'
;sloc2                     Allocated with name '_strncmp_sloc2_1_0'
;------------------------------------------------------------
;	../_strncmp.c: 31: int strncmp ( const char * first, const char * last, size_t count )
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strncmp:
;	../_strncmp.c: 33: if (!count)
	sta	*(__TEMP+0)
	lda	(_strncmp_PARM_3 + 1)
	ora	_strncmp_PARM_3
	php
	lda	*(__TEMP+0)
	plp
	bne	00114$
;	../_strncmp.c: 34: return(0);
	lda	#0x00
	tax
	rts
;	../_strncmp.c: 36: while (--count && *first && *first == *last) {
00114$:
	sta	*_strncmp_sloc0_1_0
	stx	*(_strncmp_sloc0_1_0 + 1)
	lda	_strncmp_PARM_2
	sta	*_strncmp_sloc1_1_0
	lda	(_strncmp_PARM_2 + 1)
	sta	*(_strncmp_sloc1_1_0 + 1)
	lda	_strncmp_PARM_3
	sta	*_strncmp_sloc2_1_0
	lda	(_strncmp_PARM_3 + 1)
	sta	*(_strncmp_sloc2_1_0 + 1)
00105$:
	sec
	lda	*_strncmp_sloc2_1_0
	sbc	#0x01
	sta	*_strncmp_sloc2_1_0
	bcs	00132$
	dec	*(_strncmp_sloc2_1_0 + 1)
00132$:
	lda	*(_strncmp_sloc2_1_0 + 1)
	ora	*_strncmp_sloc2_1_0
	beq	00107$
	ldy	#0x00
	lda	[*_strncmp_sloc0_1_0],y
	tax
	beq	00107$
	lda	[*_strncmp_sloc1_1_0],y
	stx	*(__TEMP+0)
	cmp	*(__TEMP+0)
	bne	00107$
;	../_strncmp.c: 37: first++;
	inc	*_strncmp_sloc0_1_0
	bne	00136$
	inc	*(_strncmp_sloc0_1_0 + 1)
00136$:
;	../_strncmp.c: 38: last++;
	inc	*_strncmp_sloc1_1_0
	bne	00105$
	inc	*(_strncmp_sloc1_1_0 + 1)
	jmp	00105$
00107$:
;	../_strncmp.c: 41: return( *first - *last );
	ldy	#0x00
	lda	[*_strncmp_sloc0_1_0],y
	sta	*_strncmp_sloc2_1_0
	sty	*(_strncmp_sloc2_1_0 + 1)
	lda	[*_strncmp_sloc1_1_0],y
	ldx	#0x00
	sta	*(__TEMP+0)
	lda	*_strncmp_sloc2_1_0
	sec
	sbc	*(__TEMP+0)
	pha
	lda	*(_strncmp_sloc2_1_0 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	tax
	pla
;	../_strncmp.c: 42: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
