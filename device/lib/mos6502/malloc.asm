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
_malloc_sloc0_1_0:
	.ds 2
_malloc_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___sdcc_heap_free::
	.ds 2
_malloc_size_65536_39:
	.ds 2
_malloc_h_65536_40:
	.ds 2
_malloc_f_65536_40:
	.ds 2
_malloc_blocksize_196608_42:
	.ds 2
_malloc_newheader_327680_44:
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
;sloc0                     Allocated with name '_malloc_sloc0_1_0'
;sloc1                     Allocated with name '_malloc_sloc1_1_0'
;size                      Allocated with name '_malloc_size_65536_39'
;h                         Allocated with name '_malloc_h_65536_40'
;f                         Allocated with name '_malloc_f_65536_40'
;blocksize                 Allocated with name '_malloc_blocksize_196608_42'
;newheader                 Allocated with name '_malloc_newheader_327680_44'
;------------------------------------------------------------
;	../malloc.c: 75: void *malloc(size_t size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_malloc:
	sta	*_malloc_sloc0_1_0
	stx	*(_malloc_sloc0_1_0 + 1)
;	../malloc.c: 82: if(!__sdcc_heap_free)
	lda	(___sdcc_heap_free + 1)
	ora	___sdcc_heap_free
	bne	00102$
;	../malloc.c: 83: __sdcc_heap_init();
	jsr	___sdcc_heap_init
00102$:
;	../malloc.c: 86: if(!size || size + offsetof(struct header, next_free) < size)
	lda	*(_malloc_sloc0_1_0 + 1)
	ora	*_malloc_sloc0_1_0
	beq	00103$
	lda	*_malloc_sloc0_1_0
	ldx	*(_malloc_sloc0_1_0 + 1)
	clc
	adc	#0x02
	bcc	00156$
	inx
00156$:
	sec
	sbc	*_malloc_sloc0_1_0
	txa
	sbc	*(_malloc_sloc0_1_0 + 1)
	bcs	00104$
00103$:
;	../malloc.c: 87: return(0);
	lda	#0x00
	tax
	rts
00104$:
;	../malloc.c: 88: size += offsetof(struct header, next_free);
	lda	*_malloc_sloc0_1_0
	clc
	adc	#0x02
	sta	_malloc_size_65536_39
	lda	*(_malloc_sloc0_1_0 + 1)
	adc	#0x00
	sta	(_malloc_size_65536_39 + 1)
;	../malloc.c: 89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	lda	_malloc_size_65536_39
	sec
	sbc	#0x04
	lda	(_malloc_size_65536_39 + 1)
	sbc	#0x00
	bcs	00107$
;	../malloc.c: 90: size = sizeof(struct header);
	ldx	#0x04
	stx	_malloc_size_65536_39
	ldx	#0x00
	stx	(_malloc_size_65536_39 + 1)
00107$:
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	lda	___sdcc_heap_free
	sta	_malloc_h_65536_40
	lda	(___sdcc_heap_free + 1)
	sta	(_malloc_h_65536_40 + 1)
	lda	#___sdcc_heap_free
	sta	_malloc_f_65536_40
	lda	#>___sdcc_heap_free
	sta	(_malloc_f_65536_40 + 1)
00115$:
	lda	(_malloc_h_65536_40 + 1)
	ora	_malloc_h_65536_40
	bne	00159$
	jmp	00113$
00159$:
;	../malloc.c: 94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	lda	_malloc_h_65536_40
	sta	*(__DPTR+0)
	lda	(_malloc_h_65536_40 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_malloc_sloc0_1_0
	iny
	lda	[__DPTR],y
	sta	*(_malloc_sloc0_1_0 + 1)
	lda	*_malloc_sloc0_1_0
	ldx	*(_malloc_sloc0_1_0 + 1)
	ldy	_malloc_h_65536_40
	sty	*_malloc_sloc1_1_0
	ldy	(_malloc_h_65536_40 + 1)
	sty	*(_malloc_sloc1_1_0 + 1)
	sec
	sbc	*_malloc_sloc1_1_0
	sta	_malloc_blocksize_196608_42
	txa
	sbc	*(_malloc_sloc1_1_0 + 1)
	sta	(_malloc_blocksize_196608_42 + 1)
;	../malloc.c: 95: if(blocksize >= size) // Found free block of sufficient size.
	lda	_malloc_blocksize_196608_42
	sec
	sbc	_malloc_size_65536_39
	lda	(_malloc_blocksize_196608_42 + 1)
	sbc	(_malloc_size_65536_39 + 1)
	bcs	00160$
	jmp	00116$
00160$:
;	../malloc.c: 97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
	lda	_malloc_size_65536_39
	ldx	(_malloc_size_65536_39 + 1)
	clc
	adc	#0x04
	bcc	00161$
	inx
00161$:
	sta	*(__TEMP+0)
	lda	_malloc_blocksize_196608_42
	sec
	sbc	*(__TEMP+0)
	lda	(_malloc_blocksize_196608_42 + 1)
	stx	*(__TEMP+0)
	sbc	*(__TEMP+0)
	bcc	00109$
;	../malloc.c: 99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
	lda	*_malloc_sloc1_1_0
	clc
	adc	_malloc_size_65536_39
	pha
	lda	*(_malloc_sloc1_1_0 + 1)
	adc	(_malloc_size_65536_39 + 1)
	tax
	pla
;	../malloc.c: 100: newheader->next = h->next;
	sta	_malloc_newheader_327680_44
	stx	(_malloc_newheader_327680_44 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	*_malloc_sloc0_1_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(_malloc_sloc0_1_0 + 1)
	iny
	sta	[__DPTR],y
;	../malloc.c: 101: newheader->next_free = h->next_free;
	lda	_malloc_newheader_327680_44
	sta	*_malloc_sloc1_1_0
	lda	(_malloc_newheader_327680_44 + 1)
	sta	*(_malloc_sloc1_1_0 + 1)
	lda	_malloc_h_65536_40
	ldx	(_malloc_h_65536_40 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	[*_malloc_sloc1_1_0],y
	txa
	iny
	sta	[*_malloc_sloc1_1_0],y
;	../malloc.c: 102: *f = newheader;
	lda	_malloc_f_65536_40
	sta	*(__DPTR+0)
	lda	(_malloc_f_65536_40 + 1)
	sta	*(__DPTR+1)
	lda	_malloc_newheader_327680_44
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_malloc_newheader_327680_44 + 1)
	iny
	sta	[__DPTR],y
;	../malloc.c: 103: h->next = newheader;
	lda	_malloc_h_65536_40
	sta	*(__DPTR+0)
	lda	(_malloc_h_65536_40 + 1)
	sta	*(__DPTR+1)
	lda	_malloc_newheader_327680_44
	dey
	sta	[__DPTR],y
	lda	(_malloc_newheader_327680_44 + 1)
	iny
	sta	[__DPTR],y
	jmp	00110$
00109$:
;	../malloc.c: 106: *f = h->next_free;
	lda	_malloc_h_65536_40
	ldx	(_malloc_h_65536_40 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	lda	_malloc_f_65536_40
	sta	*(__DPTR+0)
	lda	(_malloc_f_65536_40 + 1)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	ldy	#0x00
	sta	[__DPTR],y
	txa
	iny
	sta	[__DPTR],y
00110$:
;	../malloc.c: 108: return(&(h->next_free));
	lda	_malloc_h_65536_40
	ldx	(_malloc_h_65536_40 + 1)
	clc
	adc	#0x02
	bcc	00117$
	inx
	rts
00116$:
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	lda	_malloc_h_65536_40
	ldx	(_malloc_h_65536_40 + 1)
	clc
	adc	#0x02
	bcc	00164$
	inx
00164$:
	sta	_malloc_f_65536_40
	stx	(_malloc_f_65536_40 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	_malloc_h_65536_40
	iny
	lda	[__DPTR],y
	sta	(_malloc_h_65536_40 + 1)
	jmp	00115$
00113$:
;	../malloc.c: 112: return(0);
	lda	#0x00
	tax
00117$:
;	../malloc.c: 113: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
