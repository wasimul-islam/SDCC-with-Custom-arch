;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mmcs51 --model-small
	
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
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_realloc_PARM_2:
	.ds 2
_realloc_ptr_65536_66:
	.ds 3
_realloc_next_free_65536_67:
	.ds 2
_realloc_prev_free_65536_67:
	.ds 2
_realloc_pf_65536_67:
	.ds 2
_realloc_blocksize_65536_67:
	.ds 2
_realloc_oldblocksize_65536_67:
	.ds 2
_realloc_maxblocksize_65536_67:
	.ds 2
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_realloc_sloc1_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;size                      Allocated with name '_realloc_PARM_2'
;ptr                       Allocated with name '_realloc_ptr_65536_66'
;ret                       Allocated to registers r4 r5 
;h                         Allocated to registers r0 r2 
;next_free                 Allocated with name '_realloc_next_free_65536_67'
;prev_free                 Allocated with name '_realloc_prev_free_65536_67'
;f                         Allocated with name '_realloc_sloc0_1_0'
;pf                        Allocated with name '_realloc_pf_65536_67'
;blocksize                 Allocated with name '_realloc_blocksize_65536_67'
;oldblocksize              Allocated with name '_realloc_oldblocksize_65536_67'
;maxblocksize              Allocated with name '_realloc_maxblocksize_65536_67'
;newheader                 Allocated to registers r6 r7 
;oldsize                   Allocated to registers r6 r7 
;sloc0                     Allocated with name '_realloc_sloc0_1_0'
;sloc2                     Allocated with name '_realloc_sloc2_1_0'
;------------------------------------------------------------
;	realloc.c:58: void HEAPSPACE *realloc(void *ptr, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
_realloc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_realloc_ptr_65536_66,dpl
	mov	(_realloc_ptr_65536_66 + 1),dph
	mov	(_realloc_ptr_65536_66 + 2),b
;	realloc.c:69: if(!__sdcc_heap_free)
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	realloc.c:70: __sdcc_heap_init();
	lcall	___sdcc_heap_init
00102$:
;	realloc.c:73: if(!ptr)
	mov	a,_realloc_ptr_65536_66
	orl	a,(_realloc_ptr_65536_66 + 1)
	jnz	00104$
;	realloc.c:74: return(malloc(size));
	mov	dpl,_realloc_PARM_2
	mov	dph,(_realloc_PARM_2 + 1)
	ljmp	_malloc
00104$:
;	realloc.c:76: if(!size)
	mov	a,_realloc_PARM_2
	orl	a,(_realloc_PARM_2 + 1)
	jnz	00106$
;	realloc.c:78: free(ptr);
	mov	dpl,_realloc_ptr_65536_66
	mov	dph,(_realloc_ptr_65536_66 + 1)
	mov	b,(_realloc_ptr_65536_66 + 2)
	lcall	_free
;	realloc.c:79: return(0);
	mov	dptr,#0x0000
	ret
00106$:
;	realloc.c:82: prev_free = 0, pf = 0;
	clr	a
	mov	_realloc_prev_free_65536_67,a
	mov	(_realloc_prev_free_65536_67 + 1),a
	mov	_realloc_pf_65536_67,a
	mov	(_realloc_pf_65536_67 + 1),a
;	realloc.c:83: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	_realloc_sloc0_1_0,#___sdcc_heap_free
	mov	(_realloc_sloc0_1_0 + 1),#(___sdcc_heap_free >> 8)
00131$:
	mov	a,r0
	orl	a,r2
	jz	00107$
	mov	r1,_realloc_ptr_65536_66
	mov	r4,(_realloc_ptr_65536_66 + 1)
	clr	c
	mov	a,r0
	subb	a,r1
	mov	a,r2
	subb	a,r4
	jnc	00107$
	mov	_realloc_prev_free_65536_67,r0
	mov	(_realloc_prev_free_65536_67 + 1),r2
	mov	_realloc_pf_65536_67,_realloc_sloc0_1_0
	mov	(_realloc_pf_65536_67 + 1),(_realloc_sloc0_1_0 + 1)
	mov	a,#0x02
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r2
	mov	r4,a
	mov	_realloc_sloc0_1_0,r3
	mov	(_realloc_sloc0_1_0 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	sjmp	00131$
00107$:
;	realloc.c:84: next_free = h;
	mov	_realloc_next_free_65536_67,r0
	mov	(_realloc_next_free_65536_67 + 1),r2
;	realloc.c:86: if(size + offsetof(struct header, next_free) < size) // Handle overflow
	mov	a,#0x02
	add	a,_realloc_PARM_2
	mov	r1,a
	clr	a
	addc	a,(_realloc_PARM_2 + 1)
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,_realloc_PARM_2
	mov	a,r2
	subb	a,(_realloc_PARM_2 + 1)
	jnc	00109$
;	realloc.c:87: return(0);
	mov	dptr,#0x0000
	ret
00109$:
;	realloc.c:88: blocksize = size + offsetof(struct header, next_free);
	mov	a,#0x02
	add	a,_realloc_PARM_2
	mov	_realloc_blocksize_65536_67,a
	clr	a
	addc	a,(_realloc_PARM_2 + 1)
	mov	(_realloc_blocksize_65536_67 + 1),a
;	realloc.c:89: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	clr	c
	mov	a,_realloc_blocksize_65536_67
	subb	a,#0x04
	mov	a,(_realloc_blocksize_65536_67 + 1)
	subb	a,#0x00
	jnc	00111$
;	realloc.c:90: blocksize = sizeof(struct header);
	mov	_realloc_blocksize_65536_67,#0x04
	mov	(_realloc_blocksize_65536_67 + 1),#0x00
00111$:
;	realloc.c:92: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	mov	r0,_realloc_ptr_65536_66
	mov	r2,(_realloc_ptr_65536_66 + 1)
	mov	a,r0
	add	a,#0xfe
	mov	r0,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
;	realloc.c:93: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	mov	dpl,r0
	mov	dph,r2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar3,r1
	mov	ar7,r4
	mov	ar5,r0
	mov	ar6,r2
	mov	a,r3
	clr	c
	subb	a,r5
	mov	_realloc_oldblocksize_65536_67,a
	mov	a,r7
	subb	a,r6
	mov	(_realloc_oldblocksize_65536_67 + 1),a
;	realloc.c:95: maxblocksize = oldblocksize;
	mov	_realloc_maxblocksize_65536_67,_realloc_oldblocksize_65536_67
	mov	(_realloc_maxblocksize_65536_67 + 1),(_realloc_oldblocksize_65536_67 + 1)
;	realloc.c:96: if(prev_free && prev_free->next == h) // Can merge with previous block
	mov	a,_realloc_prev_free_65536_67
	orl	a,(_realloc_prev_free_65536_67 + 1)
	jz	00113$
	mov	dpl,_realloc_prev_free_65536_67
	mov	dph,(_realloc_prev_free_65536_67 + 1)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r3
	cjne	a,ar0,00113$
	mov	a,r7
	cjne	a,ar2,00113$
;	realloc.c:97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
	mov	r3,_realloc_prev_free_65536_67
	mov	r7,(_realloc_prev_free_65536_67 + 1)
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	a,r5
	add	a,_realloc_oldblocksize_65536_67
	mov	_realloc_maxblocksize_65536_67,a
	mov	a,r6
	addc	a,(_realloc_oldblocksize_65536_67 + 1)
	mov	(_realloc_maxblocksize_65536_67 + 1),a
00113$:
;	realloc.c:98: if(next_free == h->next) // Can merge with next block
	mov	a,r1
	cjne	a,_realloc_next_free_65536_67,00116$
	mov	a,r4
	cjne	a,(_realloc_next_free_65536_67 + 1),00116$
;	realloc.c:99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
	mov	dpl,_realloc_next_free_65536_67
	mov	dph,(_realloc_next_free_65536_67 + 1)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,_realloc_next_free_65536_67
	mov	r4,(_realloc_next_free_65536_67 + 1)
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	mov	a,r6
	add	a,_realloc_maxblocksize_65536_67
	mov	_realloc_maxblocksize_65536_67,a
	mov	a,r7
	addc	a,(_realloc_maxblocksize_65536_67 + 1)
	mov	(_realloc_maxblocksize_65536_67 + 1),a
00116$:
;	realloc.c:101: if(blocksize <= maxblocksize) // Can resize in place.
	clr	c
	mov	a,_realloc_maxblocksize_65536_67
	subb	a,_realloc_blocksize_65536_67
	mov	a,(_realloc_maxblocksize_65536_67 + 1)
	subb	a,(_realloc_blocksize_65536_67 + 1)
	jnc	00251$
	ljmp	00126$
00251$:
;	realloc.c:103: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	mov	a,_realloc_prev_free_65536_67
	orl	a,(_realloc_prev_free_65536_67 + 1)
	jz	00118$
	mov	dpl,_realloc_prev_free_65536_67
	mov	dph,(_realloc_prev_free_65536_67 + 1)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	cjne	a,ar0,00118$
	mov	a,r7
	cjne	a,ar2,00118$
;	realloc.c:105: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	mov	r3,_realloc_prev_free_65536_67
	mov	r4,(_realloc_prev_free_65536_67 + 1)
	mov	r7,#0x00
	mov	ar1,r0
	mov	ar5,r2
	mov	r6,#0x00
	clr	c
	mov	a,_realloc_oldblocksize_65536_67
	subb	a,_realloc_blocksize_65536_67
	mov	a,(_realloc_oldblocksize_65536_67 + 1)
	subb	a,(_realloc_blocksize_65536_67 + 1)
	mov	_realloc_sloc1_1_0,c
	jc	00135$
	mov	_realloc_sloc2_1_0,_realloc_blocksize_65536_67
	mov	(_realloc_sloc2_1_0 + 1),(_realloc_blocksize_65536_67 + 1)
	sjmp	00136$
00135$:
	mov	_realloc_sloc2_1_0,_realloc_oldblocksize_65536_67
	mov	(_realloc_sloc2_1_0 + 1),(_realloc_oldblocksize_65536_67 + 1)
00136$:
	mov	_memmove_PARM_2,r1
	mov	(_memmove_PARM_2 + 1),r5
	mov	(_memmove_PARM_2 + 2),r6
	mov	_memmove_PARM_3,_realloc_sloc2_1_0
	mov	(_memmove_PARM_3 + 1),(_realloc_sloc2_1_0 + 1)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	_memmove
;	realloc.c:106: h = prev_free;
	mov	r0,_realloc_prev_free_65536_67
	mov	r2,(_realloc_prev_free_65536_67 + 1)
;	realloc.c:107: *pf = next_free;
	mov	dpl,_realloc_pf_65536_67
	mov	dph,(_realloc_pf_65536_67 + 1)
	mov	a,_realloc_next_free_65536_67
	movx	@dptr,a
	mov	a,(_realloc_next_free_65536_67 + 1)
	inc	dptr
	movx	@dptr,a
;	realloc.c:108: f = pf;
	mov	_realloc_sloc0_1_0,_realloc_pf_65536_67
	mov	(_realloc_sloc0_1_0 + 1),(_realloc_pf_65536_67 + 1)
00118$:
;	realloc.c:111: if(next_free && next_free == h->next) // Merge with following block
	mov	a,_realloc_next_free_65536_67
	orl	a,(_realloc_next_free_65536_67 + 1)
	jz	00121$
	mov	dpl,r0
	mov	dph,r2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	cjne	a,_realloc_next_free_65536_67,00121$
	mov	a,r7
	cjne	a,(_realloc_next_free_65536_67 + 1),00121$
;	realloc.c:113: h->next = next_free->next;
	mov	dpl,_realloc_next_free_65536_67
	mov	dph,(_realloc_next_free_65536_67 + 1)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:114: *f = next_free->next_free;
	mov	dpl,_realloc_next_free_65536_67
	mov	dph,(_realloc_next_free_65536_67 + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,_realloc_sloc0_1_0
	mov	dph,(_realloc_sloc0_1_0 + 1)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00121$:
;	realloc.c:117: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	mov	a,#0x04
	add	a,_realloc_blocksize_65536_67
	mov	r6,a
	clr	a
	addc	a,(_realloc_blocksize_65536_67 + 1)
	mov	r7,a
	clr	c
	mov	a,_realloc_maxblocksize_65536_67
	subb	a,r6
	mov	a,(_realloc_maxblocksize_65536_67 + 1)
	subb	a,r7
	jc	00124$
;	realloc.c:119: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
	mov	ar6,r0
	mov	ar7,r2
	mov	a,_realloc_blocksize_65536_67
	add	a,r6
	mov	r6,a
	mov	a,(_realloc_blocksize_65536_67 + 1)
	addc	a,r7
	mov	r7,a
;	realloc.c:120: newheader->next = h->next;
	mov	dpl,r0
	mov	dph,r2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	realloc.c:121: newheader->next_free = *f;
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,_realloc_sloc0_1_0
	mov	dph,(_realloc_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r1
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	realloc.c:122: *f = newheader;
	mov	dpl,_realloc_sloc0_1_0
	mov	dph,(_realloc_sloc0_1_0 + 1)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:123: h->next = newheader;
	mov	dpl,r0
	mov	dph,r2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00124$:
;	realloc.c:126: return(&(h->next_free));
	mov	a,#0x02
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r0
	mov	dph,r2
	ret
00126$:
;	realloc.c:129: if(ret = malloc(size))
	mov	dpl,_realloc_PARM_2
	mov	dph,(_realloc_PARM_2 + 1)
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	ar4,r6
	mov	ar5,r7
	mov	a,r6
	orl	a,r7
	jz	00128$
;	realloc.c:131: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	mov	a,_realloc_oldblocksize_65536_67
	add	a,#0xfe
	mov	r6,a
	mov	a,(_realloc_oldblocksize_65536_67 + 1)
	addc	a,#0xff
	mov	r7,a
;	realloc.c:132: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
	mov	ar1,r4
	mov	ar2,r5
	mov	r3,#0x00
	clr	c
	mov	a,r6
	subb	a,_realloc_PARM_2
	mov	a,r7
	subb	a,(_realloc_PARM_2 + 1)
	mov	_realloc_sloc1_1_0,c
	jc	00137$
	mov	_realloc_sloc2_1_0,_realloc_PARM_2
	mov	(_realloc_sloc2_1_0 + 1),(_realloc_PARM_2 + 1)
	sjmp	00138$
00137$:
	mov	_realloc_sloc2_1_0,r6
	mov	(_realloc_sloc2_1_0 + 1),r7
00138$:
	mov	___memcpy_PARM_2,_realloc_ptr_65536_66
	mov	(___memcpy_PARM_2 + 1),(_realloc_ptr_65536_66 + 1)
	mov	(___memcpy_PARM_2 + 2),(_realloc_ptr_65536_66 + 2)
	mov	___memcpy_PARM_3,_realloc_sloc2_1_0
	mov	(___memcpy_PARM_3 + 1),(_realloc_sloc2_1_0 + 1)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar5
	push	ar4
	lcall	___memcpy
;	realloc.c:133: free(ptr);
	mov	dpl,_realloc_ptr_65536_66
	mov	dph,(_realloc_ptr_65536_66 + 1)
	mov	b,(_realloc_ptr_65536_66 + 2)
	lcall	_free
	pop	ar4
	pop	ar5
;	realloc.c:134: return(ret);
	mov	dpl,r4
	mov	dph,r5
	ret
00128$:
;	realloc.c:137: return(0);
	mov	dptr,#0x0000
;	realloc.c:138: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
