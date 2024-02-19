;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _divuint
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
	.globl __divuint_PARM_2
	.globl __divuint
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__divuint_sloc0_1_0:
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
__divuint_PARM_2:
	.ds 2
__divuint_x_65536_1:
	.ds 2
__divuint_c_65536_2:
	.ds 1
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
;Allocation info for local variables in function '_divuint'
;------------------------------------------------------------
;y                         Allocated with name '__divuint_PARM_2'
;x                         Allocated with name '__divuint_x_65536_1'
;reste                     Allocated to registers x h 
;count                     Allocated to registers 
;c                         Allocated with name '__divuint_c_65536_2'
;sloc0                     Allocated with name '__divuint_sloc0_1_0'
;------------------------------------------------------------
;../_divuint.c:161: _divuint (unsigned int x, unsigned int y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divuint:
	sta	(__divuint_x_65536_1 + 1)
	stx	__divuint_x_65536_1
;../_divuint.c:163: unsigned int reste = 0;
	clrh
	clrx
;../_divuint.c:167: do
	mov	#0x10,*__divuint_sloc0_1_0
00105$:
;../_divuint.c:170: c = MSB_SET(x);
	lda	__divuint_x_65536_1
	rola
	clra
	rola
	sta	__divuint_c_65536_2
;../_divuint.c:171: x <<= 1;
	pshx
	lda	(__divuint_x_65536_1 + 1)
	ldx	__divuint_x_65536_1
	lsla
	rolx
	sta	(__divuint_x_65536_1 + 1)
	stx	__divuint_x_65536_1
	pulx
;../_divuint.c:172: reste <<= 1;
	txa
	pshh
	pulx
	lsla
	rolx
	pshx
	pulh
	tax
;../_divuint.c:173: if (c)
	lda	__divuint_c_65536_2
	beq	00102$
;../_divuint.c:174: reste |= 1;
	txa
	ora	#0x01
	tax
00102$:
;../_divuint.c:176: if (reste >= y)
	cphx	__divuint_PARM_2
	bcs	00106$
;../_divuint.c:178: reste -= y;
	txa
	sub	(__divuint_PARM_2 + 1)
	tax
	pshh
	pula
	sbc	__divuint_PARM_2
	psha
	pulh
;../_divuint.c:180: x |= 1;
	lda	(__divuint_x_65536_1 + 1)
	ora	#0x01
	sta	(__divuint_x_65536_1 + 1)
00106$:
;../_divuint.c:183: while (--count);
	dec	*__divuint_sloc0_1_0
	tst	*__divuint_sloc0_1_0
	bne	00105$
;../_divuint.c:184: return x;
	ldx	__divuint_x_65536_1
	lda	(__divuint_x_65536_1 + 1)
;../_divuint.c:185: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
