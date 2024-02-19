;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module __memcpy
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
	.globl ___memcpy_PARM_3
	.globl ___memcpy_PARM_2
	.globl ___memcpy
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___memcpy_sloc0_1_0:
	.ds 2
___memcpy_sloc1_1_0:
	.ds 2
___memcpy_sloc2_1_0:
	.ds 2
___memcpy_sloc3_1_0:
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
___memcpy_PARM_2:
	.ds 2
___memcpy_PARM_3:
	.ds 2
___memcpy_ret_65536_27:
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
;Allocation info for local variables in function '__memcpy'
;------------------------------------------------------------
;src                       Allocated with name '___memcpy_PARM_2'
;n                         Allocated with name '___memcpy_PARM_3'
;dst                       Allocated to registers a x 
;ret                       Allocated with name '___memcpy_ret_65536_27'
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated with name '___memcpy_sloc0_1_0'
;sloc1                     Allocated with name '___memcpy_sloc1_1_0'
;sloc2                     Allocated with name '___memcpy_sloc2_1_0'
;sloc3                     Allocated with name '___memcpy_sloc3_1_0'
;------------------------------------------------------------
;../__memcpy.c:31: void *__memcpy (void *dst, const void *src, size_t n)
;	-----------------------------------------
;	 function __memcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___memcpy:
;../__memcpy.c:33: void *ret = dst;
	stx	___memcpy_ret_65536_27
	sta	(___memcpy_ret_65536_27 + 1)
;../__memcpy.c:34: char *d = dst;
	sta	*(___memcpy_sloc0_1_0 + 1)
	stx	*___memcpy_sloc0_1_0
;../__memcpy.c:35: const char *s = src;
	ldhx	___memcpy_PARM_2
	sthx	*___memcpy_sloc1_1_0
;../__memcpy.c:37: while (n--)
	ldhx	___memcpy_PARM_3
	sthx	*___memcpy_sloc2_1_0
00101$:
	ldhx	*___memcpy_sloc2_1_0
	pshx
	pshh
	ldhx	*___memcpy_sloc2_1_0
	aix	#-1
	sthx	*___memcpy_sloc2_1_0
	pulh
	pulx
	cphx	#0x00
	beq	00103$
;../__memcpy.c:38: *d++ = *s++;
	ldhx	*___memcpy_sloc1_1_0
	lda	,x
	sta	*___memcpy_sloc3_1_0
	aix	#1
	sthx	*___memcpy_sloc1_1_0
	ldhx	*___memcpy_sloc0_1_0
	lda	*___memcpy_sloc3_1_0
	sta	,x
	aix	#1
	sthx	*___memcpy_sloc0_1_0
	bra	00101$
00103$:
;../__memcpy.c:40: return(ret);
	ldx	___memcpy_ret_65536_27
	lda	(___memcpy_ret_65536_27 + 1)
;../__memcpy.c:41: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
