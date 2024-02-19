;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module malloc
	.optsdcc -mmcs51 --model-small
	
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
;size                      Allocated to stack - _bp +1
;h                         Allocated to stack - _bp +5
;f                         Allocated to registers r2 r3 
;blocksize                 Allocated to registers r7 r6 
;newheader                 Allocated to stack - _bp +7
;sloc0                     Allocated to stack - _bp +11
;sloc1                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	malloc.c:73: void HEAPSPACE *malloc(size_t size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
_malloc:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
	mov	r6,dpl
	mov	r7,dph
;	malloc.c:82: if(!__sdcc_heap_free)
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	malloc.c:83: __sdcc_heap_init();
	push	ar7
	push	ar6
	lcall	___sdcc_heap_init
	pop	ar6
	pop	ar7
00102$:
;	malloc.c:86: if(!size || size + offsetof(struct header, next_free) < size)
	mov	a,r6
	orl	a,r7
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
	ljmp	00117$
00104$:
;	malloc.c:88: size += offsetof(struct header, next_free);
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
;	malloc.c:89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,#0x04
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00107$
;	malloc.c:90: size = sizeof(struct header);
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x04
	inc	r0
	mov	@r0,#0x00
00107$:
;	malloc.c:92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	r2,#___sdcc_heap_free
	mov	r3,#(___sdcc_heap_free >> 8)
00115$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00158$
	ljmp	00113$
00158$:
;	malloc.c:94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	push	ar2
	push	ar3
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar2,r5
	mov	ar3,r4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	r3,a
	mov	ar7,r2
	mov	ar6,r3
;	malloc.c:95: if(blocksize >= size) // Found free block of sufficient size.
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,r7
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	pop	ar3
	pop	ar2
	jnc	00159$
	ljmp	00116$
00159$:
;	malloc.c:97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
	push	ar2
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	clr	c
	mov	a,r7
	subb	a,r2
	mov	a,r6
	subb	a,r3
	pop	ar3
	pop	ar2
	jc	00109$
;	malloc.c:99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	malloc.c:100: newheader->next = h->next;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	malloc.c:101: newheader->next_free = h->next_free;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
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
;	malloc.c:102: *f = newheader;
	mov	dpl,r2
	mov	dph,r3
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	malloc.c:103: h->next = newheader;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
	inc	r1
	mov	a,@r1
	inc	dptr
	movx	@dptr,a
	sjmp	00110$
00109$:
;	malloc.c:106: *f = h->next_free;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00110$:
;	malloc.c:108: return(&(h->next_free));
	mov	a,_bp
	add	a,#0x05
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
	sjmp	00117$
00116$:
;	malloc.c:92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	ar2,r6
	mov	ar3,r7
	mov	dpl,r6
	mov	dph,r7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	ljmp	00115$
00113$:
;	malloc.c:112: return(0);
	mov	dptr,#0x0000
00117$:
;	malloc.c:113: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
