;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mhc08
	
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
	.globl ___sdcc_heap_init
	.globl ___memcpy
	.globl _memmove
	.globl _free
	.globl _malloc
	.globl _realloc_PARM_2
	.globl _realloc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc1_1_0:
	.ds 2
_realloc_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
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
;oldsize                   Allocated to registers x h 
;------------------------------------------------------------
;../realloc.c:60: void *realloc(void *ptr, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_realloc:
	sta	(_realloc_ptr_65536_63 + 1)
	stx	_realloc_ptr_65536_63
;../realloc.c:69: if(!__sdcc_heap_free)
	lda	___sdcc_heap_free
	ora	(___sdcc_heap_free + 1)
	bne	00102$
;../realloc.c:70: __sdcc_heap_init();
	jsr	___sdcc_heap_init
00102$:
;../realloc.c:73: if(!ptr)
	lda	_realloc_ptr_65536_63
	ora	(_realloc_ptr_65536_63 + 1)
	bne	00104$
;../realloc.c:74: return(malloc(size));
	lda	(_realloc_PARM_2 + 1)
	ldx	_realloc_PARM_2
	jmp	_malloc
00104$:
;../realloc.c:76: if(!size)
	lda	_realloc_PARM_2
	ora	(_realloc_PARM_2 + 1)
	bne	00106$
;../realloc.c:78: free(ptr);
	lda	(_realloc_ptr_65536_63 + 1)
	ldx	_realloc_ptr_65536_63
	jsr	_free
;../realloc.c:79: return(0);
	clra
	tax
	rts
00106$:
;../realloc.c:82: prev_free = 0, pf = 0;
	clra
	sta	_realloc_prev_free_65536_64
	sta	(_realloc_prev_free_65536_64 + 1)
	sta	_realloc_pf_65536_64
	sta	(_realloc_pf_65536_64 + 1)
;../realloc.c:83: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	lda	___sdcc_heap_free
	psha
	pulh
	ldx	(___sdcc_heap_free + 1)
	lda	#___sdcc_heap_free
	sta	(_realloc_f_65536_64 + 1)
	lda	#>___sdcc_heap_free
	sta	_realloc_f_65536_64
00131$:
	cphx	#0x00
	beq	00107$
	lda	(_realloc_ptr_65536_63 + 1)
	sta	*(_realloc_sloc0_1_0 + 1)
	lda	_realloc_ptr_65536_63
	sta	*_realloc_sloc0_1_0
	cphx	*_realloc_sloc0_1_0
	bcc	00107$
	pshh
	pula
	sta	_realloc_prev_free_65536_64
	stx	(_realloc_prev_free_65536_64 + 1)
	lda	_realloc_f_65536_64
	sta	_realloc_pf_65536_64
	lda	(_realloc_f_65536_64 + 1)
	sta	(_realloc_pf_65536_64 + 1)
	aix	#2
	pshh
	pula
	sta	_realloc_f_65536_64
	stx	(_realloc_f_65536_64 + 1)
	lda	,x
	psha
	ldx	1,x
	pulh
	bra	00131$
00107$:
;../realloc.c:84: next_free = h;
	pshh
	pula
	sta	_realloc_next_free_65536_64
	stx	(_realloc_next_free_65536_64 + 1)
;../realloc.c:86: if(size + offsetof(struct header, next_free) < size) // Handle overflow
	lda	_realloc_PARM_2
	psha
	pulh
	ldx	(_realloc_PARM_2 + 1)
	aix	#2
	txa
	sub	(_realloc_PARM_2 + 1)
	pshh
	pula
	sbc	_realloc_PARM_2
	bcc	00109$
;../realloc.c:87: return(0);
	clra
	tax
	rts
00109$:
;../realloc.c:88: blocksize = size + offsetof(struct header, next_free);
	pshh
	pula
	sta	_realloc_blocksize_65536_64
	stx	(_realloc_blocksize_65536_64 + 1)
;../realloc.c:89: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	lda	(_realloc_blocksize_65536_64 + 1)
	sub	#0x04
	lda	_realloc_blocksize_65536_64
	sbc	#0x00
	bcc	00111$
;../realloc.c:90: blocksize = sizeof(struct header);
	clra
	sta	_realloc_blocksize_65536_64
	lda	#0x04
	sta	(_realloc_blocksize_65536_64 + 1)
00111$:
;../realloc.c:92: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	lda	_realloc_ptr_65536_63
	psha
	pulh
	ldx	(_realloc_ptr_65536_63 + 1)
	aix	#-2
	stx	(_realloc_h_65536_64 + 1)
	pshh
	pula
	sta	_realloc_h_65536_64
;../realloc.c:93: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	lda	_realloc_h_65536_64
	psha
	pulh
	ldx	(_realloc_h_65536_64 + 1)
	lda	,x
	sta	*_realloc_sloc0_1_0
	lda	1,x
	sta	*(_realloc_sloc0_1_0 + 1)
	lda	*(_realloc_sloc0_1_0 + 1)
	ldx	*_realloc_sloc0_1_0
	psha
	lda	(_realloc_h_65536_64 + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_h_65536_64
	sta	*_realloc_sloc1_1_0
	pula
	sub	*(_realloc_sloc1_1_0 + 1)
	sta	(_realloc_oldblocksize_65536_64 + 1)
	txa
	sbc	*_realloc_sloc1_1_0
	sta	_realloc_oldblocksize_65536_64
;../realloc.c:95: maxblocksize = oldblocksize;
	lda	_realloc_oldblocksize_65536_64
	sta	_realloc_maxblocksize_65536_64
	lda	(_realloc_oldblocksize_65536_64 + 1)
	sta	(_realloc_maxblocksize_65536_64 + 1)
;../realloc.c:96: if(prev_free && prev_free->next == h) // Can merge with previous block
	lda	_realloc_prev_free_65536_64
	ora	(_realloc_prev_free_65536_64 + 1)
	beq	00113$
	lda	_realloc_prev_free_65536_64
	psha
	pulh
	ldx	(_realloc_prev_free_65536_64 + 1)
	lda	,x
	psha
	ldx	1,x
	pulh
	cpx	(_realloc_h_65536_64 + 1)
	bne	00247$
	pshh
	pula
	cmp	_realloc_h_65536_64
	beq	00248$
00247$:
	bra	00113$
00248$:
;../realloc.c:97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
	lda	(_realloc_prev_free_65536_64 + 1)
	sta	*(_realloc_sloc2_1_0 + 1)
	lda	_realloc_prev_free_65536_64
	sta	*_realloc_sloc2_1_0
	lda	*(_realloc_sloc1_1_0 + 1)
	sub	*(_realloc_sloc2_1_0 + 1)
	psha
	lda	*_realloc_sloc1_1_0
	sbc	*_realloc_sloc2_1_0
	tax
	pula
	add	(_realloc_oldblocksize_65536_64 + 1)
	sta	(_realloc_maxblocksize_65536_64 + 1)
	txa
	adc	_realloc_oldblocksize_65536_64
	sta	_realloc_maxblocksize_65536_64
00113$:
;../realloc.c:98: if(next_free == h->next) // Can merge with next block
	lda	(_realloc_next_free_65536_64 + 1)
	cmp	*(_realloc_sloc0_1_0 + 1)
	bne	00249$
	lda	_realloc_next_free_65536_64
	cbeq	*_realloc_sloc0_1_0,00250$
00249$:
	bra	00116$
00250$:
;../realloc.c:99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
	lda	_realloc_next_free_65536_64
	psha
	pulh
	ldx	(_realloc_next_free_65536_64 + 1)
	lda	1,x
	ldx	,x
	psha
	lda	(_realloc_next_free_65536_64 + 1)
	sta	*(_realloc_sloc2_1_0 + 1)
	lda	_realloc_next_free_65536_64
	sta	*_realloc_sloc2_1_0
	pula
	sub	*(_realloc_sloc2_1_0 + 1)
	psha
	txa
	sbc	*_realloc_sloc2_1_0
	tax
	pula
	add	(_realloc_maxblocksize_65536_64 + 1)
	sta	(_realloc_maxblocksize_65536_64 + 1)
	txa
	adc	_realloc_maxblocksize_65536_64
	sta	_realloc_maxblocksize_65536_64
00116$:
;../realloc.c:101: if(blocksize <= maxblocksize) // Can resize in place.
	lda	(_realloc_maxblocksize_65536_64 + 1)
	sub	(_realloc_blocksize_65536_64 + 1)
	lda	_realloc_maxblocksize_65536_64
	sbc	_realloc_blocksize_65536_64
	bcc	00251$
	jmp	00126$
00251$:
;../realloc.c:103: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	lda	_realloc_prev_free_65536_64
	ora	(_realloc_prev_free_65536_64 + 1)
	bne	00252$
	jmp	00118$
00252$:
	lda	_realloc_prev_free_65536_64
	psha
	pulh
	ldx	(_realloc_prev_free_65536_64 + 1)
	lda	,x
	psha
	ldx	1,x
	pulh
	cpx	(_realloc_h_65536_64 + 1)
	bne	00253$
	pshh
	pula
	cmp	_realloc_h_65536_64
	beq	00254$
00253$:
	bra	00118$
00254$:
;../realloc.c:105: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	lda	(_realloc_prev_free_65536_64 + 1)
	sta	*(_realloc_sloc2_1_0 + 1)
	lda	_realloc_prev_free_65536_64
	sta	*_realloc_sloc2_1_0
	lda	(_realloc_h_65536_64 + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_h_65536_64
	sta	*_realloc_sloc1_1_0
	lda	(_realloc_oldblocksize_65536_64 + 1)
	sub	(_realloc_blocksize_65536_64 + 1)
	lda	_realloc_oldblocksize_65536_64
	sbc	_realloc_blocksize_65536_64
	bcs	00135$
	lda	_realloc_blocksize_65536_64
	psha
	pulh
	ldx	(_realloc_blocksize_65536_64 + 1)
	bra	00136$
00135$:
	lda	_realloc_oldblocksize_65536_64
	psha
	pulh
	ldx	(_realloc_oldblocksize_65536_64 + 1)
00136$:
	lda	*_realloc_sloc1_1_0
	sta	_memmove_PARM_2
	lda	*(_realloc_sloc1_1_0 + 1)
	sta	(_memmove_PARM_2 + 1)
	pshh
	pula
	sta	_memmove_PARM_3
	stx	(_memmove_PARM_3 + 1)
	lda	*(_realloc_sloc2_1_0 + 1)
	ldx	*_realloc_sloc2_1_0
	jsr	_memmove
;../realloc.c:106: h = prev_free;
	lda	_realloc_prev_free_65536_64
	sta	_realloc_h_65536_64
	lda	(_realloc_prev_free_65536_64 + 1)
	sta	(_realloc_h_65536_64 + 1)
;../realloc.c:107: *pf = next_free;
	lda	_realloc_pf_65536_64
	psha
	pulh
	ldx	(_realloc_pf_65536_64 + 1)
	lda	_realloc_next_free_65536_64
	sta	,x
	lda	(_realloc_next_free_65536_64 + 1)
	sta	1,x
;../realloc.c:108: f = pf;
	lda	_realloc_pf_65536_64
	sta	_realloc_f_65536_64
	lda	(_realloc_pf_65536_64 + 1)
	sta	(_realloc_f_65536_64 + 1)
00118$:
;../realloc.c:111: if(next_free && next_free == h->next) // Merge with following block
	lda	_realloc_next_free_65536_64
	ora	(_realloc_next_free_65536_64 + 1)
	beq	00121$
	lda	_realloc_h_65536_64
	psha
	pulh
	ldx	(_realloc_h_65536_64 + 1)
	lda	,x
	psha
	ldx	1,x
	pulh
	cpx	(_realloc_next_free_65536_64 + 1)
	bne	00257$
	pshh
	pula
	cmp	_realloc_next_free_65536_64
	beq	00258$
00257$:
	bra	00121$
00258$:
;../realloc.c:113: h->next = next_free->next;
	lda	_realloc_next_free_65536_64
	psha
	pulh
	ldx	(_realloc_next_free_65536_64 + 1)
	lda	1,x
	ldx	,x
	pshx
	ldx	_realloc_h_65536_64
	pshx
	pulh
	ldx	(_realloc_h_65536_64 + 1)
	sta	1,x
	pula
	sta	,x
;../realloc.c:114: *f = next_free->next_free;
	lda	_realloc_next_free_65536_64
	psha
	pulh
	ldx	(_realloc_next_free_65536_64 + 1)
	lda	3,x
	ldx	2,x
	pshx
	ldx	_realloc_f_65536_64
	pshx
	pulh
	ldx	(_realloc_f_65536_64 + 1)
	sta	1,x
	pula
	sta	,x
00121$:
;../realloc.c:117: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	lda	_realloc_blocksize_65536_64
	psha
	pulh
	ldx	(_realloc_blocksize_65536_64 + 1)
	aix	#4
	lda	(_realloc_maxblocksize_65536_64 + 1)
	pshx
	sub	1,s
	ais	#1
	lda	_realloc_maxblocksize_65536_64
	pshh
	sbc	1,s
	ais	#1
	bcs	00124$
;../realloc.c:119: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
	lda	(_realloc_h_65536_64 + 1)
	ldx	_realloc_h_65536_64
	add	(_realloc_blocksize_65536_64 + 1)
	psha
	txa
	adc	_realloc_blocksize_65536_64
	tax
	pula
	sta	(_realloc_newheader_196608_70 + 1)
	stx	_realloc_newheader_196608_70
;../realloc.c:120: newheader->next = h->next;
	lda	_realloc_h_65536_64
	psha
	pulh
	ldx	(_realloc_h_65536_64 + 1)
	lda	1,x
	ldx	,x
	pshx
	ldx	_realloc_newheader_196608_70
	pshx
	pulh
	ldx	(_realloc_newheader_196608_70 + 1)
	sta	1,x
	pula
	sta	,x
;../realloc.c:121: newheader->next_free = *f;
	lda	_realloc_newheader_196608_70
	sta	*_realloc_sloc2_1_0
	lda	(_realloc_newheader_196608_70 + 1)
	sta	*(_realloc_sloc2_1_0 + 1)
	lda	_realloc_f_65536_64
	psha
	pulh
	ldx	(_realloc_f_65536_64 + 1)
	lda	1,x
	ldx	,x
	pshx
	ldhx	*_realloc_sloc2_1_0
	sta	3,x
	pula
	sta	2,x
;../realloc.c:122: *f = newheader;
	lda	_realloc_f_65536_64
	psha
	pulh
	ldx	(_realloc_f_65536_64 + 1)
	lda	_realloc_newheader_196608_70
	sta	,x
	lda	(_realloc_newheader_196608_70 + 1)
	sta	1,x
;../realloc.c:123: h->next = newheader;
	lda	_realloc_h_65536_64
	psha
	pulh
	ldx	(_realloc_h_65536_64 + 1)
	lda	_realloc_newheader_196608_70
	sta	,x
	lda	(_realloc_newheader_196608_70 + 1)
	sta	1,x
00124$:
;../realloc.c:126: return(&(h->next_free));
	lda	_realloc_h_65536_64
	psha
	pulh
	ldx	(_realloc_h_65536_64 + 1)
	aix	#2
	txa
	pshh
	pulx
	rts
00126$:
;../realloc.c:129: if(ret = malloc(size))
	lda	(_realloc_PARM_2 + 1)
	ldx	_realloc_PARM_2
	jsr	_malloc
	stx	_realloc_ret_65536_64
	sta	(_realloc_ret_65536_64 + 1)
	tsta
	bne	00260$
	tstx
00260$:
	beq	00128$
;../realloc.c:131: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	lda	_realloc_oldblocksize_65536_64
	psha
	pulh
	ldx	(_realloc_oldblocksize_65536_64 + 1)
	aix	#-2
;../realloc.c:132: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
	txa
	sub	(_realloc_PARM_2 + 1)
	pshh
	pula
	sbc	_realloc_PARM_2
	bcs	00137$
	lda	_realloc_PARM_2
	psha
	pulh
	ldx	(_realloc_PARM_2 + 1)
00137$:
	lda	_realloc_ptr_65536_63
	sta	___memcpy_PARM_2
	lda	(_realloc_ptr_65536_63 + 1)
	sta	(___memcpy_PARM_2 + 1)
	pshh
	pula
	sta	___memcpy_PARM_3
	stx	(___memcpy_PARM_3 + 1)
	lda	(_realloc_ret_65536_64 + 1)
	ldx	_realloc_ret_65536_64
	jsr	___memcpy
;../realloc.c:133: free(ptr);
	lda	(_realloc_ptr_65536_63 + 1)
	ldx	_realloc_ptr_65536_63
	jsr	_free
;../realloc.c:134: return(ret);
	ldx	_realloc_ret_65536_64
	lda	(_realloc_ret_65536_64 + 1)
	rts
00128$:
;../realloc.c:137: return(0);
	clra
	tax
;../realloc.c:138: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
