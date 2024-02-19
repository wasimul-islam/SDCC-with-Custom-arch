;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strrchr
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr_PARM_2
	.globl _strrchr
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strrchr_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strrchr_PARM_2:
	.ds 1
_strrchr_start_65536_27:
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
;Allocation info for local variables in function 'strrchr'
;------------------------------------------------------------
;ch                        Allocated with name '_strrchr_PARM_2'
;string                    Allocated to registers a x 
;start                     Allocated with name '_strrchr_start_65536_27'
;sloc0                     Allocated with name '_strrchr_sloc0_1_0'
;------------------------------------------------------------
;	../_strrchr.c: 32: char * strrchr ( const char * string, char ch )
;	-----------------------------------------
;	 function strrchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strrchr:
;	../_strrchr.c: 37: const char * start = string;
	sta	_strrchr_start_65536_27
	stx	(_strrchr_start_65536_27 + 1)
;	../_strrchr.c: 39: while (*string++)                       /* find end of string */
	sta	*_strrchr_sloc0_1_0
	stx	*(_strrchr_sloc0_1_0 + 1)
00101$:
	ldy	#0x00
	lda	[*_strrchr_sloc0_1_0],y
	inc	*_strrchr_sloc0_1_0
	bne	00133$
	inc	*(_strrchr_sloc0_1_0 + 1)
00133$:
	cmp	#0x00
	bne	00101$
;	../_strrchr.c: 42: while (--string != start && *string != ch)
00105$:
	sec
	lda	*_strrchr_sloc0_1_0
	sbc	#0x01
	sta	*_strrchr_sloc0_1_0
	bcs	00135$
	dec	*(_strrchr_sloc0_1_0 + 1)
00135$:
	lda	*_strrchr_sloc0_1_0
	cmp	_strrchr_start_65536_27
	bne	00137$
	lda	*(_strrchr_sloc0_1_0 + 1)
	cmp	(_strrchr_start_65536_27 + 1)
	beq	00107$
00137$:
	ldy	#0x00
	lda	[*_strrchr_sloc0_1_0],y
	cmp	_strrchr_PARM_2
	bne	00105$
00107$:
;	../_strrchr.c: 45: if (*string == ch)                      /* char found ? */
	ldy	#0x00
	lda	[*_strrchr_sloc0_1_0],y
	cmp	_strrchr_PARM_2
	bne	00109$
;	../_strrchr.c: 46: return( (char *)string );
	ldx	*(_strrchr_sloc0_1_0 + 1)
	lda	*_strrchr_sloc0_1_0
	rts
00109$:
;	../_strrchr.c: 48: return (NULL) ;
	lda	#0x00
	tax
;	../_strrchr.c: 49: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
