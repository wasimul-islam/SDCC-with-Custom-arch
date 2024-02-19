;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module free
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _free
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_free_sloc0_1_0:
	.ds 2
_free_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
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
;../free.c:50: void free(void *ptr)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_free:
	sta	(_free_ptr_65536_37 + 1)
	stx	_free_ptr_65536_37
;../free.c:55: if(!ptr)
	lda	_free_ptr_65536_37
	ora	(_free_ptr_65536_37 + 1)
	bne	00102$
;../free.c:56: return;
	rts
00102$:
;../free.c:58: prev_free = 0;
	clrh
	clrx
	sthx	_free_prev_free_65536_38
;../free.c:59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	ldhx	___sdcc_heap_free
	lda	#___sdcc_heap_free
	sta	(_free_f_65536_38 + 1)
	lda	#>___sdcc_heap_free
	sta	_free_f_65536_38
00111$:
	cphx	#0x00
	beq	00103$
	lda	(_free_ptr_65536_37 + 1)
	sta	*(_free_sloc0_1_0 + 1)
	lda	_free_ptr_65536_37
	sta	*_free_sloc0_1_0
	cphx	*_free_sloc0_1_0
	bcc	00103$
	sthx	_free_prev_free_65536_38
	aix	#2
	sthx	_free_f_65536_38
	ldhx	,x
	bra	00111$
00103$:
;../free.c:60: next_free = h;
	sthx	_free_next_free_65536_38
;../free.c:62: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	ldhx	_free_ptr_65536_37
	aix	#-2
	stx	(_free_h_65536_38 + 1)
	pshh
	pula
	sta	_free_h_65536_38
;../free.c:65: h->next_free = next_free;
	ldhx	_free_h_65536_38
	sthx	*_free_sloc0_1_0
	ldhx	*_free_sloc0_1_0
	lda	_free_next_free_65536_38
	sta	2,x
	lda	(_free_next_free_65536_38 + 1)
	sta	3,x
;../free.c:66: *f = h;
	ldhx	_free_f_65536_38
	lda	_free_h_65536_38
	sta	,x
	lda	(_free_h_65536_38 + 1)
	sta	1,x
;../free.c:68: if(next_free == h->next) // Merge with next block
	ldhx	_free_h_65536_38
	ldhx	,x
	cpx	(_free_next_free_65536_38 + 1)
	bne	00153$
	pshh
	pula
	cmp	_free_next_free_65536_38
	beq	00154$
00153$:
	bra	00105$
00154$:
;../free.c:70: h->next_free = h->next->next_free;
	lda	3,x
	ldx	2,x
	pshx
	ldhx	*_free_sloc0_1_0
	sta	3,x
	pula
	sta	2,x
;../free.c:71: h->next = h->next->next;
	ldhx	_free_h_65536_38
	ldhx	,x
	ldhx	,x
	txa
	pshh
	ldhx	_free_h_65536_38
	sta	1,x
	pula
	sta	,x
00105$:
;../free.c:74: if (prev_free && prev_free->next == h) // Merge with previous block
	lda	_free_prev_free_65536_38
	ora	(_free_prev_free_65536_38 + 1)
	beq	00113$
	ldhx	_free_prev_free_65536_38
	ldhx	,x
	cphx	_free_h_65536_38
	bne	00113$
;../free.c:76: prev_free->next = h->next;
	ldhx	_free_h_65536_38
	ldhx	,x
	txa
	pshh
	ldhx	_free_prev_free_65536_38
	sta	1,x
	pula
	sta	,x
;../free.c:77: prev_free->next_free = h->next_free;
	ldhx	_free_prev_free_65536_38
	sthx	*_free_sloc1_1_0
	ldhx	*_free_sloc0_1_0
	lda	3,x
	ldx	2,x
	pshx
	ldhx	*_free_sloc1_1_0
	sta	3,x
	pula
	sta	2,x
00113$:
;../free.c:79: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
