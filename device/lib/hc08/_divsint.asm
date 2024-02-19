;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divsint
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
	.globl __divsint_PARM_2
	.globl __divsint
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__divsint_sloc0_1_0:
	.ds 1
__divsint_sloc1_1_0:
	.ds 2
__divsint_sloc2_1_0:
	.ds 1
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
__divsint_PARM_2:
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
;Allocation info for local variables in function '_divsint'
;------------------------------------------------------------
;r                         Allocated to registers a x 
;sloc0                     Allocated with name '__divsint_sloc0_1_0'
;sloc1                     Allocated with name '__divsint_sloc1_1_0'
;sloc2                     Allocated with name '__divsint_sloc2_1_0'
;y                         Allocated with name '__divsint_PARM_2'
;x                         Allocated to registers a x 
;------------------------------------------------------------
;../_divsint.c:213: _divsint (int x, int y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divsint:
;../_divsint.c:217: r = (unsigned int)(x < 0 ? -x : x) / (unsigned int)(y < 0 ? -y : y);
	psha
	txa
	sub	#0x00
	blt	00125$
	clra
	bra	00126$
00125$:
	lda	#0x01
00126$:
	sta	*__divsint_sloc0_1_0
	pula
	tst	*__divsint_sloc0_1_0
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
	sta	*(__divsint_sloc1_1_0 + 1)
	stx	*__divsint_sloc1_1_0
	lda	__divsint_PARM_2
	sub	#0x00
	blt	00128$
	clra
	bra	00129$
00128$:
	lda	#0x01
00129$:
	sta	*__divsint_sloc2_1_0
	tst	*__divsint_sloc2_1_0
	beq	00108$
	clra
	sub	(__divsint_PARM_2 + 1)
	psha
	clra
	sbc	__divsint_PARM_2
	tax
	pula
	bra	00109$
00108$:
	ldx	__divsint_PARM_2
	lda	(__divsint_PARM_2 + 1)
00109$:
	sta	(__divuint_PARM_2 + 1)
	stx	__divuint_PARM_2
	lda	*(__divsint_sloc1_1_0 + 1)
	ldx	*__divsint_sloc1_1_0
	jsr	__divuint
;../_divsint.c:218: if ((x < 0) ^ (y < 0))
	psha
	lda	*__divsint_sloc0_1_0
	eor	*__divsint_sloc2_1_0
	pula
	beq	00102$
;../_divsint.c:219: return -r;
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
;../_divsint.c:221: return r;
;../_divsint.c:222: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
