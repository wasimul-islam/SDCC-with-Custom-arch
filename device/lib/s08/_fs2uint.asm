;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _fs2uint
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
	.globl ___fs2ulong
	.globl ___fs2uint_PARM_1
	.globl ___fs2uint
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___fs2uint_sloc0_1_0:
	.ds 4
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
___fs2uint_PARM_1:
	.ds 4
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
;Allocation info for local variables in function '__fs2uint'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fs2uint_sloc0_1_0'
;f                         Allocated with name '___fs2uint_PARM_1'
;ul                        Allocated with name '___fs2uint_ul_65536_22'
;------------------------------------------------------------
;../_fs2uint.c:54: unsigned int __fs2uint (float f)
;	-----------------------------------------
;	 function __fs2uint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2uint:
;../_fs2uint.c:56: unsigned long ul=__fs2ulong(f);
	ldhx	___fs2uint_PARM_1
	sthx	___fs2ulong_PARM_1
	ldhx	(___fs2uint_PARM_1 + 2)
	sthx	(___fs2ulong_PARM_1 + 2)
	jsr	___fs2ulong
	sta	*(___fs2uint_sloc0_1_0 + 3)
	stx	*(___fs2uint_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fs2uint_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fs2uint_sloc0_1_0
;../_fs2uint.c:57: if (ul>=UINT_MAX) return UINT_MAX;
	lda	*(___fs2uint_sloc0_1_0 + 3)
	sub	#0xff
	lda	*(___fs2uint_sloc0_1_0 + 2)
	sbc	#0xff
	lda	*(___fs2uint_sloc0_1_0 + 1)
	sbc	#0x00
	lda	*___fs2uint_sloc0_1_0
	sbc	#0x00
	bcs	00102$
	lda	#0xff
	tax
	rts
00102$:
;../_fs2uint.c:58: return ul;
	lda	*(___fs2uint_sloc0_1_0 + 3)
	ldx	*(___fs2uint_sloc0_1_0 + 2)
;../_fs2uint.c:59: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
