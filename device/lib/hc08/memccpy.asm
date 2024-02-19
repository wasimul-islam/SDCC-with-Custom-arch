;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module memccpy
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
	.globl _memccpy_PARM_4
	.globl _memccpy_PARM_3
	.globl _memccpy_PARM_2
	.globl _memccpy
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
_memccpy_PARM_2:
	.ds 2
_memccpy_PARM_3:
	.ds 2
_memccpy_PARM_4:
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
;Allocation info for local variables in function 'memccpy'
;------------------------------------------------------------
;src                       Allocated with name '_memccpy_PARM_2'
;c                         Allocated with name '_memccpy_PARM_3'
;n                         Allocated with name '_memccpy_PARM_4'
;dst                       Allocated to registers a x 
;d                         Allocated to registers x h 
;s                         Allocated to registers 
;sloc0                     Allocated with name '_memccpy_sloc0_1_0'
;sloc1                     Allocated with name '_memccpy_sloc1_1_0'
;sloc2                     Allocated with name '_memccpy_sloc2_1_0'
;sloc3                     Allocated with name '_memccpy_sloc3_1_0'
;------------------------------------------------------------
;../memccpy.c:31: void *memccpy (void *restrict dst, const void *restrict src, int c, size_t n)
;	-----------------------------------------
;	 function memccpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memccpy:
;../memccpy.c:33: char *d = dst;
	sta	*(_memccpy_sloc0_1_0 + 1)
	stx	*_memccpy_sloc0_1_0
;../memccpy.c:34: const char *s = src;
	lda	(_memccpy_PARM_2 + 1)
	sta	*(_memccpy_sloc1_1_0 + 1)
	lda	_memccpy_PARM_2
	sta	*_memccpy_sloc1_1_0
;../memccpy.c:36: while (n--)
	lda	_memccpy_PARM_4
	sta	*_memccpy_sloc2_1_0
	lda	(_memccpy_PARM_4 + 1)
	sta	*(_memccpy_sloc2_1_0 + 1)
00103$:
	ldhx	*_memccpy_sloc2_1_0
	pshx
	pshh
	ldhx	*_memccpy_sloc2_1_0
	aix	#-1
	sthx	*_memccpy_sloc2_1_0
	pulh
	pulx
	cphx	#0x00
	beq	00105$
;../memccpy.c:37: if ((*d++ = *s++) == (unsigned char)c)
	ldhx	*_memccpy_sloc1_1_0
	lda	,x
	sta	*_memccpy_sloc3_1_0
	aix	#1
	sthx	*_memccpy_sloc1_1_0
	ldhx	*_memccpy_sloc0_1_0
	lda	*_memccpy_sloc3_1_0
	sta	,x
	aix	#1
	sthx	*_memccpy_sloc0_1_0
	ldhx	*_memccpy_sloc0_1_0
	lda	(_memccpy_PARM_3 + 1)
	cmp	*_memccpy_sloc3_1_0
	bne	00103$
;../memccpy.c:38: return (d);
	txa
	pshh
	pulx
	rts
00105$:
;../memccpy.c:40: return (0);
	clra
	tax
;../memccpy.c:41: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
