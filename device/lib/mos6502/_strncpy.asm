;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy_PARM_3
	.globl _strncpy_PARM_2
	.globl _strncpy
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncpy_sloc0_1_0:
	.ds 2
_strncpy_sloc1_1_0:
	.ds 2
_strncpy_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strncpy_PARM_2:
	.ds 2
_strncpy_PARM_3:
	.ds 2
_strncpy_d1_65536_27:
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
;Allocation info for local variables in function 'strncpy'
;------------------------------------------------------------
;s                         Allocated with name '_strncpy_PARM_2'
;n                         Allocated with name '_strncpy_PARM_3'
;d                         Allocated to registers a x 
;d1                        Allocated with name '_strncpy_d1_65536_27'
;sloc0                     Allocated with name '_strncpy_sloc0_1_0'
;sloc1                     Allocated with name '_strncpy_sloc1_1_0'
;sloc2                     Allocated with name '_strncpy_sloc2_1_0'
;------------------------------------------------------------
;	../_strncpy.c: 33: char *strncpy ( char * d, const char * s, size_t n )
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strncpy:
;	../_strncpy.c: 35: register char * d1 =  d;
	sta	_strncpy_d1_65536_27
	stx	(_strncpy_d1_65536_27 + 1)
;	../_strncpy.c: 37: while ( n && *s )
	ldy	_strncpy_PARM_3
	sty	*_strncpy_sloc0_1_0
	ldy	(_strncpy_PARM_3 + 1)
	sty	*(_strncpy_sloc0_1_0 + 1)
	ldy	_strncpy_PARM_2
	sty	*_strncpy_sloc1_1_0
	ldy	(_strncpy_PARM_2 + 1)
	sty	*(_strncpy_sloc1_1_0 + 1)
	sta	*_strncpy_sloc2_1_0
	stx	*(_strncpy_sloc2_1_0 + 1)
00102$:
	lda	*(_strncpy_sloc0_1_0 + 1)
	ora	*_strncpy_sloc0_1_0
	beq	00114$
	ldy	#0x00
	lda	[*_strncpy_sloc1_1_0],y
	tax
	beq	00114$
;	../_strncpy.c: 39: n-- ;
	sec
	lda	*_strncpy_sloc0_1_0
	sbc	#0x01
	sta	*_strncpy_sloc0_1_0
	bcs	00134$
	dec	*(_strncpy_sloc0_1_0 + 1)
00134$:
;	../_strncpy.c: 40: *d++ = *s++ ;
	txa
	inc	*_strncpy_sloc1_1_0
	bne	00135$
	inc	*(_strncpy_sloc1_1_0 + 1)
00135$:
	sta	[*_strncpy_sloc2_1_0],y
	inc	*_strncpy_sloc2_1_0
	bne	00102$
	inc	*(_strncpy_sloc2_1_0 + 1)
	jmp	00102$
;	../_strncpy.c: 42: while ( n-- )
00114$:
	lda	*_strncpy_sloc0_1_0
	ldx	*(_strncpy_sloc0_1_0 + 1)
00105$:
	sta	*_strncpy_sloc1_1_0
	stx	*(_strncpy_sloc1_1_0 + 1)
	sec
	sbc	#0x01
	bcs	00137$
	dex
00137$:
	sta	*(__TEMP+0)
	lda	*(_strncpy_sloc1_1_0 + 1)
	ora	*_strncpy_sloc1_1_0
	php
	lda	*(__TEMP+0)
	plp
	beq	00107$
;	../_strncpy.c: 44: *d++ = '\0' ;
	sta	*(__TEMP+0)
	lda	#0x00
	tay
	sta	[*_strncpy_sloc2_1_0],y
	lda	*(__TEMP+0)
	inc	*_strncpy_sloc2_1_0
	bne	00105$
	inc	*(_strncpy_sloc2_1_0 + 1)
	jmp	00105$
00107$:
;	../_strncpy.c: 46: return d1;
	ldx	(_strncpy_d1_65536_27 + 1)
	lda	_strncpy_d1_65536_27
;	../_strncpy.c: 47: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
