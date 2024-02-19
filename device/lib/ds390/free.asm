;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module free
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
	.globl _free
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
_free_ptr_65536_37:
	.ds 4
_free_h_65536_38:
	.ds 3
_free_next_free_65536_38:
	.ds 3
_free_prev_free_65536_38:
	.ds 3
_free_f_65536_38:
	.ds 3
_free_sloc0_1_0:
	.ds 4
_free_sloc1_1_0:
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
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;ptr                       Allocated with name '_free_ptr_65536_37'
;h                         Allocated with name '_free_h_65536_38'
;next_free                 Allocated with name '_free_next_free_65536_38'
;prev_free                 Allocated with name '_free_prev_free_65536_38'
;f                         Allocated with name '_free_f_65536_38'
;sloc0                     Allocated with name '_free_sloc0_1_0'
;sloc1                     Allocated with name '_free_sloc1_1_0'
;------------------------------------------------------------
;	free.c:50: void free(void *ptr)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
_free:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_free_ptr_65536_37
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
;	free.c:55: if(!ptr)
	mov	dptr,#_free_ptr_65536_37
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00102$
00150$:
;	free.c:56: return;
	ljmp	00113$
00102$:
;	free.c:58: prev_free = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_free_prev_free_65536_38
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	free.c:59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
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
	mov	dptr,#_free_f_65536_38
	mov	a,#___sdcc_heap_free
	movx	@dptr,a
	inc	dptr
	mov	a,#(___sdcc_heap_free >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___sdcc_heap_free >> 16)
	movx	@dptr,a
	mov	dptr,#_free_ptr_65536_37
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_free_sloc0_1_0
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
00111$:
	mov	a,r1
	orl	a,r2
	orl	a,r3
	jz  00103$
00151$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_free_sloc1_1_0
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_free_sloc0_1_0
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_free_sloc1_1_0
	clr	c
	movx	a,@dptr
	subb	a,r7
	inc	dptr
	movx	a,@dptr
	subb	a,r0
	inc	dptr
	movx	a,@dptr
	subb	a,r4
	jnc  00103$
00152$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_free_prev_free_65536_38
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
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
	mov	dptr,#_free_f_65536_38
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
	sjmp 00111$
00103$:
;	free.c:60: next_free = h;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_free_next_free_65536_38
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	free.c:62: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	mov	dptr,#_free_ptr_65536_37
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	add	a,#0xfd
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	dptr,#_free_h_65536_38
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	free.c:65: h->next_free = next_free;
	mov	dptr,#_free_h_65536_38
	movx	a,@dptr
	add	a,#0x03
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r2,a
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r2
	mov     dps, #1
	mov     dptr, #_free_next_free_65536_38
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
;	free.c:66: *f = h;
	mov	dptr,#_free_f_65536_38
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
	mov     dptr, #_free_h_65536_38
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
;	free.c:68: if(next_free == h->next) // Merge with next block
	mov	dptr,#_free_h_65536_38
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
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_free_next_free_65536_38
	movx	a,@dptr
	cjne	a,ar3,00153$
	inc	dptr
	movx	a,@dptr
	cjne	a,ar4,00153$
	inc	dptr
	movx	a,@dptr
	cjne	a,ar5,00153$
	sjmp	00154$
00153$:
	sjmp 00105$
00154$:
;	free.c:70: h->next_free = h->next->next_free;
	mov	a,#0x03
	add	a,r3
	mov	dpl1,a
	clr	a
	addc	a,r4
	mov	dph1,a
	clr	a
	addc	a,r5
	mov	dpx1,a
	inc	dps
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	mov	r4,a
	mov	dps,#0
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	free.c:71: h->next = h->next->next;
	mov	dptr,#_free_h_65536_38
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
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_free_h_65536_38
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
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00105$:
;	free.c:74: if (prev_free && prev_free->next == h) // Merge with previous block
	mov	dptr,#_free_prev_free_65536_38
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00155$
	ljmp	00113$
00155$:
	mov	dptr,#_free_prev_free_65536_38
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
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_free_h_65536_38
	mov	b,r3
	movx	a,@dptr
	cjne	a,b,00156$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00156$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00156$
	sjmp	00157$
00156$:
	sjmp 00113$
00157$:
;	free.c:76: prev_free->next = h->next;
	mov	dptr,#_free_h_65536_38
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
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_free_prev_free_65536_38
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
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	free.c:77: prev_free->next_free = h->next_free;
	mov	dptr,#_free_prev_free_65536_38
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
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r2
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	mov	r2,a
	mov	a,r7
	inc	dps
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dps,#0
00113$:
;	free.c:79: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
