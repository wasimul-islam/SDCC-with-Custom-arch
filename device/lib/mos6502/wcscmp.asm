;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module wcscmp
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wcscmp_PARM_2
	.globl _wcscmp
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wcscmp_sloc0_1_0:
	.ds 2
_wcscmp_sloc1_1_0:
	.ds 2
_wcscmp_sloc2_1_0:
	.ds 4
_wcscmp_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wcscmp_PARM_2:
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
;Allocation info for local variables in function 'wcscmp'
;------------------------------------------------------------
;s2                        Allocated with name '_wcscmp_PARM_2'
;s1                        Allocated to registers 
;sloc0                     Allocated with name '_wcscmp_sloc0_1_0'
;sloc1                     Allocated with name '_wcscmp_sloc1_1_0'
;sloc2                     Allocated with name '_wcscmp_sloc2_1_0'
;sloc3                     Allocated with name '_wcscmp_sloc3_1_0'
;------------------------------------------------------------
;	../wcscmp.c: 31: int wcscmp(const wchar_t *s1, const wchar_t *s2)
;	-----------------------------------------
;	 function wcscmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcscmp:
	sta	*_wcscmp_sloc0_1_0
	stx	*(_wcscmp_sloc0_1_0 + 1)
;	../wcscmp.c: 33: while(*s1 == *s2 && *s1)
	lda	_wcscmp_PARM_2
	sta	*_wcscmp_sloc1_1_0
	lda	(_wcscmp_PARM_2 + 1)
	sta	*(_wcscmp_sloc1_1_0 + 1)
00102$:
	ldy	#0x00
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*_wcscmp_sloc2_1_0
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 1)
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 2)
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 3)
	ldy	#0x00
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*_wcscmp_sloc3_1_0
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 1)
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 2)
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 3)
	lda	*_wcscmp_sloc2_1_0
	cmp	*_wcscmp_sloc3_1_0
	bne	00104$
	lda	*(_wcscmp_sloc2_1_0 + 1)
	cmp	*(_wcscmp_sloc3_1_0 + 1)
	bne	00104$
	lda	*(_wcscmp_sloc2_1_0 + 2)
	cmp	*(_wcscmp_sloc3_1_0 + 2)
	bne	00104$
	lda	*(_wcscmp_sloc2_1_0 + 3)
	cmp	*(_wcscmp_sloc3_1_0 + 3)
	bne	00104$
	lda	*(_wcscmp_sloc2_1_0 + 3)
	ora	*(_wcscmp_sloc2_1_0 + 2)
	ora	*(_wcscmp_sloc2_1_0 + 1)
	ora	*_wcscmp_sloc2_1_0
	beq	00104$
;	../wcscmp.c: 34: s1++, s2++;
	lda	*_wcscmp_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcscmp_sloc0_1_0
	bcc	00138$
	inc	*(_wcscmp_sloc0_1_0 + 1)
00138$:
	lda	*_wcscmp_sloc1_1_0
	clc
	adc	#0x04
	sta	*_wcscmp_sloc1_1_0
	bcc	00102$
	inc	*(_wcscmp_sloc1_1_0 + 1)
	jmp	00102$
00104$:
;	../wcscmp.c: 36: if(*s1 < *s2)
	ldy	#0x00
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*_wcscmp_sloc3_1_0
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 1)
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 2)
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 3)
	ldy	#0x00
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*_wcscmp_sloc2_1_0
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 1)
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 2)
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 3)
	lda	*_wcscmp_sloc3_1_0
	sec
	sbc	*_wcscmp_sloc2_1_0
	lda	*(_wcscmp_sloc3_1_0 + 1)
	sbc	*(_wcscmp_sloc2_1_0 + 1)
	lda	*(_wcscmp_sloc3_1_0 + 2)
	sbc	*(_wcscmp_sloc2_1_0 + 2)
	lda	*(_wcscmp_sloc3_1_0 + 3)
	sbc	*(_wcscmp_sloc2_1_0 + 3)
	bcs	00106$
;	../wcscmp.c: 37: return(-1);
	lda	#0xff
	tax
	rts
00106$:
;	../wcscmp.c: 38: if(*s1 > *s2)
	lda	*_wcscmp_sloc2_1_0
	sec
	sbc	*_wcscmp_sloc3_1_0
	lda	*(_wcscmp_sloc2_1_0 + 1)
	sbc	*(_wcscmp_sloc3_1_0 + 1)
	lda	*(_wcscmp_sloc2_1_0 + 2)
	sbc	*(_wcscmp_sloc3_1_0 + 2)
	lda	*(_wcscmp_sloc2_1_0 + 3)
	sbc	*(_wcscmp_sloc3_1_0 + 3)
	bcs	00108$
;	../wcscmp.c: 39: return(1);
	lda	#0x01
	ldx	#0x00
	rts
00108$:
;	../wcscmp.c: 40: return(0);
	lda	#0x00
	tax
;	../wcscmp.c: 41: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
