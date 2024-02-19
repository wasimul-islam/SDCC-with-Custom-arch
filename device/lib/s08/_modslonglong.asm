;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _modslonglong
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
	.globl __modslonglong_PARM_2
	.globl __modslonglong_PARM_1
	.globl __modslonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__modslonglong_sloc0_1_0:
	.ds 8
__modslonglong_sloc1_1_0:
	.ds 8
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
__modslonglong_PARM_1:
	.ds 8
__modslonglong_PARM_2:
	.ds 8
__modslonglong_numeratorneg_65536_2:
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
;Allocation info for local variables in function '_modslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modslonglong_sloc0_1_0'
;sloc1                     Allocated with name '__modslonglong_sloc1_1_0'
;numerator                 Allocated with name '__modslonglong_PARM_1'
;denominator               Allocated with name '__modslonglong_PARM_2'
;numeratorneg              Allocated with name '__modslonglong_numeratorneg_65536_2'
;denominatorneg            Allocated to registers x 
;r                         Allocated with name '__modslonglong_r_65536_2'
;------------------------------------------------------------
;../_modslonglong.c:40: _modslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modslonglong:
;../_modslonglong.c:42: bool numeratorneg = (numerator < 0);
	lda	__modslonglong_PARM_1
	sub	#0x00
	blt	00124$
	clra
	bra	00125$
00124$:
	lda	#0x01
00125$:
	sta	__modslonglong_numeratorneg_65536_2
;../_modslonglong.c:43: bool denominatorneg = (denominator < 0);
	lda	__modslonglong_PARM_2
	sub	#0x00
	blt	00126$
	clra
	bra	00127$
00126$:
	lda	#0x01
00127$:
	tax
;../_modslonglong.c:46: if (numeratorneg)
	lda	__modslonglong_numeratorneg_65536_2
	beq	00102$
;../_modslonglong.c:47: numerator = -numerator;
	clra
	sub	(__modslonglong_PARM_1 + 7)
	sta	(__modslonglong_PARM_1 + 7)
	clra
	sbc	(__modslonglong_PARM_1 + 6)
	sta	(__modslonglong_PARM_1 + 6)
	clra
	sbc	(__modslonglong_PARM_1 + 5)
	sta	(__modslonglong_PARM_1 + 5)
	clra
	sbc	(__modslonglong_PARM_1 + 4)
	sta	(__modslonglong_PARM_1 + 4)
	clra
	sbc	(__modslonglong_PARM_1 + 3)
	sta	(__modslonglong_PARM_1 + 3)
	clra
	sbc	(__modslonglong_PARM_1 + 2)
	sta	(__modslonglong_PARM_1 + 2)
	clra
	sbc	(__modslonglong_PARM_1 + 1)
	sta	(__modslonglong_PARM_1 + 1)
	clra
	sbc	__modslonglong_PARM_1
	sta	__modslonglong_PARM_1
00102$:
;../_modslonglong.c:48: if (denominatorneg)
	tstx
	beq	00104$
;../_modslonglong.c:49: denominator = -denominator;
	clra
	sub	(__modslonglong_PARM_2 + 7)
	sta	(__modslonglong_PARM_2 + 7)
	clra
	sbc	(__modslonglong_PARM_2 + 6)
	sta	(__modslonglong_PARM_2 + 6)
	clra
	sbc	(__modslonglong_PARM_2 + 5)
	sta	(__modslonglong_PARM_2 + 5)
	clra
	sbc	(__modslonglong_PARM_2 + 4)
	sta	(__modslonglong_PARM_2 + 4)
	clra
	sbc	(__modslonglong_PARM_2 + 3)
	sta	(__modslonglong_PARM_2 + 3)
	clra
	sbc	(__modslonglong_PARM_2 + 2)
	sta	(__modslonglong_PARM_2 + 2)
	clra
	sbc	(__modslonglong_PARM_2 + 1)
	sta	(__modslonglong_PARM_2 + 1)
	clra
	sbc	__modslonglong_PARM_2
	sta	__modslonglong_PARM_2
00104$:
;../_modslonglong.c:51: r = (unsigned long long)numerator % (unsigned long long)denominator;
	ldhx	(__modslonglong_PARM_1 + 6)
	sthx	(__modulonglong_PARM_1 + 6)
	ldhx	(__modslonglong_PARM_1 + 4)
	sthx	(__modulonglong_PARM_1 + 4)
	ldhx	(__modslonglong_PARM_1 + 2)
	sthx	(__modulonglong_PARM_1 + 2)
	ldhx	__modslonglong_PARM_1
	sthx	__modulonglong_PARM_1
	ldhx	(__modslonglong_PARM_2 + 6)
	sthx	(__modulonglong_PARM_2 + 6)
	ldhx	(__modslonglong_PARM_2 + 4)
	sthx	(__modulonglong_PARM_2 + 4)
	ldhx	(__modslonglong_PARM_2 + 2)
	sthx	(__modulonglong_PARM_2 + 2)
	ldhx	__modslonglong_PARM_2
	sthx	__modulonglong_PARM_2
;../_modslonglong.c:53: return (numeratorneg ? -r : r);
	jsr	__modulonglong
	sta	*(__modslonglong_sloc0_1_0 + 7)
	stx	*(__modslonglong_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(__modslonglong_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(__modslonglong_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(__modslonglong_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(__modslonglong_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(__modslonglong_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*__modslonglong_sloc0_1_0
	lda	__modslonglong_numeratorneg_65536_2
	beq	00107$
	clra
	sub	*(__modslonglong_sloc0_1_0 + 7)
	sta	*(__modslonglong_sloc1_1_0 + 7)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 6)
	sta	*(__modslonglong_sloc1_1_0 + 6)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 5)
	sta	*(__modslonglong_sloc1_1_0 + 5)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 4)
	sta	*(__modslonglong_sloc1_1_0 + 4)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 3)
	sta	*(__modslonglong_sloc1_1_0 + 3)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 2)
	sta	*(__modslonglong_sloc1_1_0 + 2)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 1)
	sta	*(__modslonglong_sloc1_1_0 + 1)
	clra
	sbc	*__modslonglong_sloc0_1_0
	sta	*__modslonglong_sloc1_1_0
	bra	00108$
00107$:
	mov	*__modslonglong_sloc0_1_0,*__modslonglong_sloc1_1_0
	mov	*(__modslonglong_sloc0_1_0 + 1),*(__modslonglong_sloc1_1_0 + 1)
	mov	*(__modslonglong_sloc0_1_0 + 2),*(__modslonglong_sloc1_1_0 + 2)
	mov	*(__modslonglong_sloc0_1_0 + 3),*(__modslonglong_sloc1_1_0 + 3)
	mov	*(__modslonglong_sloc0_1_0 + 4),*(__modslonglong_sloc1_1_0 + 4)
	mov	*(__modslonglong_sloc0_1_0 + 5),*(__modslonglong_sloc1_1_0 + 5)
	mov	*(__modslonglong_sloc0_1_0 + 6),*(__modslonglong_sloc1_1_0 + 6)
	mov	*(__modslonglong_sloc0_1_0 + 7),*(__modslonglong_sloc1_1_0 + 7)
00108$:
	mov	*__modslonglong_sloc1_1_0,*___SDCC_hc08_ret7
	mov	*(__modslonglong_sloc1_1_0 + 1),*___SDCC_hc08_ret6
	mov	*(__modslonglong_sloc1_1_0 + 2),*___SDCC_hc08_ret5
	mov	*(__modslonglong_sloc1_1_0 + 3),*___SDCC_hc08_ret4
	mov	*(__modslonglong_sloc1_1_0 + 4),*___SDCC_hc08_ret3
	mov	*(__modslonglong_sloc1_1_0 + 5),*___SDCC_hc08_ret2
	ldx	*(__modslonglong_sloc1_1_0 + 6)
	lda	*(__modslonglong_sloc1_1_0 + 7)
;../_modslonglong.c:54: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
