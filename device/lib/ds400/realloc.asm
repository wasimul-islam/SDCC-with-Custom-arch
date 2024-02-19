;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
mcon	=	0xC6
F1	=	0xD1	; user flag
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
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
_realloc_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_realloc_PARM_2:
	.ds 2
_realloc_ptr_65536_64:
	.ds 4
_realloc_h_65536_65:
	.ds 3
_realloc_next_free_65536_65:
	.ds 3
_realloc_prev_free_65536_65:
	.ds 3
_realloc_f_65536_65:
	.ds 3
_realloc_pf_65536_65:
	.ds 3
_realloc_blocksize_65536_65:
	.ds 2
_realloc_oldblocksize_65536_65:
	.ds 2
_realloc_maxblocksize_65536_65:
	.ds 2
_realloc_newheader_196608_71:
	.ds 3
_realloc_oldsize_131072_72:
	.ds 2
_realloc_sloc0_1_0:
	.ds 4
_realloc_sloc1_1_0:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;ptr                       Allocated with name '_realloc_ptr_65536_64'
;ret                       Allocated to registers r5 r6 r7 
;h                         Allocated with name '_realloc_h_65536_65'
;next_free                 Allocated with name '_realloc_next_free_65536_65'
;prev_free                 Allocated with name '_realloc_prev_free_65536_65'
;f                         Allocated with name '_realloc_f_65536_65'
;pf                        Allocated with name '_realloc_pf_65536_65'
;blocksize                 Allocated with name '_realloc_blocksize_65536_65'
;oldblocksize              Allocated with name '_realloc_oldblocksize_65536_65'
;maxblocksize              Allocated with name '_realloc_maxblocksize_65536_65'
;newheader                 Allocated with name '_realloc_newheader_196608_71'
;oldsize                   Allocated with name '_realloc_oldsize_131072_72'
;sloc0                     Allocated with name '_realloc_sloc0_1_0'
;sloc1                     Allocated with name '_realloc_sloc1_1_0'
;------------------------------------------------------------
;	realloc.c:58: void HEAPSPACE *realloc(void *ptr, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
_realloc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_realloc_ptr_65536_64
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	realloc.c:69: if(!__sdcc_heap_free)
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00102$
00239$:
;	realloc.c:70: __sdcc_heap_init();
	lcall	___sdcc_heap_init
00102$:
;	realloc.c:73: if(!ptr)
	mov	dptr,#_realloc_ptr_65536_64
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00104$
00240$:
;	realloc.c:74: return(malloc(size));
	inc	dps
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
	lcall	_malloc
	ljmp	00133$
00104$:
;	realloc.c:76: if(!size)
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00106$
00241$:
;	realloc.c:78: free(ptr);
	inc	dps
	mov	dptr,#_realloc_ptr_65536_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_free
;	realloc.c:79: return(0);
	mov  dptr,#0x0000
	ljmp	00133$
00106$:
;	realloc.c:82: prev_free = 0, pf = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_prev_free_65536_65
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_pf_65536_65
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	realloc.c:83: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	mov	dptr,#___sdcc_heap_free
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_f_65536_65
	mov	a,#___sdcc_heap_free
	movx	@dptr,a
	inc	dptr
	mov	a,#(___sdcc_heap_free >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___sdcc_heap_free >> 16)
	movx	@dptr,a
	mov	dptr,#_realloc_ptr_65536_64
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_sloc0_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
00131$:
	mov	a,r1
	orl	a,r2
	orl	a,r3
	jnz	00242$
	ljmp	00107$
00242$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_sloc1_1_0
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_realloc_sloc0_1_0
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_realloc_sloc1_1_0
	clr	c
	movx	a,@dptr
	subb	a,r7
	inc	dptr
	movx	a,@dptr
	subb	a,r0
	inc	dptr
	movx	a,@dptr
	subb	a,r4
	jnc  00107$
00243$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_prev_free_65536_65
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_realloc_f_65536_65
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_pf_65536_65
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	a,#0x03
	add	a,r1
	mov	dpl1,a
	clr	a
	addc	a,r2
	mov	dph1,a
	clr	a
	addc	a,r3
	mov	dpx1,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_f_65536_65
	mov	a,dpl1
	movx	@dptr,a
	inc	dptr
	mov	a,dph1
	movx	@dptr,a
	inc	dptr
	mov	a,dpx1
	movx	@dptr,a
	inc	dps
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	mov	r3,a
	mov     dps, #1
	lcall	__decdptr
	lcall	__decdptr
	mov	dps,#0
	ljmp	00131$
00107$:
;	realloc.c:84: next_free = h;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_next_free_65536_65
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	realloc.c:86: if(size + offsetof(struct header, next_free) < size) // Handle overflow
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	add	a,#0x03
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r6,a
	mov	dptr,#_realloc_PARM_2
	clr	c
	mov	a,r5
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r6
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00109$
00244$:
;	realloc.c:87: return(0);
	mov  dptr,#0x0000
	ljmp	00133$
00109$:
;	realloc.c:88: blocksize = size + offsetof(struct header, next_free);
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	add	a,#0x03
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_blocksize_65536_65
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	realloc.c:89: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	mov	dptr,#_realloc_blocksize_65536_65
	clr	c
	movx	a,@dptr
	subb	a,#0x06
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	jnc  00111$
00245$:
;	realloc.c:90: blocksize = sizeof(struct header);
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_blocksize_65536_65
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00111$:
;	realloc.c:92: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	mov	dptr,#_realloc_ptr_65536_64
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	add	a,#0xfd
	mov	r7,a
	mov	a,r0
	addc	a,#0xff
	mov	r0,a
	mov	a,r1
	addc	a,#0xff
	mov	r1,a
	mov	dptr,#_realloc_h_65536_65
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	realloc.c:93: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	mov	dptr,#_realloc_h_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov	dps, #1
	mov	dptr, #_realloc_sloc1_1_0
	dec	dps
	movx	a,@dptr
	inc	dptr
	inc	dps
	movx	@dptr,a
	dec	dps
	movx	a,@dptr
	inc	dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#_realloc_sloc1_1_0
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_realloc_h_65536_65
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_realloc_oldblocksize_65536_65
	clr	c
	mov	a,r5
	subb	a,r0
	movx	@dptr,a
	mov	a,r6
	subb	a,r1
	inc	dptr
	movx	@dptr,a
;	realloc.c:95: maxblocksize = oldblocksize;
	mov	dptr,#_realloc_oldblocksize_65536_65
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_maxblocksize_65536_65
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
;	realloc.c:96: if(prev_free && prev_free->next == h) // Can merge with previous block
	mov	dptr,#_realloc_prev_free_65536_65
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00113$
00246$:
	mov	dptr,#_realloc_prev_free_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_realloc_h_65536_65
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00247$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00247$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00247$
	sjmp	00248$
00247$:
	sjmp 00113$
00248$:
;	realloc.c:97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
	mov	dptr,#_realloc_h_65536_65
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_realloc_prev_free_65536_65
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r2
	subb	a,r7
	mov	r2,a
	mov	a,r3
	subb	a,r0
	mov	r3,a
	mov	dptr,#_realloc_oldblocksize_65536_65
	mov	dps, #1
	mov	dptr, #_realloc_maxblocksize_65536_65
	dec	dps
	movx	a,@dptr
	add	a,r2
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
00113$:
;	realloc.c:98: if(next_free == h->next) // Can merge with next block
	mov	dptr,#_realloc_sloc1_1_0
	mov     dps, #1
	mov     dptr, #_realloc_next_free_65536_65
	movx	a,@dptr
	mov	dps,#0
	mov	b,a
	movx	a,@dptr
	cjne	a,b,00249$
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	mov	b,a
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00249$
	mov	dps,#1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	mov	b,a
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00249$
	sjmp	00250$
00249$:
	sjmp 00116$
00250$:
;	realloc.c:99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
	mov	dptr,#_realloc_next_free_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_realloc_next_free_65536_65
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r2
	subb	a,r7
	mov	r2,a
	mov	a,r3
	subb	a,r0
	mov	r3,a
	mov	dptr,#_realloc_maxblocksize_65536_65
	movx	a,@dptr
	add	a,r2
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	movx	@dptr,a
00116$:
;	realloc.c:101: if(blocksize <= maxblocksize) // Can resize in place.
	mov	dptr,#_realloc_maxblocksize_65536_65
	mov	dps, #1
	mov	dptr, #_realloc_blocksize_65536_65
	dec	dps
	clr	c
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	jnc	00251$
	ljmp	00126$
00251$:
;	realloc.c:103: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	mov	dptr,#_realloc_prev_free_65536_65
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00252$
	ljmp	00118$
00252$:
	mov	dptr,#_realloc_prev_free_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_realloc_h_65536_65
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00253$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00253$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00253$
	sjmp	00254$
00253$:
	ljmp	00118$
00254$:
;	realloc.c:105: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	mov	dptr,#_realloc_prev_free_65536_65
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r7,#0x00
	mov	dptr,#_realloc_h_65536_65
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar6,r1
	mov	r1,#0x00
	mov	dptr,#_realloc_oldblocksize_65536_65
	mov	dps, #1
	mov	dptr, #_realloc_blocksize_65536_65
	dec	dps
	clr	c
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	mov	_realloc_sloc2_1_0,c
	jb   _realloc_sloc2_1_0,00135$
00255$:
	mov	dptr,#_realloc_blocksize_65536_65
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_sloc1_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	sjmp 00136$
00135$:
	mov	dptr,#_realloc_oldblocksize_65536_65
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_sloc1_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
00136$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_memmove_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#_realloc_sloc1_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_memmove_PARM_3
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r7
	lcall	_memmove
;	realloc.c:106: h = prev_free;
	mov	dptr,#_realloc_prev_free_65536_65
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_h_65536_65
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
;	realloc.c:107: *pf = next_free;
	mov	dptr,#_realloc_pf_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov     dps, #1
	mov     dptr, #_realloc_next_free_65536_65
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
;	realloc.c:108: f = pf;
	mov	dptr,#_realloc_pf_65536_65
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_f_65536_65
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
00118$:
;	realloc.c:111: if(next_free && next_free == h->next) // Merge with following block
	mov	dptr,#_realloc_next_free_65536_65
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00256$
	ljmp	00121$
00256$:
	mov	dptr,#_realloc_h_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_realloc_next_free_65536_65
	movx	a,@dptr
	cjne	a,ar2,00257$
	inc	dptr
	movx	a,@dptr
	cjne	a,ar3,00257$
	inc	dptr
	movx	a,@dptr
	cjne	a,ar4,00257$
	sjmp	00258$
00257$:
	sjmp 00121$
00258$:
;	realloc.c:113: h->next = next_free->next;
	mov	dptr,#_realloc_next_free_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_realloc_h_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	realloc.c:114: *f = next_free->next_free;
	mov	dptr,#_realloc_next_free_65536_65
	movx	a,@dptr
	add	a,#0x03
	mov	dpl1,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	dph1,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	dpx1,a
	inc	dps
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r4,a
	mov	dps,#0
	mov	dptr,#_realloc_f_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
00121$:
;	realloc.c:117: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	mov	dptr,#_realloc_blocksize_65536_65
	movx	a,@dptr
	add	a,#0x06
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	mov	dptr,#_realloc_maxblocksize_65536_65
	clr	c
	movx	a,@dptr
	subb	a,r2
	inc	dptr
	movx	a,@dptr
	subb	a,r3
	jnc	00259$
	ljmp	00124$
00259$:
;	realloc.c:119: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
	mov	dptr,#_realloc_h_65536_65
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_realloc_blocksize_65536_65
	movx	a,@dptr
	add	a,r2
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_realloc_newheader_196608_71
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	realloc.c:120: newheader->next = h->next;
	mov	dptr,#_realloc_h_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_realloc_newheader_196608_71
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	realloc.c:121: newheader->next_free = *f;
	mov	dptr,#_realloc_newheader_196608_71
	movx	a,@dptr
	add	a,#0x03
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r7,a
	mov	dptr,#_realloc_f_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	dpx,r7
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	realloc.c:122: *f = newheader;
	mov	dptr,#_realloc_f_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov     dps, #1
	mov     dptr, #_realloc_newheader_196608_71
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
;	realloc.c:123: h->next = newheader;
	mov	dptr,#_realloc_h_65536_65
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	pop	dph
	pop	dpl
	mov     dps, #1
	mov     dptr, #_realloc_newheader_196608_71
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
00124$:
;	realloc.c:126: return(&(h->next_free));
	mov	dptr,#_realloc_h_65536_65
	movx	a,@dptr
	add	a,#0x03
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	ljmp	00133$
00126$:
;	realloc.c:129: if(ret = malloc(size))
	inc	dps
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
;	genAssign: resultIsFar = TRUE
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jnz	00260$
	ljmp	00128$
00260$:
;	realloc.c:131: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	mov	dptr,#_realloc_oldblocksize_65536_65
	movx	a,@dptr
	add	a,#0xfd
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_realloc_oldsize_131072_72
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	realloc.c:132: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
;	genAssign: resultIsFar = FALSE
	mov	ar4,r5
	mov	ar0,r6
	mov	ar1,r7
	mov	r2,#0x00
	mov	dptr,#_realloc_oldsize_131072_72
	mov	dps, #1
	mov	dptr, #_realloc_PARM_2
	dec	dps
	clr	c
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	mov	_realloc_sloc2_1_0,c
	jb   _realloc_sloc2_1_0,00137$
00261$:
	mov	dptr,#_realloc_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_sloc1_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	sjmp 00138$
00137$:
	mov	dptr,#_realloc_oldsize_131072_72
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_realloc_sloc1_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
00138$:
	mov	dptr,#_realloc_ptr_65536_64
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___memcpy_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#_realloc_sloc1_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___memcpy_PARM_3
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r0
	mov	dpx,r1
	mov	b,r2
	lcall	___memcpy
	pop	ar7
	pop	ar6
	pop	ar5
;	realloc.c:133: free(ptr);
	push	ar5
	push	ar6
	push	ar7
	inc	dps
	mov	dptr,#_realloc_ptr_65536_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_free
	pop	ar7
	pop	ar6
	pop	ar5
;	realloc.c:134: return(ret);
	mov	dpl,r5
	mov	dph,r6
	mov	dpx,r7
;	realloc.c:137: return(0);
;	realloc.c:138: }
	ret
00128$:
	mov     dptr,#0x0000
00133$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
