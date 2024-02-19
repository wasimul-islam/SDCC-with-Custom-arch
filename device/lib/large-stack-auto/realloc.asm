;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_init
	.globl ___memcpy
	.globl _memmove
	.globl _free
	.globl _malloc
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
;size                      Allocated to stack - _bp -4
;ptr                       Allocated to stack - _bp +1
;ret                       Allocated to registers r4 r5 
;h                         Allocated to stack - _bp +9
;next_free                 Allocated to stack - _bp +11
;prev_free                 Allocated to stack - _bp +13
;f                         Allocated to registers r5 r6 
;pf                        Allocated to stack - _bp +15
;blocksize                 Allocated to registers r3 r4 
;oldblocksize              Allocated to stack - _bp +17
;maxblocksize              Allocated to stack - _bp +19
;newheader                 Allocated to stack - _bp +21
;oldsize                   Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +26
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +6
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
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x13
	mov	sp,a
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
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	realloc.c:74: return(malloc(size));
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_malloc
	mov	r3,dpl
	mov  r4,dph
	ljmp	00133$
00104$:
;	realloc.c:76: if(!size)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
;	realloc.c:78: free(ptr);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free
;	realloc.c:79: return(0);
	mov	dptr,#0x0000
	ljmp	00133$
00106$:
;	realloc.c:82: prev_free = 0, pf = 0;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
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
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r7
	subb	a,r6
	pop	ar6
	pop	ar5
	jnc	00107$
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
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
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
;	realloc.c:86: if(size + offsetof(struct header, next_free) < size) // Handle overflow
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r5
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	pop	ar6
	pop	ar5
	jnc	00109$
;	realloc.c:87: return(0);
	mov	dptr,#0x0000
	ljmp	00133$
00109$:
;	realloc.c:88: blocksize = size + offsetof(struct header, next_free);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
;	realloc.c:89: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	clr	c
	mov	a,r3
	subb	a,#0x04
	mov	a,r4
	subb	a,#0x00
	jnc	00111$
;	realloc.c:90: blocksize = sizeof(struct header);
	mov	r3,#0x04
	mov	r4,#0x00
00111$:
;	realloc.c:92: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,r3
	add	a,#0xfe
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	realloc.c:93: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	ar3,r7
	mov	ar4,r2
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r3
	clr	c
	subb	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	subb	a,@r0
	mov	r4,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	realloc.c:95: maxblocksize = oldblocksize;
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
;	realloc.c:96: if(prev_free && prev_free->next == h) // Can merge with previous block
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	pop	ar4
	pop	ar3
	jz	00113$
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	cjne	a,ar3,00247$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00247$
	sjmp	00248$
00247$:
	pop	ar4
	pop	ar3
	sjmp	00113$
00248$:
;	realloc.c:97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	realloc.c:137: return(0);
	pop	ar4
	pop	ar3
;	realloc.c:97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
00113$:
;	realloc.c:98: if(next_free == h->next) // Can merge with next block
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	cjne	a,ar7,00249$
	inc	r0
	mov	a,@r0
	cjne	a,ar2,00249$
	sjmp	00250$
00249$:
	sjmp	00116$
00250$:
;	realloc.c:99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	r4,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	realloc.c:137: return(0);
	pop	ar4
	pop	ar3
;	realloc.c:99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
00116$:
;	realloc.c:101: if(blocksize <= maxblocksize) // Can resize in place.
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00251$
	ljmp	00126$
00251$:
;	realloc.c:103: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00252$
	ljmp	00118$
00252$:
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00253$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00253$
	sjmp	00254$
00253$:
	ljmp	00118$
00254$:
;	realloc.c:105: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	b0,c
	jc	00135$
	mov	ar6,r3
	mov	ar5,r4
	sjmp	00136$
00135$:
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
00136$:
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
;	realloc.c:106: h = prev_free;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
;	realloc.c:107: *pf = next_free;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
	inc	r1
	mov	a,@r1
	inc	dptr
	movx	@dptr,a
;	realloc.c:108: f = pf;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
;	realloc.c:137: return(0);
	pop	ar4
	pop	ar3
;	realloc.c:108: f = pf;
00118$:
;	realloc.c:111: if(next_free && next_free == h->next) // Merge with following block
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00121$
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00257$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00257$
	sjmp	00258$
00257$:
	sjmp	00121$
00258$:
;	realloc.c:113: h->next = next_free->next;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:114: *f = next_free->next_free;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00121$:
;	realloc.c:117: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	mov	a,#0x04
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r7
	jc	00124$
;	realloc.c:119: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,r3
	add	a,r2
	mov	r3,a
	mov	a,r4
	addc	a,r7
	mov	r4,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	realloc.c:120: newheader->next = h->next;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	realloc.c:121: newheader->next_free = *f;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	realloc.c:122: *f = newheader;
	mov	dpl,r5
	mov	dph,r6
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	realloc.c:123: h->next = newheader;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
	inc	r1
	mov	a,@r1
	inc	dptr
	movx	@dptr,a
00124$:
;	realloc.c:126: return(&(h->next_free));
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	00133$
00126$:
;	realloc.c:129: if(ret = malloc(size))
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	ar4,r6
	mov	ar5,r7
	mov	a,r6
	orl	a,r7
	jnz	00260$
	ljmp	00128$
00260$:
;	realloc.c:131: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	add	a,#0xfe
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r7,a
;	realloc.c:132: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	b0,c
	jc	00137$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	sjmp	00138$
00137$:
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00138$:
	mov	ar3,r4
	mov	ar6,r5
	mov	r7,#0x00
	push	ar5
	push	ar4
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	realloc.c:133: free(ptr);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free
	pop	ar4
	pop	ar5
;	realloc.c:134: return(ret);
	mov	dpl,r4
	mov	dph,r5
	sjmp	00133$
00128$:
;	realloc.c:137: return(0);
	mov	dptr,#0x0000
00133$:
;	realloc.c:138: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
