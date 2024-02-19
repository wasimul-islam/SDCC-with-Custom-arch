;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _fs2schar
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
	.globl ___fs2slong
	.globl ___fs2schar_PARM_1
	.globl ___fs2schar
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___fs2schar_sloc0_1_0:
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
___fs2schar_PARM_1:
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
;Allocation info for local variables in function '__fs2schar'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fs2schar_sloc0_1_0'
;f                         Allocated with name '___fs2schar_PARM_1'
;sl                        Allocated with name '___fs2schar_sl_65536_21'
;------------------------------------------------------------
;../_fs2schar.c:87: signed char __fs2schar (float f)
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2schar:
;../_fs2schar.c:89: signed long sl=__fs2slong(f);
	ldhx	___fs2schar_PARM_1
	sthx	___fs2slong_PARM_1
	ldhx	(___fs2schar_PARM_1 + 2)
	sthx	(___fs2slong_PARM_1 + 2)
	jsr	___fs2slong
	sta	*(___fs2schar_sloc0_1_0 + 3)
	stx	*(___fs2schar_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___fs2schar_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___fs2schar_sloc0_1_0
;../_fs2schar.c:90: if (sl>=SCHAR_MAX)
	lda	*(___fs2schar_sloc0_1_0 + 3)
	sub	#0x7f
	lda	*(___fs2schar_sloc0_1_0 + 2)
	sbc	#0x00
	lda	*(___fs2schar_sloc0_1_0 + 1)
	sbc	#0x00
	lda	*___fs2schar_sloc0_1_0
	sbc	#0x00
	blt	00102$
;../_fs2schar.c:91: return SCHAR_MAX;
	lda	#0x7f
	rts
00102$:
;../_fs2schar.c:92: if (sl<=SCHAR_MIN)
	lda	#0x80
	sub	*(___fs2schar_sloc0_1_0 + 3)
	lda	#0xff
	sbc	*(___fs2schar_sloc0_1_0 + 2)
	lda	#0xff
	sbc	*(___fs2schar_sloc0_1_0 + 1)
	lda	#0xff
	sbc	*___fs2schar_sloc0_1_0
	blt	00104$
;../_fs2schar.c:93: return -SCHAR_MIN;
	lda	#0x80
	rts
00104$:
;../_fs2schar.c:94: return sl;
	lda	*(___fs2schar_sloc0_1_0 + 3)
;../_fs2schar.c:95: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
