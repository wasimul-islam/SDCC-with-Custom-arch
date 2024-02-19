;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mmcs51 --model-medium
	
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
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc1_1_0:
	.ds 2
_realloc_sloc2_1_0:
	.ds 3
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
_realloc_sloc3_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_realloc_PARM_2:
	.ds 2
_realloc_ptr_65536_66:
	.ds 3
_realloc_h_65536_67:
	.ds 2
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
_realloc_newheader_196608_73:
	.ds 2
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
;sloc0                     Allocated with name '_realloc_sloc0_1_0'
;sloc1                     Allocated with name '_realloc_sloc1_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#_realloc_ptr_65536_66
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
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
	mov	r0,#_realloc_ptr_65536_66
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00104$
;	realloc.c:74: return(malloc(size));
	mov	r0,#_realloc_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	ljmp	_malloc
00104$:
;	realloc.c:76: if(!size)
	mov	r0,#_realloc_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00106$
;	realloc.c:78: free(ptr);
	mov	r0,#_realloc_ptr_65536_66
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	_free
;	realloc.c:79: return(0);
	mov	dptr,#0x0000
	ret
00106$:
;	realloc.c:82: prev_free = 0, pf = 0;
	mov	r0,#_realloc_prev_free_65536_67
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_realloc_pf_65536_67
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	realloc.c:83: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#___sdcc_heap_free
	mov	r6,#(___sdcc_heap_free >> 8)
00131$:
	mov	a,r2
	orl	a,r7
	jz	00107$
	push	ar5
	push	ar6
	mov	r0,#_realloc_ptr_65536_66
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r7
	subb	a,r6
	pop	ar6
	pop	ar5
	jnc	00107$
	mov	r0,#_realloc_prev_free_65536_67
	mov	a,r2
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	mov	r0,#_realloc_pf_65536_67
	mov	a,r5
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,#0x02
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	ar5,r4
	mov	ar6,r3
	mov	dpl,r4
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00131$
00107$:
;	realloc.c:84: next_free = h;
	push	ar5
	push	ar6
	mov	r0,#_realloc_next_free_65536_67
	mov	a,r2
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	realloc.c:86: if(size + offsetof(struct header, next_free) < size) // Handle overflow
	mov	r0,#_realloc_PARM_2
	movx	a,@r0
	add	a,#0x02
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r6,a
	mov	r0,#_realloc_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r5
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	pop	ar6
	pop	ar5
	jnc	00109$
;	realloc.c:87: return(0);
	mov	dptr,#0x0000
	ret
00109$:
;	realloc.c:88: blocksize = size + offsetof(struct header, next_free);
	mov	r0,#_realloc_PARM_2
	mov	r1,#_realloc_blocksize_65536_67
	movx	a,@r0
	add	a,#0x02
	movx	@r1,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	inc	r1
	movx	@r1,a
;	realloc.c:89: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	mov	r0,#_realloc_blocksize_65536_67
	clr	c
	movx	a,@r0
	subb	a,#0x04
	inc	r0
	movx	a,@r0
	subb	a,#0x00
	jnc	00111$
;	realloc.c:90: blocksize = sizeof(struct header);
	mov	r0,#_realloc_blocksize_65536_67
	mov	a,#0x04
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
00111$:
;	realloc.c:92: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	mov	r0,#_realloc_ptr_65536_66
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	a,r3
	add	a,#0xfe
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	r0,#_realloc_h_65536_67
	mov	a,r3
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
;	realloc.c:93: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	_realloc_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc0_1_0 + 1),a
	mov	r3,_realloc_sloc0_1_0
	mov	r4,(_realloc_sloc0_1_0 + 1)
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	mov	_realloc_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_realloc_sloc1_1_0 + 1),a
	mov	r0,#_realloc_oldblocksize_65536_67
	mov	a,r3
	clr	c
	subb	a,_realloc_sloc1_1_0
	movx	@r0,a
	mov	a,r4
	subb	a,(_realloc_sloc1_1_0 + 1)
	inc	r0
	movx	@r0,a
;	realloc.c:95: maxblocksize = oldblocksize;
	mov	r0,#_realloc_oldblocksize_65536_67
	mov	r1,#_realloc_maxblocksize_65536_67
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
;	realloc.c:96: if(prev_free && prev_free->next == h) // Can merge with previous block
	mov	r0,#_realloc_prev_free_65536_67
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00113$
	mov	r0,#_realloc_prev_free_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	cjne	a,ar3,00247$
	inc	r0
	movx	a,@r0
	cjne	a,ar4,00247$
	sjmp	00248$
00247$:
	sjmp	00113$
00248$:
;	realloc.c:97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
	mov	r0,#_realloc_prev_free_65536_67
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	a,_realloc_sloc1_1_0
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,(_realloc_sloc1_1_0 + 1)
	subb	a,r4
	mov	r4,a
	mov	r0,#_realloc_oldblocksize_65536_67
	mov	r1,#_realloc_maxblocksize_65536_67
	movx	a,@r0
	add	a,r3
	movx	@r1,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	inc	r1
	movx	@r1,a
;	realloc.c:137: return(0);
;	realloc.c:97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
00113$:
;	realloc.c:98: if(next_free == h->next) // Can merge with next block
	mov	r0,#_realloc_next_free_65536_67
	movx	a,@r0
	cjne	a,_realloc_sloc0_1_0,00249$
	inc	r0
	movx	a,@r0
	cjne	a,(_realloc_sloc0_1_0 + 1),00249$
	sjmp	00250$
00249$:
	sjmp	00116$
00250$:
;	realloc.c:99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
	mov	r0,#_realloc_next_free_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,#_realloc_next_free_65536_67
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	r4,a
	mov	r0,#_realloc_maxblocksize_65536_67
	movx	a,@r0
	add	a,r3
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	movx	@r0,a
;	realloc.c:137: return(0);
;	realloc.c:99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
00116$:
;	realloc.c:101: if(blocksize <= maxblocksize) // Can resize in place.
	mov	r0,#_realloc_blocksize_65536_67
	mov	r1,#_realloc_maxblocksize_65536_67
	clr	c
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	jnc	00251$
	ljmp	00126$
00251$:
;	realloc.c:103: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	mov	r0,#_realloc_prev_free_65536_67
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00252$
	ljmp	00118$
00252$:
	mov	r0,#_realloc_prev_free_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	cjne	a,ar2,00253$
	inc	r0
	movx	a,@r0
	cjne	a,ar7,00253$
	sjmp	00254$
00253$:
	ljmp	00118$
00254$:
;	realloc.c:105: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	mov	r0,#_realloc_prev_free_65536_67
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	r7,#0x00
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	mov	_realloc_sloc2_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_realloc_sloc2_1_0 + 1),a
	mov	(_realloc_sloc2_1_0 + 2),r7
	mov	r0,#_realloc_blocksize_65536_67
	mov	r1,#_realloc_oldblocksize_65536_67
	clr	c
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	subb	a,b
	mov	_realloc_sloc3_1_0,c
	jc	00135$
	mov	r0,#_realloc_blocksize_65536_67
	movx	a,@r0
	mov	_realloc_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_realloc_sloc1_1_0 + 1),a
	sjmp	00136$
00135$:
	mov	r0,#_realloc_oldblocksize_65536_67
	movx	a,@r0
	mov	_realloc_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_realloc_sloc1_1_0 + 1),a
00136$:
	mov	r0,#_memmove_PARM_2
	mov	a,_realloc_sloc2_1_0
	movx	@r0,a
	mov	a,(_realloc_sloc2_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	a,(_realloc_sloc2_1_0 + 2)
	inc	r0
	movx	@r0,a
	mov	r0,#_memmove_PARM_3
	mov	a,_realloc_sloc1_1_0
	movx	@r0,a
	mov	a,(_realloc_sloc1_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	_memmove
;	realloc.c:106: h = prev_free;
	mov	r0,#_realloc_prev_free_65536_67
	mov	r1,#_realloc_h_65536_67
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
;	realloc.c:107: *pf = next_free;
	mov	r0,#_realloc_pf_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	mov	r1,#_realloc_next_free_65536_67
	movx	a,@r1
	movx	@dptr,a
	inc	r1
	movx	a,@r1
	inc	dptr
	movx	@dptr,a
;	realloc.c:108: f = pf;
	mov	r0,#_realloc_pf_65536_67
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
00118$:
;	realloc.c:111: if(next_free && next_free == h->next) // Merge with following block
	mov	r0,#_realloc_next_free_65536_67
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00121$
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_realloc_next_free_65536_67
	movx	a,@r0
	cjne	a,ar4,00257$
	inc	r0
	movx	a,@r0
	cjne	a,ar7,00257$
	sjmp	00258$
00257$:
	sjmp	00121$
00258$:
;	realloc.c:113: h->next = next_free->next;
	mov	r0,#_realloc_next_free_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:114: *f = next_free->next_free;
	mov	r0,#_realloc_next_free_65536_67
	movx	a,@r0
	add	a,#0x02
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00121$:
;	realloc.c:117: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	mov	r0,#_realloc_blocksize_65536_67
	movx	a,@r0
	add	a,#0x04
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	r0,#_realloc_maxblocksize_65536_67
	clr	c
	movx	a,@r0
	subb	a,r4
	inc	r0
	movx	a,@r0
	subb	a,r7
	jc	00124$
;	realloc.c:119: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_realloc_blocksize_65536_67
	movx	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	mov	r7,a
	mov	r0,#_realloc_newheader_196608_73
	mov	a,r4
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	realloc.c:120: newheader->next = h->next;
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,#_realloc_newheader_196608_73
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	realloc.c:121: newheader->next_free = *f;
	mov	r0,#_realloc_newheader_196608_73
	movx	a,@r0
	add	a,#0x02
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:122: *f = newheader;
	mov	dpl,r5
	mov	dph,r6
	mov	r0,#_realloc_newheader_196608_73
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
;	realloc.c:123: h->next = newheader;
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	mov	r1,#_realloc_newheader_196608_73
	movx	a,@r1
	movx	@dptr,a
	inc	r1
	movx	a,@r1
	inc	dptr
	movx	@dptr,a
00124$:
;	realloc.c:126: return(&(h->next_free));
	mov	r0,#_realloc_h_65536_67
	movx	a,@r0
	add	a,#0x02
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ret
00126$:
;	realloc.c:129: if(ret = malloc(size))
	mov	r0,#_realloc_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	ar4,r6
	mov	ar5,r7
	mov	a,r6
	orl	a,r7
	jz	00128$
;	realloc.c:131: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	mov	r0,#_realloc_oldblocksize_65536_67
	movx	a,@r0
	add	a,#0xfe
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,#0xff
	mov	r7,a
;	realloc.c:132: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
	mov	_realloc_sloc2_1_0,r4
	mov	(_realloc_sloc2_1_0 + 1),r5
	mov	(_realloc_sloc2_1_0 + 2),#0x00
	mov	r0,#_realloc_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	mov	_realloc_sloc3_1_0,c
	jc	00137$
	mov	r0,#_realloc_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	sjmp	00138$
00137$:
	mov	ar2,r6
	mov	ar3,r7
00138$:
	mov	r0,#_realloc_ptr_65536_66
	mov	r1,#___memcpy_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#___memcpy_PARM_3
	mov	a,r2
	movx	@r0,a
	mov	a,r3
	inc	r0
	movx	@r0,a
	mov	dpl,_realloc_sloc2_1_0
	mov	dph,(_realloc_sloc2_1_0 + 1)
	mov	b,(_realloc_sloc2_1_0 + 2)
	push	ar5
	push	ar4
	lcall	___memcpy
;	realloc.c:133: free(ptr);
	mov	r0,#_realloc_ptr_65536_66
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
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
