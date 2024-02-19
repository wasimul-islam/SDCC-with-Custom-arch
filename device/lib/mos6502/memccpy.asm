;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module memccpy
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memccpy_PARM_4
	.globl _memccpy_PARM_3
	.globl _memccpy_PARM_2
	.globl _memccpy
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memccpy_sloc0_1_0:
	.ds 2
_memccpy_sloc1_1_0:
	.ds 2
_memccpy_sloc2_1_0:
	.ds 2
_memccpy_sloc3_1_0:
	.ds 1
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_memccpy_PARM_2:
	.ds 2
_memccpy_PARM_3:
	.ds 2
_memccpy_PARM_4:
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
;Allocation info for local variables in function 'memccpy'
;------------------------------------------------------------
;src                       Allocated with name '_memccpy_PARM_2'
;c                         Allocated with name '_memccpy_PARM_3'
;n                         Allocated with name '_memccpy_PARM_4'
;dst                       Allocated to registers a x 
;d                         Allocated to registers a x 
;s                         Allocated to registers 
;sloc0                     Allocated with name '_memccpy_sloc0_1_0'
;sloc1                     Allocated with name '_memccpy_sloc1_1_0'
;sloc2                     Allocated with name '_memccpy_sloc2_1_0'
;sloc3                     Allocated with name '_memccpy_sloc3_1_0'
;------------------------------------------------------------
;	../memccpy.c: 31: void *memccpy (void *restrict dst, const void *restrict src, int c, size_t n)
;	-----------------------------------------
;	 function memccpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memccpy:
;	../memccpy.c: 33: char *d = dst;
	sta	*_memccpy_sloc0_1_0
	stx	*(_memccpy_sloc0_1_0 + 1)
;	../memccpy.c: 34: const char *s = src;
	lda	_memccpy_PARM_2
	sta	*_memccpy_sloc1_1_0
	lda	(_memccpy_PARM_2 + 1)
	sta	*(_memccpy_sloc1_1_0 + 1)
;	../memccpy.c: 36: while (n--)
	lda	_memccpy_PARM_4
	sta	*_memccpy_sloc2_1_0
	lda	(_memccpy_PARM_4 + 1)
	sta	*(_memccpy_sloc2_1_0 + 1)
00103$:
	lda	*_memccpy_sloc2_1_0
	ldx	*(_memccpy_sloc2_1_0 + 1)
	pha
	sec
	lda	*_memccpy_sloc2_1_0
	sbc	#0x01
	sta	*_memccpy_sloc2_1_0
	bcs	00123$
	dec	*(_memccpy_sloc2_1_0 + 1)
00123$:
	pla
	bne	00124$
	cpx	#0x00
00124$:
	beq	00105$
;	../memccpy.c: 37: if ((*d++ = *s++) == (unsigned char)c)
	ldy	#0x00
	lda	[*_memccpy_sloc1_1_0],y
	sta	*_memccpy_sloc3_1_0
	inc	*_memccpy_sloc1_1_0
	bne	00126$
	inc	*(_memccpy_sloc1_1_0 + 1)
00126$:
	lda	*_memccpy_sloc3_1_0
	sta	[*_memccpy_sloc0_1_0],y
	inc	*_memccpy_sloc0_1_0
	bne	00127$
	inc	*(_memccpy_sloc0_1_0 + 1)
00127$:
	lda	*_memccpy_sloc0_1_0
	ldx	*(_memccpy_sloc0_1_0 + 1)
	ldy	_memccpy_PARM_3
	cpy	*_memccpy_sloc3_1_0
	bne	00103$
;	../memccpy.c: 38: return (d);
	rts
00105$:
;	../memccpy.c: 40: return (0);
	lda	#0x00
	tax
;	../memccpy.c: 41: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
