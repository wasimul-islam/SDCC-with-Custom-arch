;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module free
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _free
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_free_sloc0_1_0:
	.ds 2
_free_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_free_ptr_65536_37:
	.ds 2
_free_h_65536_38:
	.ds 2
_free_next_free_65536_38:
	.ds 2
_free_prev_free_65536_38:
	.ds 2
_free_f_65536_38:
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
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;ptr                       Allocated with name '_free_ptr_65536_37'
;h                         Allocated with name '_free_h_65536_38'
;next_free                 Allocated with name '_free_next_free_65536_38'
;prev_free                 Allocated with name '_free_prev_free_65536_38'
;f                         Allocated with name '_free_f_65536_38'
;sloc0                     Allocated with name '_free_sloc0_1_0'
;sloc1                     Allocated with name '_free_sloc1_1_0'
;------------------------------------------------------------
;	../free.c: 50: void free(void *ptr)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_free:
	sta	_free_ptr_65536_37
	stx	(_free_ptr_65536_37 + 1)
;	../free.c: 55: if(!ptr)
	lda	(_free_ptr_65536_37 + 1)
	ora	_free_ptr_65536_37
	bne	00102$
;	../free.c: 56: return;
	rts
00102$:
;	../free.c: 58: prev_free = 0;
	ldx	#0x00
	stx	_free_prev_free_65536_38
	stx	(_free_prev_free_65536_38 + 1)
;	../free.c: 59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	lda	___sdcc_heap_free
	ldx	(___sdcc_heap_free + 1)
	ldy	#___sdcc_heap_free
	sty	_free_f_65536_38
	ldy	#>___sdcc_heap_free
	sty	(_free_f_65536_38 + 1)
00111$:
	cmp	#0x00
	bne	00151$
	cpx	#0x00
00151$:
	beq	00103$
	ldy	_free_ptr_65536_37
	sty	*_free_sloc0_1_0
	ldy	(_free_ptr_65536_37 + 1)
	sty	*(_free_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	sec
	sbc	*_free_sloc0_1_0
	txa
	sbc	*(_free_sloc0_1_0 + 1)
	php
	lda	*(__TEMP+0)
	plp
	bcs	00103$
	sta	_free_prev_free_65536_38
	stx	(_free_prev_free_65536_38 + 1)
	clc
	adc	#0x02
	bcc	00154$
	inx
00154$:
	sta	_free_f_65536_38
	stx	(_free_f_65536_38 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	jmp	00111$
00103$:
;	../free.c: 60: next_free = h;
	sta	_free_next_free_65536_38
	stx	(_free_next_free_65536_38 + 1)
;	../free.c: 62: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	lda	_free_ptr_65536_37
	ldx	(_free_ptr_65536_37 + 1)
	sec
	sbc	#0x02
	bcs	00155$
	dex
00155$:
;	../free.c: 65: h->next_free = next_free;
	sta	_free_h_65536_38
	stx	(_free_h_65536_38 + 1)
	sta	*_free_sloc0_1_0
	stx	*(_free_sloc0_1_0 + 1)
	lda	_free_next_free_65536_38
	ldy	#0x02
	sta	[*_free_sloc0_1_0],y
	lda	(_free_next_free_65536_38 + 1)
	iny
	sta	[*_free_sloc0_1_0],y
;	../free.c: 66: *f = h;
	lda	_free_f_65536_38
	sta	*(__DPTR+0)
	lda	(_free_f_65536_38 + 1)
	sta	*(__DPTR+1)
	lda	_free_h_65536_38
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_free_h_65536_38 + 1)
	iny
	sta	[__DPTR],y
;	../free.c: 68: if(next_free == h->next) // Merge with next block
	lda	_free_h_65536_38
	sta	*(__DPTR+0)
	lda	(_free_h_65536_38 + 1)
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	cmp	_free_next_free_65536_38
	bne	00105$
	cpx	(_free_next_free_65536_38 + 1)
	bne	00105$
;	../free.c: 70: h->next_free = h->next->next_free;
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	[*_free_sloc0_1_0],y
	txa
	iny
	sta	[*_free_sloc0_1_0],y
;	../free.c: 71: h->next = h->next->next;
	lda	_free_h_65536_38
	sta	*(__DPTR+0)
	lda	(_free_h_65536_38 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_free_sloc1_1_0
	iny
	lda	[__DPTR],y
	sta	*(_free_sloc1_1_0 + 1)
	lda	[*_free_sloc1_1_0],y
	tax
	dey
	lda	[*_free_sloc1_1_0],y
	sta	*(__TEMP+0)
	lda	_free_h_65536_38
	sta	*(__DPTR+0)
	lda	(_free_h_65536_38 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
00105$:
;	../free.c: 74: if (prev_free && prev_free->next == h) // Merge with previous block
	lda	(_free_prev_free_65536_38 + 1)
	ora	_free_prev_free_65536_38
	beq	00113$
	lda	_free_prev_free_65536_38
	sta	*(__DPTR+0)
	lda	(_free_prev_free_65536_38 + 1)
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	cmp	_free_h_65536_38
	bne	00113$
	cpx	(_free_h_65536_38 + 1)
	beq	00162$
	rts
00162$:
;	../free.c: 76: prev_free->next = h->next;
	lda	_free_h_65536_38
	sta	*(__DPTR+0)
	lda	(_free_h_65536_38 + 1)
	sta	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	_free_prev_free_65536_38
	sta	*(__DPTR+0)
	lda	(_free_prev_free_65536_38 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../free.c: 77: prev_free->next_free = h->next_free;
	lda	_free_prev_free_65536_38
	sta	*_free_sloc1_1_0
	lda	(_free_prev_free_65536_38 + 1)
	sta	*(_free_sloc1_1_0 + 1)
	ldy	#0x03
	lda	[*_free_sloc0_1_0],y
	tax
	dey
	lda	[*_free_sloc0_1_0],y
	sta	[*_free_sloc1_1_0],y
	txa
	iny
	sta	[*_free_sloc1_1_0],y
00113$:
;	../free.c: 79: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
