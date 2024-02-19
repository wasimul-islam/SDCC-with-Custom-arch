;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module malloc
	.optsdcc -mds390 --model-flat24
	
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
	.globl ___sdcc_heap_free
	.globl _malloc
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
	.ds 3
_malloc_size_65536_39:
	.ds 2
_malloc_h_65536_40:
	.ds 3
_malloc_f_65536_40:
	.ds 3
_malloc_newheader_327680_44:
	.ds 3
_malloc_sloc0_1_0:
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
;Allocation info for local variables in function '__sdcc_heap_init'
;------------------------------------------------------------
;	malloc.c:65: void __sdcc_heap_init(void)
;	-----------------------------------------
;	 function __sdcc_heap_init
;	-----------------------------------------
___sdcc_heap_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	malloc.c:67: __sdcc_heap_free = HEAP_START;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___sdcc_heap_free
	mov	a,#___sdcc_heap
	movx	@dptr,a
	inc	dptr
	mov	a,#(___sdcc_heap >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___sdcc_heap >> 16)
	movx	@dptr,a
;	malloc.c:68: __sdcc_heap_free->next = HEAP_END;
	mov	r2,#___sdcc_heap
	mov	r3,#(___sdcc_heap >> 8)
	mov	r4,#(___sdcc_heap >> 16)
	mov	dptr,#___sdcc_heap_size
	clr	a
	movc	a,@a+dptr
	add	a,#0xff
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	addc	a,#0xff
	mov	r6,a
	mov	a,r5
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#___sdcc_heap
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	malloc.c:69: __sdcc_heap_free->next_free = 0;
	mov	dptr,#___sdcc_heap_free
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpx,r4
	mov	dph,r3
	mov	dpl,r2
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00101$:
;	malloc.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;size                      Allocated with name '_malloc_size_65536_39'
;h                         Allocated with name '_malloc_h_65536_40'
;f                         Allocated with name '_malloc_f_65536_40'
;blocksize                 Allocated to registers r5 r4 
;newheader                 Allocated with name '_malloc_newheader_327680_44'
;sloc0                     Allocated with name '_malloc_sloc0_1_0'
;------------------------------------------------------------
;	malloc.c:73: void HEAPSPACE *malloc(size_t size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
_malloc:
	mov	r2,dpl
	mov	r3,dph
;	malloc.c:82: if(!__sdcc_heap_free)
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
00154$:
;	malloc.c:83: __sdcc_heap_init();
	push	ar2
	push	ar3
	lcall	___sdcc_heap_init
	pop	ar3
	pop	ar2
00102$:
;	malloc.c:86: if(!size || size + offsetof(struct header, next_free) < size)
	mov	a,r2
	orl	a,r3
	jz  00103$
00155$:
	mov	a,#0x03
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc  00104$
00156$:
00103$:
;	malloc.c:87: return(0);
	mov  dptr,#0x0000
	ljmp	00117$
00104$:
;	malloc.c:88: size += offsetof(struct header, next_free);
	mov	dptr,#_malloc_size_65536_39
	mov	a,#0x03
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	malloc.c:89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	mov	dptr,#_malloc_size_65536_39
	clr	c
	movx	a,@dptr
	subb	a,#0x06
	inc	dptr
	movx	a,@dptr
	subb	a,#0x00
	jnc  00107$
00157$:
;	malloc.c:90: size = sizeof(struct header);
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_malloc_size_65536_39
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00107$:
;	malloc.c:92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	mov	dptr,#___sdcc_heap_free
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_malloc_h_65536_40
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_malloc_f_65536_40
	mov	a,#___sdcc_heap_free
	movx	@dptr,a
	inc	dptr
	mov	a,#(___sdcc_heap_free >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___sdcc_heap_free >> 16)
	movx	@dptr,a
00115$:
	mov	dptr,#_malloc_h_65536_40
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00158$
	ljmp	00113$
00158$:
;	malloc.c:94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	mov	dptr,#_malloc_h_65536_40
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
	mov	r7,a
	mov	dptr,#_malloc_sloc0_1_0
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_malloc_h_65536_40
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_malloc_sloc0_1_0
	clr	c
	movx	a,@dptr
	subb	a,r5
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	subb	a,r6
	mov	r4,a
;	malloc.c:95: if(blocksize >= size) // Found free block of sufficient size.
	mov	dptr,#_malloc_size_65536_39
	clr	c
	mov	a,r5
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r4
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc	00159$
	ljmp	00116$
00159$:
;	malloc.c:97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
	mov	dptr,#_malloc_size_65536_39
	movx	a,@dptr
	add	a,#0x06
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r0,a
	clr	c
	mov	a,r5
	subb	a,r6
	mov	a,r4
	subb	a,r0
	jnc	00160$
	ljmp	00109$
00160$:
;	malloc.c:99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
	mov	dptr,#_malloc_h_65536_40
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_malloc_size_65536_39
	movx	a,@dptr
	add	a,r4
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_malloc_newheader_327680_44
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	malloc.c:100: newheader->next = h->next;
	mov	dptr,#_malloc_newheader_327680_44
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
	mov	a,r7
	movx	@dptr,a
;	malloc.c:101: newheader->next_free = h->next_free;
	mov	dptr,#_malloc_newheader_327680_44
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
	mov	dptr,#_malloc_h_65536_40
	movx	a,@dptr
	add	a,#0x03
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r4
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	mov	r4,a
	mov	a,r0
	inc	dps
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dps,#0
;	malloc.c:102: *f = newheader;
	mov	dptr,#_malloc_f_65536_40
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
	mov     dptr, #_malloc_newheader_327680_44
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
;	malloc.c:103: h->next = newheader;
	mov	dptr,#_malloc_h_65536_40
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
	mov     dptr, #_malloc_newheader_327680_44
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
	sjmp 00110$
00109$:
;	malloc.c:106: *f = h->next_free;
	mov	dptr,#_malloc_h_65536_40
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
	mov	dptr,#_malloc_f_65536_40
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
00110$:
;	malloc.c:108: return(&(h->next_free));
	mov	dptr,#_malloc_h_65536_40
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
	sjmp 00117$
00116$:
;	malloc.c:92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	mov	dptr,#_malloc_h_65536_40
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
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_malloc_f_65536_40
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
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r4,a
	mov     dps, #1
	lcall	__decdptr
	lcall	__decdptr
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_malloc_h_65536_40
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	ljmp	00115$
00113$:
;	malloc.c:112: return(0);
	mov  dptr,#0x0000
00117$:
;	malloc.c:113: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
