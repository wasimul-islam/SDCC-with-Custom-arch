;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module free
	.optsdcc -mmcs51 --model-small
	
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
_free_prev_free_65536_41:
	.ds 2
_free_sloc0_1_0:
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
;ptr                       Allocated to registers r5 r6 r7 
;h                         Allocated to registers r5 r6 
;next_free                 Allocated to registers r1 r2 
;prev_free                 Allocated with name '_free_prev_free_65536_41'
;f                         Allocated with name '_free_sloc0_1_0'
;sloc0                     Allocated with name '_free_sloc0_1_0'
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
;	free.c:55: if(!ptr)
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	free.c:56: return;
	ret
00102$:
;	free.c:58: prev_free = 0;
	clr	a
	mov	_free_prev_free_65536_41,a
	mov	(_free_prev_free_65536_41 + 1),a
;	free.c:59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	mov	dptr,#___sdcc_heap_free
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	_free_sloc0_1_0,#___sdcc_heap_free
	mov	(_free_sloc0_1_0 + 1),#(___sdcc_heap_free >> 8)
00111$:
	mov	a,r1
	orl	a,r2
	jz	00103$
	mov	ar0,r5
	mov	ar4,r6
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	subb	a,r4
	jnc	00103$
	mov	_free_prev_free_65536_41,r1
	mov	(_free_prev_free_65536_41 + 1),r2
	mov	a,#0x02
	add	a,r1
	mov	r3,a
	clr	a
	addc	a,r2
	mov	r4,a
	mov	_free_sloc0_1_0,r3
	mov	(_free_sloc0_1_0 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	sjmp	00111$
00103$:
;	free.c:60: next_free = h;
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
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r7,a
	mov	dpl,r4
	mov	dph,r7
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
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
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r1
	cjne	a,ar0,00105$
	mov	a,r2
	cjne	a,ar3,00105$
;	free.c:70: h->next_free = h->next->next_free;
	mov	dpl,r0
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	free.c:71: h->next = h->next->next;
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00105$:
;	free.c:74: if (prev_free && prev_free->next == h) // Merge with previous block
	mov	a,_free_prev_free_65536_41
	orl	a,(_free_prev_free_65536_41 + 1)
	jz	00113$
	mov	dpl,_free_prev_free_65536_41
	mov	dph,(_free_prev_free_65536_41 + 1)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	cjne	a,ar5,00113$
	mov	a,r3
	cjne	a,ar6,00113$
;	free.c:76: prev_free->next = h->next;
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,_free_prev_free_65536_41
	mov	dph,(_free_prev_free_65536_41 + 1)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	free.c:77: prev_free->next_free = h->next_free;
	mov	a,#0x02
	add	a,_free_prev_free_65536_41
	mov	r5,a
	clr	a
	addc	a,(_free_prev_free_65536_41 + 1)
	mov	r6,a
	mov	dpl,r4
	mov	dph,r7
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
00113$:
;	free.c:79: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
