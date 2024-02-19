;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module malloc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_init
	.globl ___sdcc_heap_free
	.globl _malloc
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
___sdcc_heap_free::
	.ds 2
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
;Allocation info for local variables in function '__sdcc_heap_init'
;------------------------------------------------------------
;	../malloc.c: 65: void __sdcc_heap_init(void)
;	-----------------------------------------
;	 function __sdcc_heap_init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___sdcc_heap_init:
;	../malloc.c: 67: __sdcc_heap_free = HEAP_START;
	lda	#___sdcc_heap
	sta	___sdcc_heap_free
	lda	#>___sdcc_heap
	sta	(___sdcc_heap_free + 1)
;	../malloc.c: 68: __sdcc_heap_free->next = HEAP_END;
	lda	___sdcc_heap_size
	ldx	(___sdcc_heap_size + 1)
	sec
	sbc	#0x01
	bcs	00103$
	dex
00103$:
	clc
	adc	#___sdcc_heap
	pha
	txa
	adc	#>___sdcc_heap
	tax
	pla
	stx	(___sdcc_heap + 1)
	sta	___sdcc_heap
;	../malloc.c: 69: __sdcc_heap_free->next_free = 0;
	lda	___sdcc_heap_free
	ldx	(___sdcc_heap_free + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	ldy	#0x02
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
;	../malloc.c: 70: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;size                      Allocated to stack - sp +17
;h                         Allocated to stack - sp +15
;f                         Allocated to stack - sp +13
;blocksize                 Allocated to stack - sp +11
;newheader                 Allocated to stack - sp +9
;sloc0                     Allocated to stack - sp +7
;sloc1                     Allocated to stack - sp +5
;sloc2                     Allocated to stack - sp +3
;sloc3                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../malloc.c: 75: void *malloc(size_t size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_malloc:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	stx	*(__TEMP+0)
	tsx
	sta	0x107,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x108,x
	ldx	*(__TEMP+0)
;	../malloc.c: 82: if(!__sdcc_heap_free)
	lda	(___sdcc_heap_free + 1)
	ora	___sdcc_heap_free
	bne	00102$
;	../malloc.c: 83: __sdcc_heap_init();
	jsr	___sdcc_heap_init
00102$:
;	../malloc.c: 86: if(!size || size + offsetof(struct header, next_free) < size)
	tsx
	lda	0x107,x
	ora	0x108,x
	beq	00103$
	lda	0x107,x
	clc
	adc	#0x02
	sta	0x105,x
	lda	0x108,x
	adc	#0x00
	sta	0x106,x
	lda	0x105,x
	sec
	sbc	0x107,x
	lda	0x106,x
	sbc	0x108,x
	bcs	00104$
00103$:
;	../malloc.c: 87: return(0);
	lda	#0x00
	tax
	jmp	00117$
00104$:
;	../malloc.c: 88: size += offsetof(struct header, next_free);
	tsx
	lda	0x107,x
	clc
	adc	#0x02
	sta	0x111,x
	lda	0x108,x
	adc	#0x00
	sta	0x112,x
;	../malloc.c: 89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	lda	0x111,x
	sec
	sbc	#0x04
	lda	0x112,x
	sbc	#0x00
	bcs	00107$
;	../malloc.c: 90: size = sizeof(struct header);
	lda	#0x04
	sta	0x111,x
	lda	#0x00
	sta	0x112,x
00107$:
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	tsx
	lda	___sdcc_heap_free
	sta	0x10f,x
	lda	(___sdcc_heap_free + 1)
	sta	0x110,x
	lda	#___sdcc_heap_free
	sta	0x105,x
	lda	#>___sdcc_heap_free
	sta	0x106,x
00115$:
	tsx
	lda	0x10f,x
	ora	0x110,x
	bne	00158$
	jmp	00113$
00158$:
;	../malloc.c: 94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	lda	0x10f,x
	sta	*(__DPTR+0)
	lda	0x110,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x107,x
	iny
	lda	[__DPTR],y
	sta	0x108,x
	lda	0x107,x
	sta	0x103,x
	lda	0x108,x
	sta	0x104,x
	lda	0x10f,x
	sta	0x101,x
	lda	0x110,x
	sta	0x102,x
	lda	0x103,x
	sec
	sbc	0x101,x
	sta	0x10b,x
	lda	0x104,x
	sbc	0x102,x
	sta	0x10c,x
;	../malloc.c: 95: if(blocksize >= size) // Found free block of sufficient size.
	lda	0x10b,x
	sec
	sbc	0x111,x
	lda	0x10c,x
	sbc	0x112,x
	bcs	00159$
	jmp	00116$
00159$:
;	../malloc.c: 97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
	lda	0x111,x
	clc
	adc	#0x04
	sta	0x103,x
	lda	0x112,x
	adc	#0x00
	sta	0x104,x
	lda	0x10b,x
	sec
	sbc	0x103,x
	lda	0x10c,x
	sbc	0x104,x
	bcs	00160$
	jmp	00109$
00160$:
;	../malloc.c: 99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
	lda	0x101,x
	clc
	adc	0x111,x
	sta	0x101,x
	lda	0x102,x
	adc	0x112,x
	sta	0x102,x
	lda	0x101,x
	sta	0x109,x
	lda	0x102,x
	sta	0x10a,x
;	../malloc.c: 100: newheader->next = h->next;
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	lda	0x107,x
	dey
	sta	[__DPTR],y
	lda	0x108,x
	iny
	sta	[__DPTR],y
;	../malloc.c: 101: newheader->next_free = h->next_free;
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x103,x
	lda	0x110,x
	sta	0x104,x
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	sta	0x103,x
	iny
	lda	[__DPTR],y
	sta	0x104,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	0x103,x
	dey
	sta	[__DPTR],y
	lda	0x104,x
	iny
	sta	[__DPTR],y
;	../malloc.c: 102: *f = newheader;
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
;	../malloc.c: 103: h->next = newheader;
	lda	0x10f,x
	sta	*(__DPTR+0)
	lda	0x110,x
	sta	*(__DPTR+1)
	lda	0x109,x
	dey
	sta	[__DPTR],y
	lda	0x10a,x
	iny
	sta	[__DPTR],y
	jmp	00110$
00109$:
;	../malloc.c: 106: *f = h->next_free;
	tsx
	lda	0x10f,x
	sta	0x101,x
	lda	0x110,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x02
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
00110$:
;	../malloc.c: 108: return(&(h->next_free));
	tsx
	lda	0x10f,x
	sta	*(__TEMP+0)
	lda	0x110,x
	tax
	lda	*(__TEMP+0)
	clc
	adc	#0x02
	bcc	00117$
	inx
	jmp	00117$
00116$:
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	tsx
	lda	0x10f,x
	clc
	adc	#0x02
	sta	0x10d,x
	lda	0x110,x
	adc	#0x00
	sta	0x10e,x
	lda	0x10d,x
	sta	0x105,x
	lda	0x10e,x
	sta	0x106,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	0x10f,x
	iny
	lda	[__DPTR],y
	sta	0x110,x
	jmp	00115$
00113$:
;	../malloc.c: 112: return(0);
	lda	#0x00
	tax
00117$:
;	../malloc.c: 113: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
