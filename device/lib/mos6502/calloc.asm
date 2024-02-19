;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module calloc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _calloc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_calloc_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_calloc_PARM_2:
	.ds 2
_calloc_ptr_65536_62:
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_calloc_sloc0_1_0'
;size                      Allocated with name '_calloc_PARM_2'
;nmemb                     Allocated to registers a x 
;ptr                       Allocated with name '_calloc_ptr_65536_62'
;msize                     Allocated with name '_calloc_msize_65536_62'
;------------------------------------------------------------
;	../calloc.c: 44: void *calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_calloc:
;	../calloc.c: 49: unsigned long msize = (unsigned long)nmemb * (unsigned long)size;
	sta	__mullong_PARM_1
	stx	(__mullong_PARM_1 + 1)
	ldy	#0x00
	sty	(__mullong_PARM_1 + 2)
	sty	(__mullong_PARM_1 + 3)
	lda	_calloc_PARM_2
	sta	__mullong_PARM_2
	lda	(_calloc_PARM_2 + 1)
	sta	(__mullong_PARM_2 + 1)
	sty	(__mullong_PARM_2 + 2)
	sty	(__mullong_PARM_2 + 3)
;	../calloc.c: 54: if (msize > SIZE_MAX)
	jsr	__mullong
	sta	*_calloc_sloc0_1_0
	stx	*(_calloc_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_calloc_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_calloc_sloc0_1_0 + 3)
	lda	#0xff
	sec
	sbc	*_calloc_sloc0_1_0
	lda	#0xff
	sbc	*(_calloc_sloc0_1_0 + 1)
	lda	#0x00
	sbc	*(_calloc_sloc0_1_0 + 2)
	lda	#0x00
	sbc	*(_calloc_sloc0_1_0 + 3)
	bcs	00102$
;	../calloc.c: 55: return(0);
	lda	#0x00
	tax
	rts
00102$:
;	../calloc.c: 57: if (ptr = malloc(msize))
	ldx	*(_calloc_sloc0_1_0 + 1)
	lda	*_calloc_sloc0_1_0
	jsr	_malloc
	sta	_calloc_ptr_65536_62
	stx	(_calloc_ptr_65536_62 + 1)
	cmp	#0x00
	bne	00116$
	cpx	#0x00
00116$:
	beq	00104$
;	../calloc.c: 58: memset(ptr, 0, msize);
	ldx	#0x00
	stx	_memset_PARM_2
	lda	*_calloc_sloc0_1_0
	sta	_memset_PARM_3
	lda	*(_calloc_sloc0_1_0 + 1)
	sta	(_memset_PARM_3 + 1)
	ldx	(_calloc_ptr_65536_62 + 1)
	lda	_calloc_ptr_65536_62
	jsr	_memset
00104$:
;	../calloc.c: 60: return(ptr);
	ldx	(_calloc_ptr_65536_62 + 1)
	lda	_calloc_ptr_65536_62
;	../calloc.c: 61: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
