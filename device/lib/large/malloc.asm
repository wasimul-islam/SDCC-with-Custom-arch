;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module malloc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_init
	.globl ___sdcc_heap_free
	.globl _malloc
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
_malloc_sloc0_1_0:
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___sdcc_heap_free::
	.ds 2
_malloc_size_65536_42:
	.ds 2
_malloc_h_65536_43:
	.ds 2
_malloc_f_65536_43:
	.ds 2
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
;Allocation info for local variables in function '__sdcc_heap_init'
;------------------------------------------------------------
;	malloc.c:65: void __sdcc_heap_init(void)
;	-----------------------------------------
;	 function __sdcc_heap_init
;	-----------------------------------------
___sdcc_heap_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	malloc.c:67: __sdcc_heap_free = HEAP_START;
	mov	dptr,#___sdcc_heap_free
	mov	a,#___sdcc_heap
	movx	@dptr,a
	mov	a,#(___sdcc_heap >> 8)
	inc	dptr
	movx	@dptr,a
;	malloc.c:68: __sdcc_heap_free->next = HEAP_END;
	mov	dptr,#___sdcc_heap_size
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00103$
	dec	r7
00103$:
	mov	a,r6
	add	a,#___sdcc_heap
	mov	r6,a
	mov	a,r7
	addc	a,#(___sdcc_heap >> 8)
	mov	r7,a
	mov	dptr,#___sdcc_heap
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	malloc.c:69: __sdcc_heap_free->next_free = 0;
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	malloc.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_malloc_sloc0_1_0'
;size                      Allocated with name '_malloc_size_65536_42'
;h                         Allocated with name '_malloc_h_65536_43'
;f                         Allocated with name '_malloc_f_65536_43'
;blocksize                 Allocated with name '_malloc_blocksize_196608_45'
;newheader                 Allocated with name '_malloc_newheader_327680_47'
;------------------------------------------------------------
;	malloc.c:73: void HEAPSPACE *malloc(size_t size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
_malloc:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_malloc_size_65536_42
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	malloc.c:82: if(!__sdcc_heap_free)
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	malloc.c:83: __sdcc_heap_init();
	lcall	___sdcc_heap_init
00102$:
;	malloc.c:86: if(!size || size + offsetof(struct header, next_free) < size)
	mov	dptr,#_malloc_size_65536_42
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00103$
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00104$
00103$:
;	malloc.c:87: return(0);
	mov	dptr,#0x0000
	ret
00104$:
;	malloc.c:88: size += offsetof(struct header, next_free);
	mov	dptr,#_malloc_size_65536_42
	mov	a,#0x02
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	malloc.c:89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	mov	dptr,#_malloc_size_65536_42
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	subb	a,#0x00
	jnc	00107$
;	malloc.c:90: size = sizeof(struct header);
	mov	dptr,#_malloc_size_65536_42
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00107$:
;	malloc.c:92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_malloc_h_65536_43
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_malloc_f_65536_43
	mov	a,#___sdcc_heap_free
	movx	@dptr,a
	mov	a,#(___sdcc_heap_free >> 8)
	inc	dptr
	movx	@dptr,a
00115$:
	mov	dptr,#_malloc_h_65536_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00151$
	ljmp	00113$
00151$:
;	malloc.c:94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	mov	ar0,r6
	mov	ar1,r7
	mov	a,r2
	clr	c
	subb	a,r0
	mov	r2,a
	mov	a,r3
	subb	a,r1
	mov	r3,a
;	malloc.c:95: if(blocksize >= size) // Found free block of sufficient size.
	mov	ar0,r2
	mov	ar1,r3
	mov	dptr,#_malloc_size_65536_42
	movx	a,@dptr
	mov	_malloc_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_malloc_sloc0_1_0 + 1),a
	clr	c
	mov	a,r0
	subb	a,_malloc_sloc0_1_0
	mov	a,r1
	subb	a,(_malloc_sloc0_1_0 + 1)
	jnc	00152$
	ljmp	00116$
00152$:
;	malloc.c:97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
	mov	a,#0x04
	add	a,_malloc_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_malloc_sloc0_1_0 + 1)
	mov	r1,a
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	subb	a,r1
	jc	00109$
;	malloc.c:99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
	mov	ar2,r6
	mov	ar3,r7
	mov	a,_malloc_sloc0_1_0
	add	a,r2
	mov	r2,a
	mov	a,(_malloc_sloc0_1_0 + 1)
	addc	a,r3
	mov	r3,a
;	malloc.c:100: newheader->next = h->next;
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	malloc.c:101: newheader->next_free = h->next_free;
	mov	a,#0x02
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	malloc.c:102: *f = newheader;
	mov	dptr,#_malloc_f_65536_43
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	malloc.c:103: h->next = newheader;
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00110$
00109$:
;	malloc.c:106: *f = h->next_free;
	mov	dptr,#_malloc_f_65536_43
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00110$:
;	malloc.c:108: return(&(h->next_free));
	mov	dptr,#_malloc_h_65536_43
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	ret
00116$:
;	malloc.c:92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_malloc_f_65536_43
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_malloc_h_65536_43
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00115$
00113$:
;	malloc.c:112: return(0);
	mov	dptr,#0x0000
;	malloc.c:113: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
