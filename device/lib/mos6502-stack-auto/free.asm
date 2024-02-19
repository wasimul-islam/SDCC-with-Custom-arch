;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module free
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _free
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;ptr                       Allocated to stack - sp +15
;h                         Allocated to stack - sp +13
;next_free                 Allocated to stack - sp +11
;prev_free                 Allocated to stack - sp +9
;f                         Allocated to stack - sp +7
;sloc0                     Allocated to stack - sp +5
;sloc1                     Allocated to stack - sp +3
;sloc2                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../free.c: 50: void free(void *ptr)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_free:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../free.c: 55: if(!ptr)
	tsx
	lda	0x10f,x
	ora	0x110,x
	bne	00102$
;	../free.c: 56: return;
	jmp	00113$
00102$:
;	../free.c: 58: prev_free = 0;
	tsx
	lda	#0x00
	sta	0x109,x
	sta	0x10a,x
;	../free.c: 59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	lda	___sdcc_heap_free
	sta	0x105,x
	lda	(___sdcc_heap_free + 1)
	sta	0x106,x
	lda	#___sdcc_heap_free
	sta	0x103,x
	lda	#>___sdcc_heap_free
	sta	0x104,x
00111$:
	tsx
	lda	0x105,x
	ora	0x106,x
	beq	00103$
	lda	0x10f,x
	sta	0x101,x
	lda	0x110,x
	sta	0x102,x
	lda	0x105,x
	sec
	sbc	0x101,x
	lda	0x106,x
	sbc	0x102,x
	bcs	00103$
	lda	0x105,x
	sta	0x109,x
	lda	0x106,x
	sta	0x10a,x
	lda	0x105,x
	clc
	adc	#0x02
	sta	0x107,x
	lda	0x106,x
	adc	#0x00
	sta	0x108,x
	lda	0x107,x
	sta	0x103,x
	lda	0x108,x
	sta	0x104,x
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x105,x
	iny
	lda	[__DPTR],y
	sta	0x106,x
	jmp	00111$
00103$:
;	../free.c: 60: next_free = h;
	tsx
	lda	0x105,x
	sta	0x10b,x
	lda	0x106,x
	sta	0x10c,x
;	../free.c: 62: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	sec
	sbc	#0x02
	bcs	00153$
	dex
00153$:
	pha
	txa
	tsx
	sta	0x10f,x
	pla
;	../free.c: 65: h->next_free = next_free;
	sta	0x10e, x
	sta	0x102,x
	lda	0x10f,x
	sta	0x103,x
	lda	0x102,x
	sta	*(__DPTR+0)
	lda	0x103,x
	sta	*(__DPTR+1)
	lda	0x10c,x
	ldy	#0x02
	sta	[__DPTR],y
	lda	0x10d,x
	iny
	sta	[__DPTR],y
;	../free.c: 66: *f = h;
	lda	0x104,x
	sta	*(__DPTR+0)
	lda	0x105,x
	sta	*(__DPTR+1)
	lda	0x10e,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10f,x
	iny
	sta	[__DPTR],y
;	../free.c: 68: if(next_free == h->next) // Merge with next block
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	sta	0x104,x
	iny
	lda	[__DPTR],y
	sta	0x105,x
	lda	0x10c,x
	cmp	0x104,x
	bne	00105$
	lda	0x10d,x
	cmp	0x105,x
	bne	00105$
;	../free.c: 70: h->next_free = h->next->next_free;
	lda	0x104,x
	sta	*(__DPTR+0)
	lda	0x105,x
	sta	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	sta	0x104,x
	iny
	lda	[__DPTR],y
	sta	0x105,x
	lda	0x102,x
	sta	*(__DPTR+0)
	lda	0x103,x
	sta	*(__DPTR+1)
	lda	0x104,x
	dey
	sta	[__DPTR],y
	lda	0x105,x
	iny
	sta	[__DPTR],y
;	../free.c: 71: h->next = h->next->next;
	lda	0x10e,x
	sta	*(__DPTR+0)
	lda	0x10f,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldx	*(__TEMP+1)
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
	ldx	*(__TEMP+1)
00105$:
;	../free.c: 74: if (prev_free && prev_free->next == h) // Merge with previous block
	tsx
	lda	0x109,x
	ora	0x10a,x
	bne	00157$
	jmp	00113$
00157$:
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104,x
	lda	0x103,x
	cmp	0x10d,x
	bne	00113$
	lda	0x104,x
	cmp	0x10e,x
	bne	00113$
;	../free.c: 76: prev_free->next = h->next;
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	0x103,x
	dey
	sta	[__DPTR],y
	lda	0x104,x
	iny
	sta	[__DPTR],y
;	../free.c: 77: prev_free->next_free = h->next_free;
	lda	0x109,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x104,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	sta	0x101,x
	iny
	lda	[__DPTR],y
	sta	0x102,x
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	0x101,x
	dey
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
00113$:
;	../free.c: 79: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
