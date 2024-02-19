;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _memmove
	.globl _free
	.globl _malloc
	.globl _realloc_PARM_2
	.globl _realloc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc1_1_0:
	.ds 2
_realloc_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_realloc_PARM_2:
	.ds 2
_realloc_ptr_65536_63:
	.ds 2
_realloc_ret_65536_64:
	.ds 2
_realloc_h_65536_64:
	.ds 2
_realloc_next_free_65536_64:
	.ds 2
_realloc_prev_free_65536_64:
	.ds 2
_realloc_f_65536_64:
	.ds 2
_realloc_pf_65536_64:
	.ds 2
_realloc_blocksize_65536_64:
	.ds 2
_realloc_oldblocksize_65536_64:
	.ds 2
_realloc_maxblocksize_65536_64:
	.ds 2
_realloc_newheader_196608_70:
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
;Allocation info for local variables in function 'realloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_realloc_sloc0_1_0'
;sloc1                     Allocated with name '_realloc_sloc1_1_0'
;sloc2                     Allocated with name '_realloc_sloc2_1_0'
;size                      Allocated with name '_realloc_PARM_2'
;ptr                       Allocated with name '_realloc_ptr_65536_63'
;ret                       Allocated with name '_realloc_ret_65536_64'
;h                         Allocated with name '_realloc_h_65536_64'
;next_free                 Allocated with name '_realloc_next_free_65536_64'
;prev_free                 Allocated with name '_realloc_prev_free_65536_64'
;f                         Allocated with name '_realloc_f_65536_64'
;pf                        Allocated with name '_realloc_pf_65536_64'
;blocksize                 Allocated with name '_realloc_blocksize_65536_64'
;oldblocksize              Allocated with name '_realloc_oldblocksize_65536_64'
;maxblocksize              Allocated with name '_realloc_maxblocksize_65536_64'
;newheader                 Allocated with name '_realloc_newheader_196608_70'
;oldsize                   Allocated to registers a x 
;------------------------------------------------------------
;	../realloc.c: 60: void *realloc(void *ptr, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_realloc:
	sta	_realloc_ptr_65536_63
	stx	(_realloc_ptr_65536_63 + 1)
;	../realloc.c: 73: if(!ptr)
	lda	(_realloc_ptr_65536_63 + 1)
	ora	_realloc_ptr_65536_63
	bne	00102$
;	../realloc.c: 74: return(malloc(size));
	ldx	(_realloc_PARM_2 + 1)
	lda	_realloc_PARM_2
	jmp	_malloc
00102$:
;	../realloc.c: 76: if(!size)
	lda	(_realloc_PARM_2 + 1)
	ora	_realloc_PARM_2
	bne	00104$
;	../realloc.c: 78: free(ptr);
	ldx	(_realloc_ptr_65536_63 + 1)
	lda	_realloc_ptr_65536_63
	jsr	_free
;	../realloc.c: 79: return(0);
	lda	#0x00
	tax
	rts
00104$:
;	../realloc.c: 82: prev_free = 0, pf = 0;
	ldx	#0x00
	stx	_realloc_prev_free_65536_64
	stx	(_realloc_prev_free_65536_64 + 1)
	stx	_realloc_pf_65536_64
	stx	(_realloc_pf_65536_64 + 1)
;	../realloc.c: 83: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	lda	___sdcc_heap_free
	ldx	(___sdcc_heap_free + 1)
	ldy	#___sdcc_heap_free
	sty	_realloc_f_65536_64
	ldy	#>___sdcc_heap_free
	sty	(_realloc_f_65536_64 + 1)
00129$:
	cmp	#0x00
	bne	00234$
	cpx	#0x00
00234$:
	beq	00105$
	ldy	_realloc_ptr_65536_63
	sty	*_realloc_sloc0_1_0
	ldy	(_realloc_ptr_65536_63 + 1)
	sty	*(_realloc_sloc0_1_0 + 1)
	sta	*(__TEMP+0)
	sec
	sbc	*_realloc_sloc0_1_0
	txa
	sbc	*(_realloc_sloc0_1_0 + 1)
	php
	lda	*(__TEMP+0)
	plp
	bcs	00105$
	sta	_realloc_prev_free_65536_64
	stx	(_realloc_prev_free_65536_64 + 1)
	ldy	_realloc_f_65536_64
	sty	_realloc_pf_65536_64
	ldy	(_realloc_f_65536_64 + 1)
	sty	(_realloc_pf_65536_64 + 1)
	clc
	adc	#0x02
	bcc	00237$
	inx
00237$:
	sta	_realloc_f_65536_64
	stx	(_realloc_f_65536_64 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	jmp	00129$
00105$:
;	../realloc.c: 84: next_free = h;
	sta	_realloc_next_free_65536_64
	stx	(_realloc_next_free_65536_64 + 1)
;	../realloc.c: 86: if(size + offsetof(struct header, next_free) < size) // Handle overflow
	lda	_realloc_PARM_2
	ldx	(_realloc_PARM_2 + 1)
	clc
	adc	#0x02
	bcc	00238$
	inx
00238$:
	sec
	sbc	_realloc_PARM_2
	txa
	sbc	(_realloc_PARM_2 + 1)
	bcs	00107$
;	../realloc.c: 87: return(0);
	lda	#0x00
	tax
	rts
00107$:
;	../realloc.c: 88: blocksize = size + offsetof(struct header, next_free);
	lda	_realloc_PARM_2
	clc
	adc	#0x02
	sta	_realloc_blocksize_65536_64
	lda	(_realloc_PARM_2 + 1)
	adc	#0x00
	sta	(_realloc_blocksize_65536_64 + 1)
;	../realloc.c: 89: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	lda	_realloc_blocksize_65536_64
	sec
	sbc	#0x04
	lda	(_realloc_blocksize_65536_64 + 1)
	sbc	#0x00
	bcs	00109$
;	../realloc.c: 90: blocksize = sizeof(struct header);
	ldx	#0x04
	stx	_realloc_blocksize_65536_64
	ldx	#0x00
	stx	(_realloc_blocksize_65536_64 + 1)
00109$:
;	../realloc.c: 92: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	lda	_realloc_ptr_65536_63
	ldx	(_realloc_ptr_65536_63 + 1)
	sec
	sbc	#0x02
	bcs	00241$
	dex
00241$:
;	../realloc.c: 93: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	sta	_realloc_h_65536_64
	stx	(_realloc_h_65536_64 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_realloc_sloc0_1_0
	iny
	lda	[__DPTR],y
	sta	*(_realloc_sloc0_1_0 + 1)
	lda	*_realloc_sloc0_1_0
	ldx	*(_realloc_sloc0_1_0 + 1)
	ldy	_realloc_h_65536_64
	sty	*_realloc_sloc1_1_0
	ldy	(_realloc_h_65536_64 + 1)
	sty	*(_realloc_sloc1_1_0 + 1)
	sec
	sbc	*_realloc_sloc1_1_0
	sta	_realloc_oldblocksize_65536_64
	txa
	sbc	*(_realloc_sloc1_1_0 + 1)
	sta	(_realloc_oldblocksize_65536_64 + 1)
;	../realloc.c: 95: maxblocksize = oldblocksize;
	lda	_realloc_oldblocksize_65536_64
	sta	_realloc_maxblocksize_65536_64
	lda	(_realloc_oldblocksize_65536_64 + 1)
	sta	(_realloc_maxblocksize_65536_64 + 1)
;	../realloc.c: 96: if(prev_free && prev_free->next == h) // Can merge with previous block
	lda	(_realloc_prev_free_65536_64 + 1)
	ora	_realloc_prev_free_65536_64
	beq	00111$
	lda	_realloc_prev_free_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_prev_free_65536_64 + 1)
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	cmp	_realloc_h_65536_64
	bne	00111$
	cpx	(_realloc_h_65536_64 + 1)
	bne	00111$
;	../realloc.c: 97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
	lda	_realloc_prev_free_65536_64
	ldx	(_realloc_prev_free_65536_64 + 1)
	sta	*(__TEMP+0)
	lda	*_realloc_sloc1_1_0
	sec
	sbc	*(__TEMP+0)
	pha
	lda	*(_realloc_sloc1_1_0 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	tax
	pla
	clc
	adc	_realloc_oldblocksize_65536_64
	sta	_realloc_maxblocksize_65536_64
	txa
	adc	(_realloc_oldblocksize_65536_64 + 1)
	sta	(_realloc_maxblocksize_65536_64 + 1)
00111$:
;	../realloc.c: 98: if(next_free == h->next) // Can merge with next block
	lda	_realloc_next_free_65536_64
	cmp	*_realloc_sloc0_1_0
	bne	00114$
	lda	(_realloc_next_free_65536_64 + 1)
	cmp	*(_realloc_sloc0_1_0 + 1)
	bne	00114$
;	../realloc.c: 99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
	lda	_realloc_next_free_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_next_free_65536_64 + 1)
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	ldy	_realloc_next_free_65536_64
	sty	*_realloc_sloc1_1_0
	ldy	(_realloc_next_free_65536_64 + 1)
	sty	*(_realloc_sloc1_1_0 + 1)
	sec
	sbc	*_realloc_sloc1_1_0
	pha
	txa
	sbc	*(_realloc_sloc1_1_0 + 1)
	tax
	pla
	clc
	adc	_realloc_maxblocksize_65536_64
	sta	_realloc_maxblocksize_65536_64
	txa
	adc	(_realloc_maxblocksize_65536_64 + 1)
	sta	(_realloc_maxblocksize_65536_64 + 1)
00114$:
;	../realloc.c: 101: if(blocksize <= maxblocksize) // Can resize in place.
	lda	_realloc_maxblocksize_65536_64
	sec
	sbc	_realloc_blocksize_65536_64
	lda	(_realloc_maxblocksize_65536_64 + 1)
	sbc	(_realloc_blocksize_65536_64 + 1)
	bcs	00249$
	jmp	00124$
00249$:
;	../realloc.c: 103: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	lda	(_realloc_prev_free_65536_64 + 1)
	ora	_realloc_prev_free_65536_64
	bne	00250$
	jmp	00116$
00250$:
	lda	_realloc_prev_free_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_prev_free_65536_64 + 1)
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	cmp	_realloc_h_65536_64
	bne	00252$
	cpx	(_realloc_h_65536_64 + 1)
	beq	00253$
00252$:
	jmp	00116$
00253$:
;	../realloc.c: 105: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	lda	_realloc_prev_free_65536_64
	sta	*_realloc_sloc1_1_0
	lda	(_realloc_prev_free_65536_64 + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_h_65536_64
	sta	*_realloc_sloc0_1_0
	lda	(_realloc_h_65536_64 + 1)
	sta	*(_realloc_sloc0_1_0 + 1)
	lda	_realloc_oldblocksize_65536_64
	sec
	sbc	_realloc_blocksize_65536_64
	lda	(_realloc_oldblocksize_65536_64 + 1)
	sbc	(_realloc_blocksize_65536_64 + 1)
	bcc	00133$
	lda	_realloc_blocksize_65536_64
	ldx	(_realloc_blocksize_65536_64 + 1)
	jmp	00134$
00133$:
	lda	_realloc_oldblocksize_65536_64
	ldx	(_realloc_oldblocksize_65536_64 + 1)
00134$:
	ldy	*_realloc_sloc0_1_0
	sty	_memmove_PARM_2
	ldy	*(_realloc_sloc0_1_0 + 1)
	sty	(_memmove_PARM_2 + 1)
	sta	_memmove_PARM_3
	stx	(_memmove_PARM_3 + 1)
	ldx	*(_realloc_sloc1_1_0 + 1)
	lda	*_realloc_sloc1_1_0
	jsr	_memmove
;	../realloc.c: 106: h = prev_free;
	lda	_realloc_prev_free_65536_64
	sta	_realloc_h_65536_64
	lda	(_realloc_prev_free_65536_64 + 1)
	sta	(_realloc_h_65536_64 + 1)
;	../realloc.c: 107: *pf = next_free;
	lda	_realloc_pf_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_pf_65536_64 + 1)
	sta	*(__DPTR+1)
	lda	_realloc_next_free_65536_64
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_realloc_next_free_65536_64 + 1)
	iny
	sta	[__DPTR],y
;	../realloc.c: 108: f = pf;
	lda	_realloc_pf_65536_64
	sta	_realloc_f_65536_64
	lda	(_realloc_pf_65536_64 + 1)
	sta	(_realloc_f_65536_64 + 1)
00116$:
;	../realloc.c: 111: if(next_free && next_free == h->next) // Merge with following block
	lda	(_realloc_next_free_65536_64 + 1)
	ora	_realloc_next_free_65536_64
	beq	00119$
	lda	_realloc_h_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_h_65536_64 + 1)
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	cmp	_realloc_next_free_65536_64
	bne	00119$
	cpx	(_realloc_next_free_65536_64 + 1)
	bne	00119$
;	../realloc.c: 113: h->next = next_free->next;
	lda	_realloc_next_free_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_next_free_65536_64 + 1)
	sta	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	_realloc_h_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_h_65536_64 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../realloc.c: 114: *f = next_free->next_free;
	lda	_realloc_next_free_65536_64
	ldx	(_realloc_next_free_65536_64 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	_realloc_f_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_f_65536_64 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
00119$:
;	../realloc.c: 117: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	lda	_realloc_blocksize_65536_64
	clc
	adc	#0x04
	sta	*_realloc_sloc1_1_0
	lda	(_realloc_blocksize_65536_64 + 1)
	adc	#0x00
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_maxblocksize_65536_64
	sec
	sbc	*_realloc_sloc1_1_0
	lda	(_realloc_maxblocksize_65536_64 + 1)
	sbc	*(_realloc_sloc1_1_0 + 1)
	bcs	00259$
	jmp	00122$
00259$:
;	../realloc.c: 119: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
	lda	_realloc_h_65536_64
	ldx	(_realloc_h_65536_64 + 1)
	clc
	adc	_realloc_blocksize_65536_64
	pha
	txa
	adc	(_realloc_blocksize_65536_64 + 1)
	tax
	pla
	sta	_realloc_newheader_196608_70
	stx	(_realloc_newheader_196608_70 + 1)
;	../realloc.c: 120: newheader->next = h->next;
	lda	_realloc_h_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_h_65536_64 + 1)
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	_realloc_newheader_196608_70
	sta	*(__DPTR+0)
	lda	(_realloc_newheader_196608_70 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
;	../realloc.c: 121: newheader->next_free = *f;
	lda	_realloc_newheader_196608_70
	sta	*_realloc_sloc1_1_0
	lda	(_realloc_newheader_196608_70 + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_f_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_f_65536_64 + 1)
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	ldy	#0x02
	sta	[*_realloc_sloc1_1_0],y
	txa
	iny
	sta	[*_realloc_sloc1_1_0],y
;	../realloc.c: 122: *f = newheader;
	lda	_realloc_f_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_f_65536_64 + 1)
	sta	*(__DPTR+1)
	lda	_realloc_newheader_196608_70
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_realloc_newheader_196608_70 + 1)
	iny
	sta	[__DPTR],y
;	../realloc.c: 123: h->next = newheader;
	lda	_realloc_h_65536_64
	sta	*(__DPTR+0)
	lda	(_realloc_h_65536_64 + 1)
	sta	*(__DPTR+1)
	lda	_realloc_newheader_196608_70
	dey
	sta	[__DPTR],y
	lda	(_realloc_newheader_196608_70 + 1)
	iny
	sta	[__DPTR],y
00122$:
;	../realloc.c: 126: return(&(h->next_free));
	lda	_realloc_h_65536_64
	ldx	(_realloc_h_65536_64 + 1)
	clc
	adc	#0x02
	bcc	00131$
	inx
	rts
00124$:
;	../realloc.c: 129: if(ret = malloc(size))
	ldx	(_realloc_PARM_2 + 1)
	lda	_realloc_PARM_2
	jsr	_malloc
	sta	_realloc_ret_65536_64
	stx	(_realloc_ret_65536_64 + 1)
	cmp	#0x00
	bne	00261$
	cpx	#0x00
00261$:
	beq	00126$
;	../realloc.c: 131: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	lda	_realloc_oldblocksize_65536_64
	ldx	(_realloc_oldblocksize_65536_64 + 1)
	sec
	sbc	#0x02
	bcs	00263$
	dex
00263$:
;	../realloc.c: 132: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
	sta	*(__TEMP+0)
	sec
	sbc	_realloc_PARM_2
	txa
	sbc	(_realloc_PARM_2 + 1)
	php
	lda	*(__TEMP+0)
	plp
	bcc	00135$
	lda	_realloc_PARM_2
	ldx	(_realloc_PARM_2 + 1)
	jmp	00136$
00135$:
00136$:
	ldy	_realloc_ptr_65536_63
	sty	___memcpy_PARM_2
	ldy	(_realloc_ptr_65536_63 + 1)
	sty	(___memcpy_PARM_2 + 1)
	sta	___memcpy_PARM_3
	stx	(___memcpy_PARM_3 + 1)
	ldx	(_realloc_ret_65536_64 + 1)
	lda	_realloc_ret_65536_64
	jsr	___memcpy
;	../realloc.c: 133: free(ptr);
	ldx	(_realloc_ptr_65536_63 + 1)
	lda	_realloc_ptr_65536_63
	jsr	_free
;	../realloc.c: 134: return(ret);
	ldx	(_realloc_ret_65536_64 + 1)
	lda	_realloc_ret_65536_64
	rts
00126$:
;	../realloc.c: 137: return(0);
	lda	#0x00
	tax
00131$:
;	../realloc.c: 138: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
