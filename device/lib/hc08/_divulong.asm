;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulong
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
	.globl __divulong_PARM_2
	.globl __divulong_PARM_1
	.globl __divulong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
__divulong_PARM_1:
	.ds 4
__divulong_PARM_2:
	.ds 4
__divulong_reste_65536_2:
	.ds 4
__divulong_c_65536_2:
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
;Allocation info for local variables in function '_divulong'
;------------------------------------------------------------
;x                         Allocated with name '__divulong_PARM_1'
;y                         Allocated with name '__divulong_PARM_2'
;reste                     Allocated with name '__divulong_reste_65536_2'
;count                     Allocated to registers 
;c                         Allocated with name '__divulong_c_65536_2'
;------------------------------------------------------------
;../_divulong.c:337: _divulong (unsigned long x, unsigned long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divulong:
;../_divulong.c:339: unsigned long reste = 0L;
	ldhx	#__divulong_reste_65536_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
;../_divulong.c:343: do
	ldx	#0x20
00105$:
;../_divulong.c:346: c = MSB_SET(x);
	lda	__divulong_PARM_1
	rola
	clra
	rola
	sta	__divulong_c_65536_2
;../_divulong.c:347: x <<= 1;
	pshx
	lda	(__divulong_PARM_1 + 3)
	ldx	(__divulong_PARM_1 + 2)
	lsla
	rolx
	sta	(__divulong_PARM_1 + 3)
	stx	(__divulong_PARM_1 + 2)
	lda	(__divulong_PARM_1 + 1)
	ldx	__divulong_PARM_1
	rola
	rolx
	sta	(__divulong_PARM_1 + 1)
	stx	__divulong_PARM_1
	pulx
;../_divulong.c:348: reste <<= 1;
	pshx
	lda	(__divulong_reste_65536_2 + 3)
	ldx	(__divulong_reste_65536_2 + 2)
	lsla
	rolx
	sta	(__divulong_reste_65536_2 + 3)
	stx	(__divulong_reste_65536_2 + 2)
	lda	(__divulong_reste_65536_2 + 1)
	ldx	__divulong_reste_65536_2
	rola
	rolx
	sta	(__divulong_reste_65536_2 + 1)
	stx	__divulong_reste_65536_2
	pulx
;../_divulong.c:349: if (c)
	lda	__divulong_c_65536_2
	beq	00102$
;../_divulong.c:350: reste |= 1L;
	lda	(__divulong_reste_65536_2 + 3)
	ora	#0x01
	sta	(__divulong_reste_65536_2 + 3)
00102$:
;../_divulong.c:352: if (reste >= y)
	lda	(__divulong_reste_65536_2 + 3)
	sub	(__divulong_PARM_2 + 3)
	lda	(__divulong_reste_65536_2 + 2)
	sbc	(__divulong_PARM_2 + 2)
	lda	(__divulong_reste_65536_2 + 1)
	sbc	(__divulong_PARM_2 + 1)
	lda	__divulong_reste_65536_2
	sbc	__divulong_PARM_2
	bcs	00106$
;../_divulong.c:354: reste -= y;
	lda	(__divulong_reste_65536_2 + 3)
	sub	(__divulong_PARM_2 + 3)
	sta	(__divulong_reste_65536_2 + 3)
	lda	(__divulong_reste_65536_2 + 2)
	sbc	(__divulong_PARM_2 + 2)
	sta	(__divulong_reste_65536_2 + 2)
	lda	(__divulong_reste_65536_2 + 1)
	sbc	(__divulong_PARM_2 + 1)
	sta	(__divulong_reste_65536_2 + 1)
	lda	__divulong_reste_65536_2
	sbc	__divulong_PARM_2
	sta	__divulong_reste_65536_2
;../_divulong.c:356: x |= 1L;
	lda	(__divulong_PARM_1 + 3)
	ora	#0x01
	sta	(__divulong_PARM_1 + 3)
00106$:
;../_divulong.c:359: while (--count);
	decx
	tstx
	beq	00133$
	jmp	00105$
00133$:
;../_divulong.c:360: return x;
	lda	__divulong_PARM_1
	sta	*___SDCC_hc08_ret3
	lda	(__divulong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(__divulong_PARM_1 + 2)
	lda	(__divulong_PARM_1 + 3)
;../_divulong.c:361: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
