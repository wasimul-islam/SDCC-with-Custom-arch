;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strcat
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat_PARM_2
	.globl _strcat
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strcat_sloc0_1_0:
	.ds 2
_strcat_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strcat_PARM_2:
	.ds 2
_strcat_dst_65536_26:
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
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;src                       Allocated with name '_strcat_PARM_2'
;dst                       Allocated with name '_strcat_dst_65536_26'
;cp                        Allocated to registers 
;sloc0                     Allocated with name '_strcat_sloc0_1_0'
;sloc1                     Allocated with name '_strcat_sloc1_1_0'
;------------------------------------------------------------
;	../_strcat.c: 31: char * strcat ( char * dst, const char * src )
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strcat:
;	../_strcat.c: 35: while( *cp )
	sta	_strcat_dst_65536_26
	stx	(_strcat_dst_65536_26 + 1)
	sta	*_strcat_sloc0_1_0
	stx	*(_strcat_sloc0_1_0 + 1)
00101$:
	ldy	#0x00
	lda	[*_strcat_sloc0_1_0],y
	beq	00111$
;	../_strcat.c: 36: cp++;                   /* find end of dst */
	inc	*_strcat_sloc0_1_0
	bne	00101$
	inc	*(_strcat_sloc0_1_0 + 1)
	jmp	00101$
;	../_strcat.c: 38: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
00111$:
	lda	_strcat_PARM_2
	sta	*_strcat_sloc1_1_0
	lda	(_strcat_PARM_2 + 1)
	sta	*(_strcat_sloc1_1_0 + 1)
00104$:
	ldy	#0x00
	lda	[*_strcat_sloc1_1_0],y
	tax
	inc	*_strcat_sloc1_1_0
	bne	00129$
	inc	*(_strcat_sloc1_1_0 + 1)
00129$:
	txa
	sta	[*_strcat_sloc0_1_0],y
	inc	*_strcat_sloc0_1_0
	bne	00130$
	inc	*(_strcat_sloc0_1_0 + 1)
00130$:
	cpx	#0x00
	bne	00104$
;	../_strcat.c: 40: return( dst );                  /* return dst */
	ldx	(_strcat_dst_65536_26 + 1)
	lda	_strcat_dst_65536_26
;	../_strcat.c: 41: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
