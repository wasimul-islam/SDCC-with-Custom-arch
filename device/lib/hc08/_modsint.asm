;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modsint
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
	.globl __modsint_PARM_2
	.globl __modsint
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__modsint_sloc0_1_0:
	.ds 1
__modsint_sloc1_1_0:
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
__modsint_PARM_2:
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
;Allocation info for local variables in function '_modsint'
;------------------------------------------------------------
;r                         Allocated to registers a x 
;sloc0                     Allocated with name '__modsint_sloc0_1_0'
;sloc1                     Allocated with name '__modsint_sloc1_1_0'
;b                         Allocated with name '__modsint_PARM_2'
;a                         Allocated to registers a x 
;------------------------------------------------------------
;../_modsint.c:209: int _modsint (int a, int b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modsint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modsint:
;../_modsint.c:213: r = (unsigned)(a < 0 ? -a : a) % (unsigned)(b < 0 ? -b : b);
	psha
	txa
	sub	#0x00
	blt	00125$
	clra
	bra	00126$
00125$:
	lda	#0x01
00126$:
	sta	*__modsint_sloc0_1_0
	pula
	tst	*__modsint_sloc0_1_0
	beq	00106$
	nega
	psha
	clra
	pshx
	sbc	1,s
	ais	#1
	tax
	pula
00106$:
	sta	*(__modsint_sloc1_1_0 + 1)
	stx	*__modsint_sloc1_1_0
	lda	__modsint_PARM_2
	sub	#0x00
	bge	00108$
	clra
	sub	(__modsint_PARM_2 + 1)
	psha
	clra
	sbc	__modsint_PARM_2
	tax
	pula
	bra	00109$
00108$:
	ldx	__modsint_PARM_2
	lda	(__modsint_PARM_2 + 1)
00109$:
	sta	(__moduint_PARM_2 + 1)
	stx	__moduint_PARM_2
	lda	*(__modsint_sloc1_1_0 + 1)
	ldx	*__modsint_sloc1_1_0
	jsr	__moduint
;../_modsint.c:215: if (a < 0)
	tst	*__modsint_sloc0_1_0
	beq	00102$
;../_modsint.c:216: return -r;
	nega
	psha
	clra
	pshx
	sbc	1,s
	ais	#1
	tax
	pula
	rts
00102$:
;../_modsint.c:218: return r;
;../_modsint.c:219: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
