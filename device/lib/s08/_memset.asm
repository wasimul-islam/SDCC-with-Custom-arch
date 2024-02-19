;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _memset
	.optsdcc -ms08
	
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
	.globl _memset_PARM_3
	.globl _memset_PARM_2
	.globl _memset
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memset_sz_65536_62:
	.ds 2
_memset_sloc0_1_0:
	.ds 2
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
_memset_PARM_2:
	.ds 2
_memset_PARM_3:
	.ds 2
_memset_s_65536_61:
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
;Allocation info for local variables in function 'memset'
;------------------------------------------------------------
;c                         Allocated with name '_memset_PARM_2'
;n                         Allocated with name '_memset_PARM_3'
;s                         Allocated with name '_memset_s_65536_61'
;dst                       Allocated to registers 
;sz                        Allocated with name '_memset_sz_65536_62'
;data                      Allocated to registers a 
;sloc0                     Allocated with name '_memset_sloc0_1_0'
;------------------------------------------------------------
;../_memset.c:44: void *memset (void *s, int c, size_t n)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memset:
	sta	(_memset_s_65536_61 + 1)
	stx	_memset_s_65536_61
;../_memset.c:189: register size_t sz = n;
	ldhx	_memset_PARM_3
	sthx	*_memset_sz_65536_62
;../_memset.c:190: if (sz != 0)
	lda	_memset_PARM_3
	ora	(_memset_PARM_3 + 1)
	beq	00105$
;../_memset.c:192: register char *dst = s;
	ldhx	_memset_s_65536_61
;../_memset.c:193: register char data = (char)c;
	lda	(_memset_PARM_2 + 1)
;../_memset.c:194: do {
	mov	*_memset_sz_65536_62,*_memset_sloc0_1_0
	mov	*(_memset_sz_65536_62 + 1),*(_memset_sloc0_1_0 + 1)
00101$:
;../_memset.c:195: *dst++ = data;
	sta	,x
	aix	#1
;../_memset.c:196: } while (--sz);
	pshx
	pshh
	ldhx	*_memset_sloc0_1_0
	aix	#-1
	sthx	*_memset_sloc0_1_0
	pulh
	pulx
	tst	*(_memset_sloc0_1_0 + 1)
	bne	00120$
	tst	*_memset_sloc0_1_0
00120$:
	bne	00101$
00105$:
;../_memset.c:198: return s;
	ldx	_memset_s_65536_61
	lda	(_memset_s_65536_61 + 1)
;../_memset.c:199: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
