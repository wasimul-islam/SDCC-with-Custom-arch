;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module bsearch
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bsearch_PARM_5
	.globl _bsearch_PARM_4
	.globl _bsearch_PARM_3
	.globl _bsearch_PARM_2
	.globl _bsearch
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_bsearch_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_bsearch_PARM_2:
	.ds 2
_bsearch_PARM_3:
	.ds 2
_bsearch_PARM_4:
	.ds 2
_bsearch_PARM_5:
	.ds 2
_bsearch_key_65536_36:
	.ds 2
_bsearch_left_131072_39:
	.ds 2
_bsearch_middle_196608_40:
	.ds 2
_bsearch_c_196608_40:
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
;Allocation info for local variables in function 'bsearch'
;------------------------------------------------------------
;sloc0                     Allocated with name '_bsearch_sloc0_1_0'
;base                      Allocated with name '_bsearch_PARM_2'
;nmemb                     Allocated with name '_bsearch_PARM_3'
;size                      Allocated with name '_bsearch_PARM_4'
;compar                    Allocated with name '_bsearch_PARM_5'
;key                       Allocated with name '_bsearch_key_65536_36'
;left                      Allocated with name '_bsearch_left_131072_39'
;middle                    Allocated with name '_bsearch_middle_196608_40'
;c                         Allocated with name '_bsearch_c_196608_40'
;------------------------------------------------------------
;	../bsearch.c: 31: void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function bsearch
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_bsearch:
	sta	_bsearch_key_65536_36
	stx	(_bsearch_key_65536_36 + 1)
;	../bsearch.c: 33: for(const char *left = base; nmemb;)
	lda	_bsearch_PARM_2
	sta	_bsearch_left_131072_39
	lda	(_bsearch_PARM_2 + 1)
	sta	(_bsearch_left_131072_39 + 1)
00109$:
	lda	(_bsearch_PARM_3 + 1)
	ora	_bsearch_PARM_3
	bne	00129$
	jmp	00107$
00129$:
;	../bsearch.c: 35: const char *middle = left + nmemb / 2 * size;
	lda	_bsearch_PARM_3
	ldx	(_bsearch_PARM_3 + 1)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*_bsearch_sloc0_1_0
	stx	*(_bsearch_sloc0_1_0 + 1)
	lda	_bsearch_PARM_4
	sta	__mulint_PARM_2
	lda	(_bsearch_PARM_4 + 1)
	sta	(__mulint_PARM_2 + 1)
	ldx	*(_bsearch_sloc0_1_0 + 1)
	lda	*_bsearch_sloc0_1_0
	jsr	__mulint
	clc
	adc	_bsearch_left_131072_39
	sta	_bsearch_middle_196608_40
	txa
	adc	(_bsearch_left_131072_39 + 1)
	sta	(_bsearch_middle_196608_40 + 1)
;	../bsearch.c: 36: int c = (*compar)(key, middle);
	lda	_bsearch_middle_196608_40
	ldx	(_bsearch_middle_196608_40 + 1)
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	lda	_bsearch_PARM_5
	sta	*(__TEMP+0)
	lda	(_bsearch_PARM_5 + 1)
	sta	*(__TEMP+1)
	ldx	(_bsearch_key_65536_36 + 1)
	lda	_bsearch_key_65536_36
	jsr	__sdcc_indirect_jsr
	sta	_bsearch_c_196608_40
	stx	(_bsearch_c_196608_40 + 1)
	sta	*(__TEMP+0)
	pla
	pla
;	../bsearch.c: 38: if(c < 0)
	lda	(_bsearch_c_196608_40 + 1)
	sec
	sbc	#0x00
	bvc	00131$
	bpl	00130$
	bmi	00105$
00131$:
	bpl	00105$
00130$:
;	../bsearch.c: 39: nmemb = nmemb / 2;	
	lda	*_bsearch_sloc0_1_0
	sta	_bsearch_PARM_3
	lda	*(_bsearch_sloc0_1_0 + 1)
	sta	(_bsearch_PARM_3 + 1)
	jmp	00109$
00105$:
;	../bsearch.c: 40: else if(c > 0)
	lda	#0x00
	sec
	sbc	_bsearch_c_196608_40
	lda	#0x00
	sbc	(_bsearch_c_196608_40 + 1)
	bvc	00134$
	bpl	00133$
	bmi	00102$
00134$:
	bpl	00102$
00133$:
;	../bsearch.c: 42: left = middle + size;
	lda	_bsearch_middle_196608_40
	clc
	adc	_bsearch_PARM_4
	sta	_bsearch_left_131072_39
	lda	(_bsearch_middle_196608_40 + 1)
	adc	(_bsearch_PARM_4 + 1)
	sta	(_bsearch_left_131072_39 + 1)
;	../bsearch.c: 43: nmemb = (nmemb - 1) / 2;
	lda	_bsearch_PARM_3
	ldx	(_bsearch_PARM_3 + 1)
	sec
	sbc	#0x01
	bcs	00136$
	dex
00136$:
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	_bsearch_PARM_3
	stx	(_bsearch_PARM_3 + 1)
	jmp	00109$
00102$:
;	../bsearch.c: 46: return(middle);
	lda	_bsearch_middle_196608_40
	ldx	(_bsearch_middle_196608_40 + 1)
	rts
00107$:
;	../bsearch.c: 49: return(0);
	lda	#0x00
	tax
;	../bsearch.c: 50: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
