;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module malloc
	.optsdcc -mhc08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_init
	.globl ___sdcc_heap_free
	.globl _malloc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_malloc_sloc0_1_0:
	.ds 2
_malloc_sloc1_1_0:
	.ds 2
_malloc_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
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
;../malloc.c:65: void __sdcc_heap_init(void)
;	-----------------------------------------
;	 function __sdcc_heap_init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___sdcc_heap_init:
;../malloc.c:67: __sdcc_heap_free = HEAP_START;
	lda	#>___sdcc_heap
	sta	___sdcc_heap_free
	lda	#___sdcc_heap
	sta	(___sdcc_heap_free + 1)
;../malloc.c:68: __sdcc_heap_free->next = HEAP_END;
	lda	___sdcc_heap_size
	psha
	pulh
	ldx	(___sdcc_heap_size + 1)
	aix	#-1
	txa
	add	#___sdcc_heap
	psha
	pshh
	pula
	adc	#>___sdcc_heap
	tax
	pula
	stx	___sdcc_heap
	sta	(___sdcc_heap + 1)
;../malloc.c:69: __sdcc_heap_free->next_free = 0;
	lda	___sdcc_heap_free
	ldx	(___sdcc_heap_free + 1)
	psha
	pulh
	clra
	sta	2,x
	sta	3,x
;../malloc.c:70: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_malloc_sloc0_1_0'
;sloc1                     Allocated with name '_malloc_sloc1_1_0'
;sloc2                     Allocated with name '_malloc_sloc2_1_0'
;size                      Allocated with name '_malloc_size_65536_39'
;h                         Allocated with name '_malloc_h_65536_40'
;f                         Allocated with name '_malloc_f_65536_40'
;blocksize                 Allocated with name '_malloc_blocksize_196608_42'
;newheader                 Allocated with name '_malloc_newheader_327680_44'
;------------------------------------------------------------
;../malloc.c:75: void *malloc(size_t size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_malloc:
	sta	*(_malloc_sloc0_1_0 + 1)
	stx	*_malloc_sloc0_1_0
;../malloc.c:82: if(!__sdcc_heap_free)
	lda	___sdcc_heap_free
	ora	(___sdcc_heap_free + 1)
	bne	00102$
;../malloc.c:83: __sdcc_heap_init();
	jsr	___sdcc_heap_init
00102$:
;../malloc.c:86: if(!size || size + offsetof(struct header, next_free) < size)
	lda	*(_malloc_sloc0_1_0 + 1)
	ora	*_malloc_sloc0_1_0
	beq	00103$
	ldhx	*_malloc_sloc0_1_0
	aix	#2
	cphx	*_malloc_sloc0_1_0
	bcc	00104$
00103$:
;../malloc.c:87: return(0);
	clra
	tax
	rts
00104$:
;../malloc.c:88: size += offsetof(struct header, next_free);
	pshh
	pula
	sta	_malloc_size_65536_39
	stx	(_malloc_size_65536_39 + 1)
;../malloc.c:89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	lda	(_malloc_size_65536_39 + 1)
	sub	#0x04
	lda	_malloc_size_65536_39
	sbc	#0x00
	bcc	00107$
;../malloc.c:90: size = sizeof(struct header);
	clra
	sta	_malloc_size_65536_39
	lda	#0x04
	sta	(_malloc_size_65536_39 + 1)
00107$:
;../malloc.c:92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	lda	___sdcc_heap_free
	sta	_malloc_h_65536_40
	lda	(___sdcc_heap_free + 1)
	sta	(_malloc_h_65536_40 + 1)
	lda	#___sdcc_heap_free
	sta	(_malloc_f_65536_40 + 1)
	lda	#>___sdcc_heap_free
	sta	_malloc_f_65536_40
00115$:
	lda	_malloc_h_65536_40
	ora	(_malloc_h_65536_40 + 1)
	bne	00158$
	jmp	00113$
00158$:
;../malloc.c:94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	lda	_malloc_h_65536_40
	psha
	pulh
	ldx	(_malloc_h_65536_40 + 1)
	lda	,x
	sta	*_malloc_sloc0_1_0
	lda	1,x
	sta	*(_malloc_sloc0_1_0 + 1)
	lda	*(_malloc_sloc0_1_0 + 1)
	ldx	*_malloc_sloc0_1_0
	psha
	lda	(_malloc_h_65536_40 + 1)
	sta	*(_malloc_sloc1_1_0 + 1)
	lda	_malloc_h_65536_40
	sta	*_malloc_sloc1_1_0
	pula
	sub	*(_malloc_sloc1_1_0 + 1)
	sta	(_malloc_blocksize_196608_42 + 1)
	txa
	sbc	*_malloc_sloc1_1_0
	sta	_malloc_blocksize_196608_42
;../malloc.c:101: newheader->next_free = h->next_free;
	ldhx	#_malloc_h_65536_40
	lda	1,x
	add	#0x02
	sta	*(_malloc_sloc2_1_0 + 1)
	lda	,x
	adc	#0
	sta	*_malloc_sloc2_1_0
;../malloc.c:95: if(blocksize >= size) // Found free block of sufficient size.
	lda	(_malloc_blocksize_196608_42 + 1)
	sub	(_malloc_size_65536_39 + 1)
	lda	_malloc_blocksize_196608_42
	sbc	_malloc_size_65536_39
	bcc	00159$
	jmp	00116$
00159$:
;../malloc.c:97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
	lda	_malloc_size_65536_39
	psha
	pulh
	ldx	(_malloc_size_65536_39 + 1)
	aix	#4
	lda	(_malloc_blocksize_196608_42 + 1)
	pshx
	sub	1,s
	ais	#1
	lda	_malloc_blocksize_196608_42
	pshh
	sbc	1,s
	ais	#1
	bcs	00109$
;../malloc.c:99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
	lda	*(_malloc_sloc1_1_0 + 1)
	add	(_malloc_size_65536_39 + 1)
	psha
	lda	*_malloc_sloc1_1_0
	adc	_malloc_size_65536_39
	tax
	pula
	sta	(_malloc_newheader_327680_44 + 1)
	stx	_malloc_newheader_327680_44
;../malloc.c:100: newheader->next = h->next;
	lda	_malloc_newheader_327680_44
	psha
	pulh
	ldx	(_malloc_newheader_327680_44 + 1)
	lda	*_malloc_sloc0_1_0
	sta	,x
	lda	*(_malloc_sloc0_1_0 + 1)
	sta	1,x
;../malloc.c:101: newheader->next_free = h->next_free;
	lda	_malloc_newheader_327680_44
	sta	*_malloc_sloc1_1_0
	lda	(_malloc_newheader_327680_44 + 1)
	sta	*(_malloc_sloc1_1_0 + 1)
	ldhx	*_malloc_sloc2_1_0
	lda	1,x
	ldx	,x
	pshx
	ldhx	*_malloc_sloc1_1_0
	sta	3,x
	pula
	sta	2,x
;../malloc.c:102: *f = newheader;
	lda	_malloc_f_65536_40
	psha
	pulh
	ldx	(_malloc_f_65536_40 + 1)
	lda	_malloc_newheader_327680_44
	sta	,x
	lda	(_malloc_newheader_327680_44 + 1)
	sta	1,x
;../malloc.c:103: h->next = newheader;
	lda	_malloc_h_65536_40
	psha
	pulh
	ldx	(_malloc_h_65536_40 + 1)
	lda	_malloc_newheader_327680_44
	sta	,x
	lda	(_malloc_newheader_327680_44 + 1)
	sta	1,x
	bra	00110$
00109$:
;../malloc.c:106: *f = h->next_free;
	ldhx	*_malloc_sloc2_1_0
	lda	1,x
	ldx	,x
	pshx
	ldx	_malloc_f_65536_40
	pshx
	pulh
	ldx	(_malloc_f_65536_40 + 1)
	sta	1,x
	pula
	sta	,x
00110$:
;../malloc.c:108: return(&(h->next_free));
	lda	*(_malloc_sloc2_1_0 + 1)
	ldx	*_malloc_sloc2_1_0
	rts
00116$:
;../malloc.c:92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	lda	*_malloc_sloc2_1_0
	sta	_malloc_f_65536_40
	lda	*(_malloc_sloc2_1_0 + 1)
	sta	(_malloc_f_65536_40 + 1)
	ldhx	*_malloc_sloc2_1_0
	lda	,x
	sta	_malloc_h_65536_40
	lda	1,x
	sta	(_malloc_h_65536_40 + 1)
	jmp	00115$
00113$:
;../malloc.c:112: return(0);
	clra
	tax
;../malloc.c:113: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
