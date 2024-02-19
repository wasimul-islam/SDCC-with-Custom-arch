;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module free
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _free
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
	.area	OSEG    (OVR,DATA)
_free_sloc0_1_0:
	.ds 2
_free_sloc1_1_0:
	.ds 2
_free_sloc2_1_0:
	.ds 2
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
_free_next_free_65536_41:
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
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;sloc0                     Allocated with name '_free_sloc0_1_0'
;sloc1                     Allocated with name '_free_sloc1_1_0'
;sloc2                     Allocated with name '_free_sloc2_1_0'
;------------------------------------------------------------
;	free.c:50: void free(void *ptr)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
_free:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	free.c:55: if(!ptr)
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	free.c:56: return;
	ret
00102$:
;	free.c:58: prev_free = 0;
	mov	r3,#0x00
	mov	r4,#0x00
;	free.c:59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	_free_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_free_sloc2_1_0 + 1),a
	mov	_free_sloc0_1_0,#___sdcc_heap_free
	mov	(_free_sloc0_1_0 + 1),#(___sdcc_heap_free >> 8)
00111$:
	mov	a,_free_sloc2_1_0
	orl	a,(_free_sloc2_1_0 + 1)
	jz	00103$
	mov	_free_sloc1_1_0,r5
	mov	(_free_sloc1_1_0 + 1),r6
	clr	c
	mov	a,_free_sloc2_1_0
	subb	a,_free_sloc1_1_0
	mov	a,(_free_sloc2_1_0 + 1)
	subb	a,(_free_sloc1_1_0 + 1)
	jnc	00103$
	push	ar5
	push	ar6
	push	ar7
	mov	r3,_free_sloc2_1_0
	mov	r4,(_free_sloc2_1_0 + 1)
	mov	a,#0x02
	add	a,_free_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a,(_free_sloc2_1_0 + 1)
	mov	r7,a
	mov	_free_sloc0_1_0,r2
	mov	(_free_sloc0_1_0 + 1),r7
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	mov	_free_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_free_sloc2_1_0 + 1),a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00111$
00103$:
;	free.c:60: next_free = h;
	mov	r0,#_free_next_free_65536_41
	mov	a,_free_sloc2_1_0
	movx	@r0,a
	mov	a,(_free_sloc2_1_0 + 1)
	inc	r0
	movx	@r0,a
;	free.c:62: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	mov	a,r5
	add	a,#0xfe
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
;	free.c:65: h->next_free = next_free;
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	mov	r0,#_free_next_free_65536_41
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
;	free.c:66: *f = h;
	mov	dpl,_free_sloc0_1_0
	mov	dph,(_free_sloc0_1_0 + 1)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	free.c:68: if(next_free == h->next) // Merge with next block
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	_free_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_free_sloc2_1_0 + 1),a
	mov	r0,#_free_next_free_65536_41
	movx	a,@r0
	cjne	a,_free_sloc2_1_0,00153$
	inc	r0
	movx	a,@r0
	cjne	a,(_free_sloc2_1_0 + 1),00153$
	sjmp	00154$
00153$:
	sjmp	00105$
00154$:
;	free.c:70: h->next_free = h->next->next_free;
	push	ar3
	push	ar4
	mov	dpl,_free_sloc2_1_0
	mov	dph,(_free_sloc2_1_0 + 1)
	inc	dptr
	inc	dptr
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
;	free.c:71: h->next = h->next->next;
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	free.c:77: prev_free->next_free = h->next_free;
	pop	ar4
	pop	ar3
;	free.c:71: h->next = h->next->next;
00105$:
;	free.c:74: if (prev_free && prev_free->next == h) // Merge with previous block
	mov	a,r3
	orl	a,r4
	jz	00113$
	push	ar2
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar5,00156$
	mov	a,r7
	cjne	a,ar6,00156$
	sjmp	00157$
00156$:
	pop	ar7
	pop	ar2
	ret
00157$:
	pop	ar7
	pop	ar2
;	free.c:76: prev_free->next = h->next;
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	free.c:77: prev_free->next_free = h->next_free;
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00113$:
;	free.c:79: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
