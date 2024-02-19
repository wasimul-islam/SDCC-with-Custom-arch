;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _memmove
	.globl _free
	.globl _malloc
	.globl _realloc
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
;Allocation info for local variables in function 'realloc'
;------------------------------------------------------------
;size                      Allocated to stack - sp +33
;ptr                       Allocated to stack - sp +29
;ret                       Allocated to stack - sp +1
;h                         Allocated to stack - sp +27
;next_free                 Allocated to stack - sp +25
;prev_free                 Allocated to stack - sp +23
;f                         Allocated to stack - sp +21
;pf                        Allocated to stack - sp +19
;blocksize                 Allocated to stack - sp +17
;oldblocksize              Allocated to stack - sp +15
;maxblocksize              Allocated to stack - sp +13
;newheader                 Allocated to stack - sp +11
;oldsize                   Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../realloc.c: 60: void *realloc(void *ptr, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 30 bytes.
_realloc:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe4
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../realloc.c: 73: if(!ptr)
	tsx
	lda	0x11d,x
	ora	0x11e,x
	bne	00102$
;	../realloc.c: 74: return(malloc(size));
	lda	0x122,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x121,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_malloc
	jmp	00131$
00102$:
;	../realloc.c: 76: if(!size)
	tsx
	lda	0x121,x
	ora	0x122,x
	bne	00104$
;	../realloc.c: 78: free(ptr);
	lda	0x11e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x11d,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_free
;	../realloc.c: 79: return(0);
	lda	#0x00
	tax
	jmp	00131$
00104$:
;	../realloc.c: 82: prev_free = 0, pf = 0;
	tsx
	lda	#0x00
	sta	0x117,x
	sta	0x118,x
	sta	0x113,x
	sta	0x114,x
;	../realloc.c: 83: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	lda	___sdcc_heap_free
	sta	0x107,x
	lda	(___sdcc_heap_free + 1)
	sta	0x108,x
	lda	#___sdcc_heap_free
	sta	0x105,x
	lda	#>___sdcc_heap_free
	sta	0x106,x
00129$:
	tsx
	lda	0x107,x
	ora	0x108,x
	beq	00105$
	lda	0x11d,x
	sta	0x103,x
	lda	0x11e,x
	sta	0x104,x
	lda	0x107,x
	sec
	sbc	0x103,x
	lda	0x108,x
	sbc	0x104,x
	bcs	00105$
	lda	0x107,x
	sta	0x117,x
	lda	0x108,x
	sta	0x118,x
	lda	0x105,x
	sta	0x113,x
	lda	0x106,x
	sta	0x114,x
	lda	0x107,x
	clc
	adc	#0x02
	sta	0x115,x
	lda	0x108,x
	adc	#0x00
	sta	0x116,x
	lda	0x115,x
	sta	0x105,x
	lda	0x116,x
	sta	0x106,x
	lda	0x115,x
	sta	*(__DPTR+0)
	lda	0x116,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108,x
	jmp	00129$
00105$:
;	../realloc.c: 84: next_free = h;
	tsx
	lda	0x107,x
	sta	0x119,x
	lda	0x108,x
	sta	0x11a,x
;	../realloc.c: 86: if(size + offsetof(struct header, next_free) < size) // Handle overflow
	lda	0x121,x
	clc
	adc	#0x02
	sta	0x103,x
	lda	0x122,x
	adc	#0x00
	sta	0x104,x
	lda	0x103,x
	sec
	sbc	0x121,x
	lda	0x104,x
	sbc	0x122,x
	bcs	00107$
;	../realloc.c: 87: return(0);
	lda	#0x00
	tax
	jmp	00131$
00107$:
;	../realloc.c: 88: blocksize = size + offsetof(struct header, next_free);
	tsx
	lda	0x121,x
	clc
	adc	#0x02
	sta	0x111,x
	lda	0x122,x
	adc	#0x00
	sta	0x112,x
;	../realloc.c: 89: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	lda	0x111,x
	sec
	sbc	#0x04
	lda	0x112,x
	sbc	#0x00
	bcs	00109$
;	../realloc.c: 90: blocksize = sizeof(struct header);
	lda	#0x04
	sta	0x111,x
	lda	#0x00
	sta	0x112,x
00109$:
;	../realloc.c: 92: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	tsx
	lda	0x11d,x
	sta	*(__TEMP+0)
	lda	0x11e,x
	tax
	lda	*(__TEMP+0)
	sec
	sbc	#0x02
	bcs	00238$
	dex
00238$:
	pha
	txa
	tsx
	sta	0x11d,x
	pla
;	../realloc.c: 93: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	sta	0x11c, x
	sta	*(__DPTR+0)
	lda	0x11d,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x104,x
	iny
	lda	[__DPTR],y
	sta	0x105,x
	lda	0x104,x
	sta	0x108,x
	lda	0x105,x
	sta	0x109,x
	lda	0x11c,x
	sta	0x102,x
	lda	0x11d,x
	sta	0x103,x
	lda	0x108,x
	sec
	sbc	0x102,x
	sta	0x110,x
	lda	0x109,x
	sbc	0x103,x
	sta	0x111,x
;	../realloc.c: 95: maxblocksize = oldblocksize;
	lda	0x110,x
	sta	0x10e,x
	lda	0x111,x
	sta	0x10f,x
;	../realloc.c: 96: if(prev_free && prev_free->next == h) // Can merge with previous block
	lda	0x118,x
	ora	0x119,x
	beq	00111$
	lda	0x118,x
	sta	*(__DPTR+0)
	lda	0x119,x
	sta	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	sta	0x108,x
	iny
	lda	[__DPTR],y
	sta	0x109,x
	lda	0x108,x
	cmp	0x11c,x
	bne	00111$
	lda	0x109,x
	cmp	0x11d,x
	bne	00111$
;	../realloc.c: 97: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
	lda	0x118,x
	sta	0x108,x
	lda	0x119,x
	sta	0x109,x
	lda	0x102,x
	sec
	sbc	0x108,x
	pha
	lda	0x103,x
	sbc	0x109,x
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x110, x
	clc
	adc	0x102,x
	sta	0x10e,x
	lda	0x111,x
	adc	0x103,x
	sta	0x10f,x
00111$:
;	../realloc.c: 98: if(next_free == h->next) // Can merge with next block
	tsx
	lda	0x119,x
	cmp	0x103,x
	bne	00114$
	lda	0x11a,x
	cmp	0x104,x
	bne	00114$
;	../realloc.c: 99: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
	lda	0x119,x
	sta	*(__DPTR+0)
	lda	0x11a,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	pha
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x11a, x
	sta	0x104,x
	lda	0x11b,x
	sta	0x105,x
	lda	0x102,x
	sec
	sbc	0x104,x
	pha
	lda	0x103,x
	sbc	0x105,x
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	lda	0x10e, x
	clc
	adc	0x102,x
	sta	0x10e,x
	lda	0x10f,x
	adc	0x103,x
	sta	0x10f,x
00114$:
;	../realloc.c: 101: if(blocksize <= maxblocksize) // Can resize in place.
	tsx
	lda	0x10d,x
	sec
	sbc	0x111,x
	lda	0x10e,x
	sbc	0x112,x
	bcs	00246$
	jmp	00124$
00246$:
;	../realloc.c: 103: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	lda	0x117,x
	ora	0x118,x
	bne	00247$
	jmp	00116$
00247$:
	lda	0x117,x
	sta	*(__DPTR+0)
	lda	0x118,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x101,x
	iny
	lda	[__DPTR],y
	sta	0x102,x
	lda	0x101,x
	cmp	0x11b,x
	bne	00249$
	lda	0x102,x
	cmp	0x11c,x
	beq	00250$
00249$:
	jmp	00116$
00250$:
;	../realloc.c: 105: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	lda	0x10f,x
	sec
	sbc	0x111,x
	lda	0x110,x
	sbc	0x112,x
	bcc	00133$
	lda	0x111,x
	sta	0x101,x
	lda	0x112,x
	sta	0x102,x
	jmp	00134$
00133$:
	tsx
	lda	0x10f,x
	sta	0x101,x
	lda	0x110,x
	sta	0x102,x
00134$:
	tsx
	lda	0x11b,x
	sta	0x103,x
	lda	0x11c,x
	sta	0x104,x
	lda	0x117,x
	sta	0x107,x
	lda	0x118,x
	sta	0x108,x
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x108,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10b,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_memmove
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../realloc.c: 106: h = prev_free;
	tsx
	lda	0x117,x
	sta	0x11b,x
	lda	0x118,x
	sta	0x11c,x
;	../realloc.c: 107: *pf = next_free;
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	lda	0x119,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x11a,x
	iny
	sta	[__DPTR],y
;	../realloc.c: 108: f = pf;
	lda	0x113,x
	sta	0x105,x
	lda	0x114,x
	sta	0x106,x
00116$:
;	../realloc.c: 111: if(next_free && next_free == h->next) // Merge with following block
	tsx
	lda	0x119,x
	ora	0x11a,x
	bne	00252$
	jmp	00119$
00252$:
	lda	0x11b,x
	sta	*(__DPTR+0)
	lda	0x11c,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x101,x
	iny
	lda	[__DPTR],y
	sta	0x102,x
	lda	0x119,x
	cmp	0x101,x
	bne	00119$
	lda	0x11a,x
	cmp	0x102,x
	bne	00119$
;	../realloc.c: 113: h->next = next_free->next;
	lda	0x119,x
	sta	*(__DPTR+0)
	lda	0x11a,x
	sta	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	sta	0x101,x
	iny
	lda	[__DPTR],y
	sta	0x102,x
	lda	0x11b,x
	sta	*(__DPTR+0)
	lda	0x11c,x
	sta	*(__DPTR+1)
	lda	0x101,x
	dey
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
;	../realloc.c: 114: *f = next_free->next_free;
	lda	0x119,x
	sta	0x101,x
	lda	0x11a,x
	sta	0x102,x
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
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
00119$:
;	../realloc.c: 117: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	tsx
	lda	0x111,x
	clc
	adc	#0x04
	sta	0x101,x
	lda	0x112,x
	adc	#0x00
	sta	0x102,x
	lda	0x10d,x
	sec
	sbc	0x101,x
	lda	0x10e,x
	sbc	0x102,x
	bcs	00256$
	jmp	00122$
00256$:
;	../realloc.c: 119: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
	lda	0x11b,x
	sta	0x101,x
	lda	0x11c,x
	sta	0x102,x
	lda	0x101,x
	clc
	adc	0x111,x
	pha
	lda	0x102,x
	adc	0x112,x
	tsx
	sta	0x10d,x
	pla
	sta	0x10c,x
;	../realloc.c: 120: newheader->next = h->next;
	lda	0x11c, x
	sta	*(__DPTR+0)
	lda	0x11d,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x102,x
	iny
	lda	[__DPTR],y
	sta	0x103,x
	lda	0x10c,x
	sta	*(__DPTR+0)
	lda	0x10d,x
	sta	*(__DPTR+1)
	lda	0x102,x
	dey
	sta	[__DPTR],y
	lda	0x103,x
	iny
	sta	[__DPTR],y
;	../realloc.c: 121: newheader->next_free = *f;
	lda	0x10c,x
	sta	0x102,x
	lda	0x10d,x
	sta	0x103,x
	lda	0x106,x
	sta	*(__DPTR+0)
	lda	0x107,x
	sta	*(__DPTR+1)
	dey
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
	iny
	sta	[__DPTR],y
	lda	0x105,x
	iny
	sta	[__DPTR],y
;	../realloc.c: 122: *f = newheader;
	lda	0x106,x
	sta	*(__DPTR+0)
	lda	0x107,x
	sta	*(__DPTR+1)
	lda	0x10c,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10d,x
	iny
	sta	[__DPTR],y
;	../realloc.c: 123: h->next = newheader;
	lda	0x11c,x
	sta	*(__DPTR+0)
	lda	0x11d,x
	sta	*(__DPTR+1)
	lda	0x10c,x
	dey
	sta	[__DPTR],y
	lda	0x10d,x
	iny
	sta	[__DPTR],y
00122$:
;	../realloc.c: 126: return(&(h->next_free));
	tsx
	lda	0x11b,x
	sta	*(__TEMP+0)
	lda	0x11c,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x02
	bcc	00257$
	inx
00257$:
	jmp	00131$
00124$:
;	../realloc.c: 129: if(ret = malloc(size))
	tsx
	lda	0x122,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x121,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_malloc
	pha
	stx	*(__TEMP+0)
	txa
	tsx
	sta	0x103,x
	pla
	sta	0x102,x
	ldx	*(__TEMP+0)
	cmp	#0x00
	bne	00258$
	cpx	#0x00
00258$:
	bne	00259$
	jmp	00126$
00259$:
;	../realloc.c: 131: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	tsx
	lda	0x10f,x
	sec
	sbc	#0x02
	sta	0x109,x
	lda	0x110,x
	sbc	#0x00
	sta	0x10a,x
;	../realloc.c: 132: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
	lda	0x109,x
	sec
	sbc	0x121,x
	lda	0x10a,x
	sbc	0x122,x
	bcc	00135$
	lda	0x121,x
	sta	0x103,x
	lda	0x122,x
	sta	0x104,x
	jmp	00136$
00135$:
	tsx
	lda	0x109,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x104,x
00136$:
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x105,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	___memcpy
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
;	../realloc.c: 133: free(ptr);
	tsx
	lda	0x11e,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x11d,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_free
;	../realloc.c: 134: return(ret);
	tsx
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00131$
00126$:
;	../realloc.c: 137: return(0);
	lda	#0x00
	tax
00131$:
;	../realloc.c: 138: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x1e
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
