;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divulonglong
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
	.globl __divulonglong_PARM_2
	.globl __divulonglong_PARM_1
	.globl __divulonglong
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
__divulonglong_PARM_1:
	.ds 8
__divulonglong_PARM_2:
	.ds 8
__divulonglong_reste_65536_2:
	.ds 8
__divulonglong_c_65536_2:
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
;Allocation info for local variables in function '_divulonglong'
;------------------------------------------------------------
;x                         Allocated with name '__divulonglong_PARM_1'
;y                         Allocated with name '__divulonglong_PARM_2'
;reste                     Allocated with name '__divulonglong_reste_65536_2'
;count                     Allocated to registers 
;c                         Allocated with name '__divulonglong_c_65536_2'
;------------------------------------------------------------
;../_divulonglong.c:43: _divulonglong (unsigned long long x, unsigned long long y) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divulonglong:
;../_divulonglong.c:45: unsigned long long reste = 0L;
	ldhx	#__divulonglong_reste_65536_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	sta	4,x
	sta	5,x
	sta	6,x
	sta	7,x
;../_divulonglong.c:49: do
	ldx	#0x40
00105$:
;../_divulonglong.c:52: c = MSB_SET(x);
	lda	__divulonglong_PARM_1
	rola
	clra
	rola
	sta	__divulonglong_c_65536_2
;../_divulonglong.c:53: x <<= 1;
	lda	__divulonglong_PARM_1
	sta	__rlulonglong_PARM_1
	lda	(__divulonglong_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(__divulonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(__divulonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(__divulonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(__divulonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(__divulonglong_PARM_1 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(__divulonglong_PARM_1 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	lda	#0x01
	sta	__rlulonglong_PARM_2
	pshx
	jsr	__rlulonglong
	sta	(__divulonglong_PARM_1 + 7)
	stx	(__divulonglong_PARM_1 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__divulonglong_PARM_1 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__divulonglong_PARM_1 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__divulonglong_PARM_1 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__divulonglong_PARM_1 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__divulonglong_PARM_1 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__divulonglong_PARM_1
	pulx
;../_divulonglong.c:54: reste <<= 1;
	lda	__divulonglong_reste_65536_2
	sta	__rlulonglong_PARM_1
	lda	(__divulonglong_reste_65536_2 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(__divulonglong_reste_65536_2 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(__divulonglong_reste_65536_2 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(__divulonglong_reste_65536_2 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(__divulonglong_reste_65536_2 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(__divulonglong_reste_65536_2 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(__divulonglong_reste_65536_2 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	lda	#0x01
	sta	__rlulonglong_PARM_2
	pshx
	jsr	__rlulonglong
	sta	(__divulonglong_reste_65536_2 + 7)
	stx	(__divulonglong_reste_65536_2 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__divulonglong_reste_65536_2 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__divulonglong_reste_65536_2 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__divulonglong_reste_65536_2 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__divulonglong_reste_65536_2 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__divulonglong_reste_65536_2 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__divulonglong_reste_65536_2
	pulx
;../_divulonglong.c:55: if (c)
	lda	__divulonglong_c_65536_2
	beq	00102$
;../_divulonglong.c:56: reste |= 1L;
	lda	(__divulonglong_reste_65536_2 + 7)
	ora	#0x01
	sta	(__divulonglong_reste_65536_2 + 7)
00102$:
;../_divulonglong.c:58: if (reste >= y)
	lda	(__divulonglong_reste_65536_2 + 7)
	sub	(__divulonglong_PARM_2 + 7)
	lda	(__divulonglong_reste_65536_2 + 6)
	sbc	(__divulonglong_PARM_2 + 6)
	lda	(__divulonglong_reste_65536_2 + 5)
	sbc	(__divulonglong_PARM_2 + 5)
	lda	(__divulonglong_reste_65536_2 + 4)
	sbc	(__divulonglong_PARM_2 + 4)
	lda	(__divulonglong_reste_65536_2 + 3)
	sbc	(__divulonglong_PARM_2 + 3)
	lda	(__divulonglong_reste_65536_2 + 2)
	sbc	(__divulonglong_PARM_2 + 2)
	lda	(__divulonglong_reste_65536_2 + 1)
	sbc	(__divulonglong_PARM_2 + 1)
	lda	__divulonglong_reste_65536_2
	sbc	__divulonglong_PARM_2
	bcs	00106$
;../_divulonglong.c:60: reste -= y;
	lda	(__divulonglong_reste_65536_2 + 7)
	sub	(__divulonglong_PARM_2 + 7)
	sta	(__divulonglong_reste_65536_2 + 7)
	lda	(__divulonglong_reste_65536_2 + 6)
	sbc	(__divulonglong_PARM_2 + 6)
	sta	(__divulonglong_reste_65536_2 + 6)
	lda	(__divulonglong_reste_65536_2 + 5)
	sbc	(__divulonglong_PARM_2 + 5)
	sta	(__divulonglong_reste_65536_2 + 5)
	lda	(__divulonglong_reste_65536_2 + 4)
	sbc	(__divulonglong_PARM_2 + 4)
	sta	(__divulonglong_reste_65536_2 + 4)
	lda	(__divulonglong_reste_65536_2 + 3)
	sbc	(__divulonglong_PARM_2 + 3)
	sta	(__divulonglong_reste_65536_2 + 3)
	lda	(__divulonglong_reste_65536_2 + 2)
	sbc	(__divulonglong_PARM_2 + 2)
	sta	(__divulonglong_reste_65536_2 + 2)
	lda	(__divulonglong_reste_65536_2 + 1)
	sbc	(__divulonglong_PARM_2 + 1)
	sta	(__divulonglong_reste_65536_2 + 1)
	lda	__divulonglong_reste_65536_2
	sbc	__divulonglong_PARM_2
	sta	__divulonglong_reste_65536_2
;../_divulonglong.c:62: x |= 1L;
	lda	(__divulonglong_PARM_1 + 7)
	ora	#0x01
	sta	(__divulonglong_PARM_1 + 7)
00106$:
;../_divulonglong.c:65: while (--count);
	decx
	tstx
	beq	00133$
	jmp	00105$
00133$:
;../_divulonglong.c:66: return x;
	lda	__divulonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__divulonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__divulonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__divulonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__divulonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__divulonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__divulonglong_PARM_1 + 6)
	lda	(__divulonglong_PARM_1 + 7)
;../_divulonglong.c:67: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
