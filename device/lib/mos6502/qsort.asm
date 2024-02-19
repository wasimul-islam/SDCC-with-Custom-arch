;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module qsort
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _qsort_PARM_4
	.globl _qsort_PARM_3
	.globl _qsort_PARM_2
	.globl _qsort
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_qsort_sloc0_1_0:
	.ds 2
_qsort_sloc1_1_0:
	.ds 2
_qsort_sloc2_1_0:
	.ds 2
_qsort_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_swap_sloc0_1_0:
	.ds 2
_swap_sloc1_1_0:
	.ds 2
_swap_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_swap_PARM_2:
	.ds 2
_swap_PARM_3:
	.ds 2
_qsort_PARM_2:
	.ds 2
_qsort_PARM_3:
	.ds 2
_qsort_PARM_4:
	.ds 2
_qsort_b_65536_41:
	.ds 2
_qsort_i_131072_42:
	.ds 2
_qsort_j_262144_44:
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;src                       Allocated with name '_swap_PARM_2'
;n                         Allocated with name '_swap_PARM_3'
;dst                       Allocated to registers a x 
;d                         Allocated to registers 
;s                         Allocated to registers 
;tmp                       Allocated to registers x 
;sloc0                     Allocated with name '_swap_sloc0_1_0'
;sloc1                     Allocated with name '_swap_sloc1_1_0'
;sloc2                     Allocated with name '_swap_sloc2_1_0'
;------------------------------------------------------------
;	../qsort.c: 33: static void swap(void *restrict dst, void *restrict src, size_t n)
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_swap:
;	../qsort.c: 35: unsigned char *restrict d = dst;
	sta	*_swap_sloc0_1_0
	stx	*(_swap_sloc0_1_0 + 1)
;	../qsort.c: 36: unsigned char *restrict s = src;
	lda	_swap_PARM_2
	sta	*_swap_sloc1_1_0
	lda	(_swap_PARM_2 + 1)
	sta	*(_swap_sloc1_1_0 + 1)
;	../qsort.c: 38: while(n--)
	lda	_swap_PARM_3
	sta	*_swap_sloc2_1_0
	lda	(_swap_PARM_3 + 1)
	sta	*(_swap_sloc2_1_0 + 1)
00101$:
	lda	*_swap_sloc2_1_0
	ldx	*(_swap_sloc2_1_0 + 1)
	pha
	sec
	lda	*_swap_sloc2_1_0
	sbc	#0x01
	sta	*_swap_sloc2_1_0
	bcs	00115$
	dec	*(_swap_sloc2_1_0 + 1)
00115$:
	pla
	bne	00116$
	cpx	#0x00
00116$:
	beq	00104$
;	../qsort.c: 40: unsigned char tmp = *d;
	ldy	#0x00
	lda	[*_swap_sloc0_1_0],y
	tax
;	../qsort.c: 41: *d = *s;
	lda	[*_swap_sloc1_1_0],y
	sta	[*_swap_sloc0_1_0],y
;	../qsort.c: 42: *s = tmp;
	txa
	sta	[*_swap_sloc1_1_0],y
;	../qsort.c: 43: d++;
	inc	*_swap_sloc0_1_0
	bne	00118$
	inc	*(_swap_sloc0_1_0 + 1)
00118$:
;	../qsort.c: 44: s++;
	inc	*_swap_sloc1_1_0
	bne	00101$
	inc	*(_swap_sloc1_1_0 + 1)
	jmp	00101$
00104$:
;	../qsort.c: 46: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'qsort'
;------------------------------------------------------------
;sloc0                     Allocated with name '_qsort_sloc0_1_0'
;sloc1                     Allocated with name '_qsort_sloc1_1_0'
;sloc2                     Allocated with name '_qsort_sloc2_1_0'
;sloc3                     Allocated with name '_qsort_sloc3_1_0'
;nmemb                     Allocated with name '_qsort_PARM_2'
;size                      Allocated with name '_qsort_PARM_3'
;compar                    Allocated with name '_qsort_PARM_4'
;base                      Allocated to registers a x 
;b                         Allocated with name '_qsort_b_65536_41'
;i                         Allocated with name '_qsort_i_131072_42'
;j                         Allocated with name '_qsort_j_262144_44'
;------------------------------------------------------------
;	../qsort.c: 48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_qsort:
;	../qsort.c: 50: unsigned char *b = base;
	sta	_qsort_b_65536_41
	stx	(_qsort_b_65536_41 + 1)
;	../qsort.c: 52: if(nmemb <= 1)
	sta	*(__TEMP+0)
	lda	#0x01
	sec
	sbc	_qsort_PARM_2
	lda	#0x00
	sbc	(_qsort_PARM_2 + 1)
	php
	lda	*(__TEMP+0)
	plp
	bcc	00102$
;	../qsort.c: 53: return;
	rts
00102$:
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	sta	_qsort_i_131072_42
	stx	(_qsort_i_131072_42 + 1)
	lda	_qsort_PARM_3
	sta	*_qsort_sloc0_1_0
	lda	(_qsort_PARM_3 + 1)
	sta	*(_qsort_sloc0_1_0 + 1)
	lda	*_qsort_sloc0_1_0
	sta	__mulint_PARM_2
	lda	*(_qsort_sloc0_1_0 + 1)
	sta	(__mulint_PARM_2 + 1)
	ldx	(_qsort_PARM_2 + 1)
	lda	_qsort_PARM_2
	jsr	__mulint
	clc
	adc	_qsort_b_65536_41
	sta	*_qsort_sloc1_1_0
	txa
	adc	(_qsort_b_65536_41 + 1)
	sta	*(_qsort_sloc1_1_0 + 1)
00110$:
	lda	_qsort_i_131072_42
	sec
	sbc	*_qsort_sloc1_1_0
	lda	(_qsort_i_131072_42 + 1)
	sbc	*(_qsort_sloc1_1_0 + 1)
	bcc	00139$
	rts
00139$:
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	lda	_qsort_i_131072_42
	sta	_qsort_j_262144_44
	lda	(_qsort_i_131072_42 + 1)
	sta	(_qsort_j_262144_44 + 1)
00107$:
	lda	_qsort_b_65536_41
	sec
	sbc	_qsort_j_262144_44
	lda	(_qsort_b_65536_41 + 1)
	sbc	(_qsort_j_262144_44 + 1)
	bcs	00111$
	lda	_qsort_j_262144_44
	sec
	sbc	*_qsort_sloc0_1_0
	sta	*_qsort_sloc2_1_0
	lda	(_qsort_j_262144_44 + 1)
	sbc	*(_qsort_sloc0_1_0 + 1)
	sta	*(_qsort_sloc2_1_0 + 1)
	lda	*_qsort_sloc2_1_0
	ldx	*(_qsort_sloc2_1_0 + 1)
	ldy	_qsort_j_262144_44
	sty	*_qsort_sloc3_1_0
	ldy	(_qsort_j_262144_44 + 1)
	sty	*(_qsort_sloc3_1_0 + 1)
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	lda	_qsort_PARM_4
	sta	*(__TEMP+0)
	lda	(_qsort_PARM_4 + 1)
	sta	*(__TEMP+1)
	ldx	*(_qsort_sloc3_1_0 + 1)
	lda	*_qsort_sloc3_1_0
	jsr	__sdcc_indirect_jsr
	sta	*(__TEMP+0)
	pla
	pla
	txa
	sec
	sbc	#0x00
	bvc	00142$
	bpl	00141$
	bmi	00111$
00142$:
	bpl	00111$
00141$:
;	../qsort.c: 58: swap(j, j - size, size);
	lda	_qsort_j_262144_44
	ldx	(_qsort_j_262144_44 + 1)
	ldy	*_qsort_sloc2_1_0
	sty	*_qsort_sloc3_1_0
	ldy	*(_qsort_sloc2_1_0 + 1)
	sty	*(_qsort_sloc3_1_0 + 1)
	ldy	*_qsort_sloc3_1_0
	sty	_swap_PARM_2
	ldy	*(_qsort_sloc3_1_0 + 1)
	sty	(_swap_PARM_2 + 1)
	ldy	*_qsort_sloc0_1_0
	sty	_swap_PARM_3
	ldy	*(_qsort_sloc0_1_0 + 1)
	sty	(_swap_PARM_3 + 1)
	jsr	_swap
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	lda	*_qsort_sloc2_1_0
	sta	_qsort_j_262144_44
	lda	*(_qsort_sloc2_1_0 + 1)
	sta	(_qsort_j_262144_44 + 1)
	jmp	00107$
00111$:
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	lda	_qsort_i_131072_42
	clc
	adc	*_qsort_sloc0_1_0
	sta	_qsort_i_131072_42
	lda	(_qsort_i_131072_42 + 1)
	adc	*(_qsort_sloc0_1_0 + 1)
	sta	(_qsort_i_131072_42 + 1)
	jmp	00110$
;	../qsort.c: 60: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
