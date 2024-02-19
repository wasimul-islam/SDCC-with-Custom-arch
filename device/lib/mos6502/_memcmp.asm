;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcmp
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memcmp_sloc0_1_0:
	.ds 2
_memcmp_sloc1_1_0:
	.ds 2
_memcmp_sloc2_1_0:
	.ds 1
_memcmp_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_memcmp_PARM_2:
	.ds 2
_memcmp_PARM_3:
	.ds 2
_memcmp_buf1_65536_26:
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2                      Allocated with name '_memcmp_PARM_2'
;count                     Allocated with name '_memcmp_PARM_3'
;buf1                      Allocated with name '_memcmp_buf1_65536_26'
;sloc0                     Allocated with name '_memcmp_sloc0_1_0'
;sloc1                     Allocated with name '_memcmp_sloc1_1_0'
;sloc2                     Allocated with name '_memcmp_sloc2_1_0'
;sloc3                     Allocated with name '_memcmp_sloc3_1_0'
;------------------------------------------------------------
;	../_memcmp.c: 31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memcmp:
	sta	_memcmp_buf1_65536_26
	stx	(_memcmp_buf1_65536_26 + 1)
;	../_memcmp.c: 33: if (!count)
	lda	(_memcmp_PARM_3 + 1)
	ora	_memcmp_PARM_3
	bne	00112$
;	../_memcmp.c: 34: return(0);
	lda	#0x00
	tax
	rts
;	../_memcmp.c: 36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	lda	_memcmp_PARM_3
	sta	*_memcmp_sloc0_1_0
	lda	(_memcmp_PARM_3 + 1)
	sta	*(_memcmp_sloc0_1_0 + 1)
00104$:
	sec
	lda	*_memcmp_sloc0_1_0
	sbc	#0x01
	sta	*_memcmp_sloc0_1_0
	bcs	00127$
	dec	*(_memcmp_sloc0_1_0 + 1)
00127$:
	lda	*(_memcmp_sloc0_1_0 + 1)
	ora	*_memcmp_sloc0_1_0
	beq	00106$
	lda	_memcmp_buf1_65536_26
	sta	*_memcmp_sloc1_1_0
	lda	(_memcmp_buf1_65536_26 + 1)
	sta	*(_memcmp_sloc1_1_0 + 1)
	ldy	#0x00
	lda	[*_memcmp_sloc1_1_0],y
	sta	*_memcmp_sloc2_1_0
	lda	_memcmp_PARM_2
	sta	*_memcmp_sloc3_1_0
	lda	(_memcmp_PARM_2 + 1)
	sta	*(_memcmp_sloc3_1_0 + 1)
	lda	[*_memcmp_sloc3_1_0],y
	cmp	*_memcmp_sloc2_1_0
	bne	00106$
;	../_memcmp.c: 37: buf1 = (char *)buf1 + 1;
	lda	*_memcmp_sloc1_1_0
	ldx	*(_memcmp_sloc1_1_0 + 1)
	clc
	adc	#0x01
	bcc	00130$
	inx
00130$:
	sta	_memcmp_buf1_65536_26
	stx	(_memcmp_buf1_65536_26 + 1)
;	../_memcmp.c: 38: buf2 = (char *)buf2 + 1;
	lda	*_memcmp_sloc3_1_0
	ldx	*(_memcmp_sloc3_1_0 + 1)
	clc
	adc	#0x01
	bcc	00131$
	inx
00131$:
	sta	_memcmp_PARM_2
	stx	(_memcmp_PARM_2 + 1)
	jmp	00104$
00106$:
;	../_memcmp.c: 41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	lda	_memcmp_buf1_65536_26
	ldx	(_memcmp_buf1_65536_26 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_memcmp_sloc3_1_0
	sty	*(_memcmp_sloc3_1_0 + 1)
	lda	_memcmp_PARM_2
	ldx	(_memcmp_PARM_2 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	[__DPTR],y
	ldx	#0x00
	sta	*(__TEMP+0)
	lda	*_memcmp_sloc3_1_0
	sec
	sbc	*(__TEMP+0)
	pha
	lda	*(_memcmp_sloc3_1_0 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	tax
	pla
;	../_memcmp.c: 42: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
